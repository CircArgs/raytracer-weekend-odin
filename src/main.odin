package main

import "core:fmt"
IMAGE_WIDTH :: 256
IMAGE_HEIGHT :: 256

Vector3 :: distinct [3]f64

main :: proc() {
	fmt.printf("P3\n%d %d\n255\n", IMAGE_WIDTH, IMAGE_HEIGHT)
	base := 256 / Vector3{IMAGE_WIDTH - 1, IMAGE_HEIGHT - 1, 4}

	for _j in 0 ..< f64(IMAGE_HEIGHT) {
		j := IMAGE_HEIGHT - _j
		for i in 0 ..< f64(IMAGE_WIDTH) {
			num := Vector3{i, j, 1.0}
			num *= base

			fmt.printf("%d %d %d\n", i64(num.x), i64(num.y), i64(num.z))
		}
	}

}
