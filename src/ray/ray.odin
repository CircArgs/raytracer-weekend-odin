package ray

import "../vec"

Ray::struct($O, $D : typeid){
  orig: $O,
  dir: $D,
}


ray_at::proc(ray: ^Ray, t: f64)->Ray{
  return Ray{ray.orig+t*ray.dir, ray.dir}
}

