extends CenterContainer

onready var tween = $Tween
#onready var tombol_ulangi = $TmblUlangi
#onready var tombol_keluar = $TmblKeluar


var sudah_muncul = false

func _ready():
	pass
	
func muncul():
	#tombol_ulangi.disabled = false
	#tombol_keluar.disabled = false
	$AudioStreamPlayer.play()
	tween.interpolate_property(self, "rect_position:y", -130, 56, 1, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
	tween.start()

func _on_TmblUlangi_pressed():
	get_tree().change_scene("res://level/level14/Level14.tscn")

func _on_Hero_hero_mati():
	if not sudah_muncul:
		sudah_muncul = true
		muncul()


func _on_TmblKeluar_pressed():
	get_tree().change_scene("res://Title.tscn")
