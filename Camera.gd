extends Camera


export var follow_speed = 0.2

var ofset:Vector3 = Vector3(0, 14.5, -5.7)
var player


func _ready():
	player = get_parent().get_node("player")
	ofset = global_transform.origin-player.global_transform.origin


func _process(delta):
	look_at(player.global_transform.origin,Vector3.UP)
	global_transform.origin = global_transform.origin.linear_interpolate(player.global_transform.origin + ofset,follow_speed)
