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
	$tasktimer/timer.stop()
	$breaktimer/timerb.start()
	$indicator.color = Color("#F9DB6D")
	$tasktimer.hide()
	$breaktimer.show()


func _on_timerb_timeout():
	$breaktimer/timerb.stop()
	$indicator.color = Color("#ef7b6c")
	$breaktimer.hide()
	$timeup.show()


func _on_endb_pressed():
	$indicator.color = Color("#ef7b6c")
	$breaktimer.hide()
	$timeup.show()

func _on_end_pressed():
	$tasktimer/timer.stop()
	$breaktimer/timerb.start()
	$indicator.color = Color("#F9DB6D")
	$tasktimer.hide()
	$breaktimer.show()


func _on_endc_pressed():
	get_tree().reload_current_scene()
