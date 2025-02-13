extends VBoxContainer

var tasks := []
# Called when the node enters the scene tree for the first time.
func _ready():
	print(tasks)
	if(get_parent() != null):
		get_parent().move_child.call_deferred(get_parent().get_node("addTimeBuffer"), -1)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_add_task_text_submitted(new_text):
	var newTask = preload("res://task.tscn").instantiate()
	newTask.text = new_text
	add_child(newTask)
	$addTask.text = ""


func _on_add_task_text_changed(new_text):
	$addTask/plus.visible = false
	pass # Replace with function body.


func _on_add_task_text_change_rejected(rejected_substring):
	$addTask/plus.visible = true
	pass # Replace with function body.


func _on_delete_pressed():
	self.queue_free()
	pass # Replace with function body.
