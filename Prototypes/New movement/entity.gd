extends Node2D

var has_tick = true


func try_use_tick():
	if has_tick:
		has_tick = false
		return true

func make_tick():
	has_tick = true

func move(direction: Vector2):
	direction = direction.normalized()
	if (direction.x == 0 or direction.y == 0) and direction != Vector2.ZERO:
		if try_use_tick():
			print("Test")
			position += direction * 16
