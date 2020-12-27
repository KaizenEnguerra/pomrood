extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	timeconv()


func _on_taskinput_btime(bt):
	bt = bt*60
	$timerb.set("wait_time", bt)

func timeconv():
	var timeleft = int($timerb.get_time_left())
	var minute = timeleft / 60
	var second = timeleft % 60
	var strtime = "%02d:%02d" % [minute, second]
	$timerlabelb.set_text(strtime)


func _on_extend5b_pressed():
	var timeleft = int($timerb.get_time_left())
	timeleft = timeleft + 300
	print(timeleft)
	$timerb.start(timeleft)
