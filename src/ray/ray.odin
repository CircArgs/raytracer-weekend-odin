package ray

import "../vec"

Ray_Base::struct($O, $D : typeid){
  orig: O,
  dir: D,
}

Ray::distinct Ray_Base(vec.Point3, vec.Vector3)
WRay::distinct Ray_Base(vec.WPoint3, vec.Wector3)


ray_at::proc(ray:^$T, t:f64)->T
where T==Ray || T==WRay
{
  return T{ray.orig+t*ray.dir, ray.dir}
}

// wray

// rays_to_wray::proc(rays:)