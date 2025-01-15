extends "res://CurrentGame.gd"

onready var initialShipReplacement = Shipyard.getDefaultConfigByName("KITSUNE")

func newGame():
	init()
	inventoryMode = false
	firstStage = true
	justStarted = true
	state = initialState.duplicate(true)
	diveTarget = Vector2(15000, randf() * 30000000)
	state.ship = initialShipReplacement.duplicate(true)
	state.time = getGameStartTime()
	setupPlayerShip()
	emit_signal("newGame")
	markStateAsValid()
	initializePrices()
	resetLightLag(state.time)
	loadedSave = false
	
