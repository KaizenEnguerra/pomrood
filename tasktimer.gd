extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	timeconv()


func _on_taskinput_taskname(tname):
	$taskname.set_text(tname)


func _on_taskinput_wtime(wt):
	wt = wt*60
	$timer.set("wait_time", wt)
	$timer.start()

func timeconv():
	var timeleft = int($timer.get_time_left())
	var minute = timeleft / 60
	var second = timeleft % 60
	var strtime = "%02d:%02d" % [minute, second]
	$timerlabel.set_text(strtime)


func _on_extend5_pressed():
	var timeleft = int($timer.get_time_left())
	timeleft = timeleft + 300
	print(timeleft)
	$timer.start(timeleft)
