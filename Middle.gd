extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	Singletoe.middle = self
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_texture_button_pressed():
	var newTimeBuffer = preload("res://time_buffer_real.tscn").instantiate()
	$VBoxContainer.add_child(newTimeBuffer)
	pass # Replace with function body.
