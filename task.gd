extends CheckBox

var isEditing = false

func _ready():
	if(get_parent() != null):
		get_parent().tasks.append(self)
		get_parent().move_child.call_deferred(get_parent().get_node("addTask"), -1)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_edit_pressed():
	if isEditing:
		pass
	else:
		isEditing = true
		text = ""
		$LineEdit.visible = true


func _on_line_edit_text_submitted(new_text):
	text = new_text
	$LineEdit.visible = false
	isEditing = false


func _on_delete_pressed():
	self.queue_free()
	pass # Replace with function body.
