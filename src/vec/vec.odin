package vec

Vector3 :: distinct [3]f64


write_to_buf :: proc(buf: ^[dynamic]f64, v: Vector3){
  append(buf, v.x, v.y, v.z)
}
