package main
import ("fmt")

func main() {
  i := 0
  for i < 1000000000  {
    i++
  }
  fmt.Println(i)
}
