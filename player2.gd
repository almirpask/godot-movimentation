extends KinematicBody2D

var velocidade = 10

func _ready():
	set_process(true)
	
	get_node("RigidBody2D").connect("body_enter", self,"colision")
	
	if(is_colliding()):
		get_node("Label").set_text("bsata")
		pass
	pass
	


func _process(delta):
	movimentation()
	
	pass
	
func colision(body):
	get_node("Label").set_text("bacana")
	print('tste')
	if(is_colliding()):
		get_node("Label").set_text("bacana")
		pass
	pass
func movimentation():
	var w = Input.is_action_pressed("W")
	var s = Input.is_action_pressed("S")
	var d = Input.is_action_pressed("D")
	var a = Input.is_action_pressed("A")
		
	if d:
		move(Vector2(velocidade,0))
	if a:
		move(Vector2(velocidade * -1,0))
	if w:
		move(Vector2(0,velocidade * -1))
	if s:
		move(Vector2(0,velocidade* 1))
		pass
		
	pass