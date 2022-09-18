use std::{thread, time};

fn main() {
    let gb = 1024 * 1024 * 1024;
    let mut vs: Vec<u8> = Vec::with_capacity(32 * gb);
    let mut vs2: Vec<u8> = Vec::with_capacity(32 * gb);
    vs2.push(1);
    for _i in 0..(32 * gb) {
        vs.push(1);
    }
    println!("Yay!");
    let second = time::Duration::from_secs(1);
    loop {
        thread::sleep(second);
    }
}
