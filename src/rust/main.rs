use std::env;
use std::sync::atomic::{AtomicUsize, Ordering};
use std::sync::Arc;
use std::thread;

// CPU-bound task
fn fibonacci(n: u32) -> u64 {
    if n <= 1 {
        n as u64
    } else {
        fibonacci(n - 1) + fibonacci(n - 2)
    }
}

const FIB_N: u32 = 40;

fn main() {
    let args: Vec<String> = env::args().collect();
    if args.len() != 3 {
        eprintln!("Usage: {} <num_threads> <num_tasks>", args[0]);
        std::process::exit(1);
    }

    let num_threads: usize = match args[1].parse() {
        Ok(n) if n > 0 => n,
        _ => {
            eprintln!("Number of threads must be a positive integer.");
            std::process::exit(1);
        }
    };

    let total_tasks: usize = match args[2].parse() {
        Ok(n) if n > 0 => n,
        _ => {
            eprintln!("Number of tasks must be a positive integer.");
            std::process::exit(1);
        }
    };

    let task_counter = Arc::new(AtomicUsize::new(0));
    
    let mut handles = vec![];

    for _ in 0..num_threads {
        let counter_clone = Arc::clone(&task_counter);
        let handle = thread::spawn(move || {
            while {
                let task_index = counter_clone.fetch_add(1, Ordering::Relaxed);
                task_index < total_tasks
            } {
                // "Process" the task
                fibonacci(FIB_N);
            }
        });
        handles.push(handle);
    }

    for handle in handles {
        handle.join().unwrap();
    }

    println!(
        "Rust version finished processing {} tasks with {} threads.",
        total_tasks, num_threads
    );
}
