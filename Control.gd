extends Control
var cookie_sprite = preload("res://Sprite.tscn")
var cookies= 1
var cookie_lvl=1
var autoclick_lvl=0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	pass


func _on_Button_pressed():
	
	var cookie=cookie_sprite.instance()
	add_child(cookie)
	cookies+=cookie_lvl
	update_cookies()
	pass # Replace with function body.
	


func _on_Button2_pressed():if cookies>=lvlup_coast(cookie_lvl):
	cookies-=lvlup_coast(cookie_lvl)
	cookie_lvl+=1
	update_cookies()
	$Button2.text="coast: "+str(lvlup_coast(cookie_lvl)) 
func update_cookies():
	$Label.text=str(cookies)
func lvlup_coast(lvl):
	return pow(2,lvl)*25



func _on_butter_pressed():if cookies>=lvlup_coast(autoclick_lvl)and autoclick_lvl<60:
	cookies-=lvlup_coast(autoclick_lvl)
	autoclick_lvl+=1
	update_cookies()
	$Control/butter.text="coast: "+str(lvlup_coast(autoclick_lvl)) 
	$Timer.start(1/autoclick_lvl)
	pass # Replace with function body.
