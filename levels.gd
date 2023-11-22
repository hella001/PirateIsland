extends Control

func _ready():
	if is_inside_tree():  # Periksa apakah dalam pohon adegan
		for level in $levels.get_children():
			var lvl_no = int(level.name)  # Ambil nomor level dari nama node
			if lvl_no <= global.unlockedLevels:  # Periksa apakah level sudah terbuka
				level.disabled = false
				level.connect("pressed", self, "level_button_pressed", [lvl_no])  # Menghubungkan sinyal dari tombol level yang diaktifkan
			else:
				level.disabled = true  # Menonaktifkan tombol level yang belum terbuka

func level_button_pressed(lvl_no):
	var level_scene_path = "res://level/level" + str(lvl_no) + "/Level" + str(lvl_no) + ".tscn"
	var level_scene = load(level_scene_path)
	if level_scene != null:
		get_tree().change_scene(level_scene)
	else:
		print("Scene not found: " + level_scene_path)
