package main

import "core:fmt"
import "vec"
import "color"


IMAGE_WIDTH :: 256
IMAGE_HEIGHT :: 256

BASE :: vec.Vector3{(IMAGE_WIDTH - 1),  (IMAGE_HEIGHT - 1),  4}

main :: proc() {
	using vec
	fmt.printf("P3\n{} {}\n255\n", IMAGE_WIDTH, IMAGE_HEIGHT)
	for _j in 0 ..< f64(IMAGE_HEIGHT) {
		j := IMAGE_HEIGHT - _j
		for i in 0 ..< f64(IMAGE_WIDTH) {
			num := Vector3{i, j, 1.0}
			num /= BASE
			fmt.println(color.to_string(color.from_vec(&num)))
		}
	}
}
