extends Area2D

# need to do this via connector signal, not just name
func _on_body_entered(body):
	# increase scale of body
	body.scale.x += 0.2
	body.scale.y += 0.2
	# destroy coin
	queue_free()
	pass
