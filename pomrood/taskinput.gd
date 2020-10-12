extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

signal taskname(tname)
signal wtime(wt)
signal btime(bt)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_wtime_value_changed(value):
	$wtimeLabel.set_text(str(value))


func _on_btime_value_changed(value):
	$btimeLabel.set_text(str(value))


func _on_go_pressed():
	var taskname = $taskname.get("text")
	var wtimer = $wtime.get("value")
	var btimer = $btime.get("value")
	
	emit_signal("taskname", taskname)
	emit_signal("wtime", wtimer)
	emit_signal("btime", btimer)
	print(taskname)
	print(wtimer)
	print(btimer)
	
	
