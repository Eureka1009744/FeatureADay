extends CharacterBody2D
var speedStat = 1
var speedAffects = 1
var pSpeed = speedStat * speedAffects * 75
var dashLength = 4000

# Called when the node enters the scene tree for the first time.
func _ready():
	pass



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
func _physics_process(_delta):
	var inputDirection = Input.get_vector("Left", "Right", "Up", "Down")
	velocity = inputDirection * pSpeed
	if Input.is_action_just_pressed("Space"):
		velocity = dashLength * inputDirection
	move_and_slide()
