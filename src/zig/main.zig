const std = @import("std");

// CPU-bound task
fn fibonacci(n: u32) u64 {
    if (n <= 1) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
}

const FIB_N: u32 = 40;

// Shared state
var task_counter: std.atomic.Value(usize) = std.atomic.Value(usize).init(0);
var total_tasks: usize = 0;

fn worker() void {
    while (true) {
        const task_index = task_counter.fetchAdd(1, .monotonic);
        if (task_index >= total_tasks) {
            break;
        }
        // "Process" the task
        _ = fibonacci(FIB_N);
    }
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    defer _ = gpa.deinit();

    const args = try std.process.argsAlloc(allocator);
    defer std.process.argsFree(allocator, args);

    if (args.len != 3) {
        std.debug.print("Usage: {s} <num_threads> <num_tasks>\n", .{args[0]});
        return std.process.exit(1);
    }

    const num_threads = std.fmt.parseInt(usize, args[1], 10) catch |err| {
        std.debug.print("Invalid number of threads: {any}\n", .{err});
        return std.process.exit(1);
    };
    
    total_tasks = std.fmt.parseInt(usize, args[2], 10) catch |err| {
        std.debug.print("Invalid number of tasks: {any}\n", .{err});
        return std.process.exit(1);
    };

    if (num_threads == 0 or total_tasks == 0) {
        std.debug.print("Number of threads and tasks must be positive.\n", .{});
        return std.process.exit(1);
    }

    var threads = std.array_list.Managed(std.Thread).init(allocator);
    defer threads.deinit();

    try threads.ensureTotalCapacity(num_threads);

    var i: usize = 0;
    while (i < num_threads) : (i += 1) {
        const thread = try std.Thread.spawn(.{}, worker, .{});
        threads.appendAssumeCapacity(thread);
    }

    for (threads.items) |*thread| {
        thread.join();
    }

    std.debug.print("Zig version finished processing {} tasks with {} threads.\n", .{ total_tasks, num_threads });
}