extends LineEdit



func _ready():
	expand_to_text_length = true
	placeholder_text = "..."


func _physics_process(delta):
	var text_length = self.text.length()*2+4

	$CharacterBody2D/CollisionShape2D.shape.extents.x = text_length
	$CharacterBody2D/CollisionShape2D.position.x = 12+(text_length)
