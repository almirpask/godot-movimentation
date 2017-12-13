extends KinematicBody2D

var velocidade = 10

func _ready():
	set_process(true)
	
	get_node("RigidBody2D 2").connect("body_exit", self, "teste")

	pass
func _process(delta):
	movimentation()
	pass
	
func teste(body):
	print("oha")
	pass
func movimentation():
	var cima = Input.is_action_pressed("cim")
	var baixo = Input.is_action_pressed("bai")
	var direita = Input.is_action_pressed("dir")
	var esquerda = Input.is_action_pressed("esq")
		
	if direita:
		move(Vector2(velocidade,0))
	if esquerda:
		move(Vector2(velocidade * -1,0))
	if cima:
		move(Vector2(0,velocidade * -1))
	if baixo:
		move(Vector2(0,velocidade* 1))
		pass
		
	pass