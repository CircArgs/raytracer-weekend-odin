package test

import "core:fmt"
import "core:runtime"
a::proc(){
  fmt.print(context.name_a)
}

b::proc(){
  fmt.print(context.name_b)
}
my_context :: struct{
  using ctx: runtime.Context,
  name_a: string ,
}
main :: proc(){
  context=my_context{context, "a"}
  a()
}
