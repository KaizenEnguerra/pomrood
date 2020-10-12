extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_taskinput_taskname(tname):
	$indicator.color = Color("#86BBD8")
	$taskinput.hide()
	$tasktimer.show()


func _on_timer_timeout():
	$breaktimer/timerb.start()
	$indicator.color = Color("#F9DB6D")
	$tasktimer.hide()
	$breaktimer.show()


func _on_timerb_timeout():
	get_tree().reload_current_scene()


func _on_endb_pressed():
	get_tree().reload_current_scene()


func _on_end_pressed():
	$breaktimer/timerb.start()
	$indicator.color = Color("#F9DB6D")
	$tasktimer.hide()
	$breaktimer.show()
