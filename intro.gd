extends CharacterBody2D

# loading a scene this way attaches it to the node;
# if you want to create the nodes by script do it on root node
# this loads the scene, then we can instantiate, preload only with gdscript
#var coin = preload("res://coin.tscn")
#var coin1 = coin.instantiate()



# declaration
var score : int = 0
var remaining: float
var move : int = 10 #base for movement, add this or negative this on key

# handle keyboard input
func _input(event: InputEvent) -> void:
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_LEFT:
			position.x-=move
		if event.keycode == KEY_RIGHT:
			position.x+=move
		if event.keycode == KEY_UP:
			position.y-=move
		if event.keycode == KEY_DOWN:
			position.y += move
			
# gets called every second, supports deterministic physics
func _physics_process(delta: float) -> void:
		#will move and slide call work with my settings?
		move_and_slide()
		pass
	
# ready executed onload
func _ready() -> void:
	# prints to output (bottom left)
	print(score)
	remaining = 5	
	pass
	
# process executed every fram, delta is elapsed
func _process(_delta: float) -> void:
	#remaining -= delta
	#print(remaining)
	#if Input.is_action_pressed("ui_left"):
		#position.x+=(move*delta)
	pass
