package color
import "core:fmt"
import "../vec"

COLOR_TYPE :: i32
Color :: distinct [3]COLOR_TYPE

from_vec::proc(vec: ^vec.Vector3)->Color{
  return Color{COLOR_TYPE(256*vec.x), COLOR_TYPE(256*vec.y), COLOR_TYPE(256*vec.z)}
}

to_string::proc(color: Color)->string{
  return fmt.tprint(color.r, color.g, color.b)
}
