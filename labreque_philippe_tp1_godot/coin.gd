extends AnimatedSprite2D



func _on_pressed() -> void:
	if frame == 2||4:
		$Bling.play()
		print("ok")
	else :
		$Wrong.stop()
		print("not ok")


func _on_ready() -> void:
	
	play()
	pass # Replace with function body.
