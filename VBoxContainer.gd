extends VBoxContainer



func _on_TombolMain_pressed():
	get_tree().change_scene("res://level/level1/Level1.tscn")
	$AudioStreamPlayer.play()


func _on_TombolTentang_pressed():
	get_tree().change_scene("res://Tentang.tscn")
	$AudioStreamPlayer.play()


#func _on_TombolMain_mouse_entered():
	#$BtnBg.play()


func _on_TombolTentang2_pressed():
	get_tree().quit()
