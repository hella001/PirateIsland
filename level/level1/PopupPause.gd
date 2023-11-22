extends CenterContainer


onready var tween = $Tween
# onready var tombol_ulangi = $TmblUlangi
# onready var tombol_keluar = $TmblKeluar

var sudah_muncul = false
var is_paused = false setget set_is_paused

func _unhandled_input(event):
	if event.is_action("pause"):
		muncul()
		self.is_paused = true

func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused

func _ready():
	pass

func muncul():
	# tombol_ulangi.disabled = false
	# tombol_keluar.disabled = false
	#$AudioStreamPlayer.play()
	tween.interpolate_property(self, "rect_position:y", -130, 56, 1, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
	tween.start()

func keluar():
	tween.interpolate_property(self, "rect_position:y", 56, -130, 1, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
	tween.start()



func _on_TmblUlangi_pressed():
	keluar()
	self.is_paused = false


func _on_TmblKeluar_pressed():
	self.is_paused = false
	get_tree().change_scene("res://Title.tscn")
