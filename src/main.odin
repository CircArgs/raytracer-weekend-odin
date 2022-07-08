package main

import "core:fmt"
import "core:simd"
IMAGE_WIDTH :: 256
IMAGE_HEIGHT :: 256

Vector3 :: #simd[4]f64
BASE :: Vector3{256/(IMAGE_WIDTH - 1), 256/(IMAGE_HEIGHT - 1), 256/4}

main :: proc() {
	fmt.printf("P3\n%d %d\n255\n", IMAGE_WIDTH, IMAGE_HEIGHT)

	for _j in 0 ..< f64(IMAGE_HEIGHT) {
		j := IMAGE_HEIGHT - _j
		for i in 0 ..< f64(IMAGE_WIDTH) {
			num := Vector3{i, j, 1.0}
			num *= BASE

			fmt.printf("%d %d %d\n", i64(simd.extract(num, 0)), i64(simd.extract(num, 1)), i64(simd.extract(num, 2)))
		}
	}
}
