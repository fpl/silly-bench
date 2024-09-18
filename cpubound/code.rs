fn main() {
    let mut i = 0;
    let mut j = 0;

    while i < 1000000000 {
        i += 1;
        if i % 100000000 == 0 {
            j += 1;
        }
    }
    println!("j from Rust is {}", j);
}
