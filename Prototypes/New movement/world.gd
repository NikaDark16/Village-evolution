extends Node2D

var ticks = 0
var day = 0


func _on_Timer_timeout():
	ticks += 1
	if ticks > 9:
		day += 1
		ticks = 0
	get_tree().call_group("Entities", "make_tick")
	print("Day: {day}, Ticks: {ticks}".format({"day": day, "ticks": ticks}))
