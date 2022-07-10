package main

import "core:fmt"
import "vec"
import "color"

// image details
ASPECT_RATIO :: 16./9.
IMAGE_WIDTH :: 400
IMAGE_HEIGHT :: ASPECT_RATIO*IMAGE_WIDTH

// camera details
VIEWPORT_HEIGHT :: 2.
VIEWPORT_WIDTH :: ASPECT_RATIO * VIEWPORT_HEIGHT
FOCAL_LENGTH :: 1.

ORIGIN::vec.Point3{}
HORIZONTAL::vec.Vector3{VIEWPORT_WIDTH}
VERTICAL::vec.Vector3{0, VIEWPORT_HEIGHT}
LOWER_LEFT_CORNER::ORIGIN-HORIZONTAL/2.-VERTICAL/2.-vec.Vector3{z=FOCAL_LENGTH}

// base for initial gradient images
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
