package test

import "core:fmt"
import "core:simd"
import "core:time"

// add_vectors::proc(a, b: simd.f64x4)-> simd.f64x4{
// 	return a+b
// }

// main :: proc() {
// 	x:=add_vectors(simd.f64x4{1,2,3,4}, simd.f64x4{1,2,3,4})
// 	fmt.print(x)
// }
weekday :: proc(t: time.Time) -> time.Weekday {
	day, _month, year := time.date(t)
	month := int(_month)
	return time.Weekday(
		(day +
		((153 * (month + 12 * ((14 - month) / 12) - 3) + 2) / 5) +
		(365 * (year + 4800 - ((14 - month) / 12))) +
		((year + 4800 - ((14 - month) / 12)) / 4) -
		((year + 4800 - ((14 - month) / 12)) / 100) +
		((year + 4800 - ((14 - month) / 12)) / 400) -
		32045) % 7,
	)
}
main :: proc() {


	fmt.print(weekday(time.now()))
}
