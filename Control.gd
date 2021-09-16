extends Control
var cookie_sprite = preload("res://Sprite.tscn")
var cookies= 1

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	
	var cookie=cookie_sprite.instance()
	add_child(cookie)
	cookies+=1
	$Label.text=str(cookies)
	pass # Replace with function body.
