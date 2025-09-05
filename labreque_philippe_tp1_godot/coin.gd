extends AnimatedSprite2D

@onready var good_sound = $Bling
@onready var bad_sound = $Wrong

# Définir les frames "bon timing"
var good_frames = [0, 2]  # Frame 2 et 4 (index 1 et 3)
var score = 0
func _ready() -> void:
	play()  # Lancer l'animation en boucle


func _on_button_pressed() -> void:
	if frame in good_frames:
		good_sound.play()
		print("🎯")
		score+=1
	
	else:
		bad_sound.play()
		score+=-1
		print("❌")


func _process(delta: float) -> void:
	$"../RichTextLabel".text=var_to_str(score)
