extends Node

var score: int = 0
var lives: int = 3

func add_score():
	score += 1

func reset_score():
	score = 0

func take_life():
	lives -= 1
	
func reset_lives():
	lives = 3
