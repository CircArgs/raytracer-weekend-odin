package test

import "src/ray"
import "src/vec"
import "core:fmt"
main::proc(){
  using ray
  using vec
r:=Ray{dir=Vector3{1,2,3}}
ra:=ray_at(&r, 5)
ra.dir=Vector3{4,5,6}
  fmt.print(r, ra)
}
