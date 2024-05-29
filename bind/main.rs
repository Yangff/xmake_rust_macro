extern crate dep1;
use dep1::make_answer;

make_answer!();

fn main() {
    println!("{}", answer());
}