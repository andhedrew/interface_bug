extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	self.button_down.connect(_on_button_down)
	self.button_up.connect(_on_button_up)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_down() -> void:
	$StaticBody2D/CollisionShape2D.disabled = true


func _on_button_up() -> void:
	$StaticBody2D/CollisionShape2D.disabled = false
