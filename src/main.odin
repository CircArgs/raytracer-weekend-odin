package main

import "core:fmt"
IMAGE_WIDTH::256
IMAGE_HEIGHT::256

main :: proc() {
  fmt.printf("P3\n%d %d\n255\n", IMAGE_WIDTH, IMAGE_HEIGHT)
  for _j in 0..<IMAGE_HEIGHT{
    j:=IMAGE_HEIGHT-_j
    for i in 0..<IMAGE_WIDTH{
      r:= f64(i)/(IMAGE_WIDTH-1)
      g:=f64(j)/(IMAGE_HEIGHT-1)
      b:f64=.25

      ir: = i32(256 *r)
      ig :=i32( 256 *g)
      ib := i32(256 *b)

      fmt.printf("%d %d %d\n", ir, ig, ib)
    }
  }
}
