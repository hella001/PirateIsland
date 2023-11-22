extends CenterContainer

onready var tween = $Tween

var sudah_muncul = false

func _ready():
	pass
	
func muncul():
	$AudioStreamPlayer.play()
	tween.interpolate_property(self, "rect_position:y", -130, 56, 1, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
	tween.start()


func _on_Hero_hero_menang():
	muncul()


func _on_TmblKeluar_pressed():
	get_tree().change_scene("res://level/level2/Level2.tscn")
