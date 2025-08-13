extends Node2D

var speed = 50
var _local_delta

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	_local_delta = delta
	pass
	
func _unhandled_input(event: InputEvent):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_W:
			_move(1)
		if event.pressed and event.keycode == KEY_A:
			_move(2)
		if event.pressed and event.keycode == KEY_S:
			_move(3)
		if event.pressed and event.keycode == KEY_D:
			_move(4)

			
func _move(itterate: int):
	match itterate:
		1: 
			position.y -= 50 * _local_delta
		2:
			position.x -= 50 * _local_delta
		3:
			position.y += 50 * _local_delta
		4:
			position.x += 50 * _local_delta
		_:
			print("Nothing found")
