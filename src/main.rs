fn main() {
    let paths: std::fs::ReadDir = std::fs::read_dir("/test").unwrap();

    for path in paths {
        println!("Name: {}", path.unwrap().path().display())
    }
}
