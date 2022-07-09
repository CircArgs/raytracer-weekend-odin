package ray

import "../vec"

Ray::struct{
  orig: vec.Point3,
  dir: vec.Vector3,
}


ray_at::proc(ray: ^Ray, t: f64)->Ray{
  return Ray{ray.orig+t*ray.dir, ray.dir}
}
