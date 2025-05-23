
AddRoom("BGCrappyForest", {
					colour={r=.1,g=.8,b=.1,a=.50},
					value = WORLD_TILES.FOREST,
					tags = {"ExitPiece", "Chester_Eyebone", "StatueHarp_HedgeSpawner", "CharlieStage_Spawner",},
					contents =  {
					                distributepercent = .6,
					                distributeprefabs=
					                {
										gravestone=0.01,
										pighouse=0.015,
										spiderden=0.04,
										grass=0.0025,
										sapling=0.15,
										twiggytree = 0.15,
										ground_twigs = 0.06,
										rock1=0.008,
										rock2=0.008,
										evergreen_sparse=1.5,
										flower=0.05,
										pond=.001,
					                    green_mushroom = .025,
					                    red_mushroom = .025,
					                },
					            }
					})
AddRoom("BGForest", {
					colour={r=.1,g=.8,b=.1,a=.50},
					value = WORLD_TILES.FOREST,
					tags = {"ExitPiece", "Chester_Eyebone", "StagehandGarden", "Terrarium_Spawner", "StatueHarp_HedgeSpawner", "CharlieStage_Spawner"},
					contents =  {
					                distributepercent = .6,
					                distributeprefabs=
					                {
										gravestone=0.01,
										pighouse=0.015,
										spiderden=0.02,
										grass=0.0025,
										sapling=0.15,
										twiggytree = 0.15,
										ground_twigs = 0.06,
										berrybush=0.005,
										berrybush_juicy = 0.0025,
										rock1=0.004,
										rock2=0.004,
										evergreen=1.5,
										flower=0.05,
										pond=.001,
					                    green_mushroom = .025,
					                    red_mushroom = .025,
					                },
					            }
					})
AddRoom("BGDeepForest", {
					colour={r=.1,g=.8,b=.1,a=.50},
					value = WORLD_TILES.FOREST,
					tags = {"ExitPiece", "Chester_Eyebone", "StatueHarp_HedgeSpawner", "CharlieStage_Spawner",},
					contents =  {
									countstaticlayouts={["MushroomRingSmall"]=function()
																				if math.random(0,1000) > 985 then
																					return 1
																				end
																				return 0
																			   end},
					                distributepercent = .8,
					                distributeprefabs=
					                {
										spiderden=0.05,
										rock1=0.004,
										rock2=0.004,
										evergreen=4.5,
										fireflies=0.1,
					                    blue_mushroom = .025,
					                    green_mushroom = .005,
					                    red_mushroom = .005,
					                },
									prefabdata = {
										spiderden = function() if math.random() < 0.1 then
																	return { growable={stage=2}}
																else
																	return { growable={stage=1}}
																end
															end,
									},
					            }
					})
AddRoom("BurntForest", {
					colour={r=.090,g=.10,b=.010,a=.50},
					value = WORLD_TILES.FOREST,
					tags = {"ExitPiece", "Chester_Eyebone"},
					contents =  {
									distributepercent = 0.4,
									distributeprefabs= {
										evergreen = function() return 3 + math.random(4) end,
									},
									prefabdata={
										evergreen = {burnt=true},
									}
								}
						   })
AddRoom("CrappyDeepForest", {
					colour={r=0,g=.9,b=0,a=.50},
					value = WORLD_TILES.FOREST,
					tags = {"ExitPiece", "Chester_Eyebone"},
					contents =  {
					                distributepercent = .8,
					                distributeprefabs=
					                {
                                        fireflies = 0.1,
					                    evergreen_sparse = 6,
										spiderden = 0.01,
					                    grass = .05,
					                    sapling=.5,
										twiggytree = 0.16,
										ground_twigs = 0.06,
					                    berrybush=.02,
					                    berrybush_juicy = 0.01,
					                    blue_mushroom = 0.02,
					                },
					            }

					})
AddRoom("DeepForest", {
					colour={r=0,g=.9,b=0,a=.50},
					value = WORLD_TILES.FOREST,
					tags = {"ExitPiece", "Chester_Eyebone","Junkyard_Spawner", "Balatro_Spawner"},
					contents =  {
									countstaticlayouts=
									{
										["LivingTree"]= function() return (math.random() > TUNING.LIVINGTREE_CHANCE and 1) or 0 end
									},

									-- countprefabs =
									-- {
									-- 	livingtree = function() return (math.random() > TUNING.LIVINGTREE_CHANCE and 1) or 0 end
									-- },
					                distributepercent = .8,
					                distributeprefabs=
					                {
                                        fireflies = 0.1,
										--evergreen = 6,
					                    grass = .05,
					                    sapling=.5,
										twiggytree = 0.5,
										ground_twigs = 0.3,
					                    berrybush=.02,
					                    berrybush_juicy = 0.01,
					                    blue_mushroom = 0.02,
										trees = {weight = 6, prefabs = {"evergreen", "evergreen_sparse"}}
					                },
					            }

					})
	-- Trees, very few rocks, very few rabbit holes
AddRoom("Forest", {
					colour={r=.5,g=0.6,b=.080,a=.10},
					value = WORLD_TILES.FOREST,
					tags = {"ExitPiece", "Chester_Eyebone", "Balatro_Spawner"},
					contents =  {
									countprefabs = {
    										spawnpoint_multiplayer = 1,
    									},
					                distributepercent = .3,
					                distributeprefabs=
					                {
                                        fireflies = 0.2,
										--evergreen = 6,
					                    rock1 = 0.05,
					                    grass = .05,
					                    sapling=.8,
										twiggytree = 0.8,
										ground_twigs = 0.06,
										--rabbithole=.05,
					                    berrybush=.03,
					                    berrybush_juicy = 0.015,
					                    red_mushroom = .03,
					                    green_mushroom = .02,
										trees = {weight = 6, prefabs = {"evergreen", "evergreen_sparse"}}
					                },
					            }
					})
	-- Trees, some rocks
AddRoom("CritterDen", {
					colour={r=.5,g=0.6,b=.080,a=.10},
					value = WORLD_TILES.GROUND_NOISE,
					tags = {"Chester_Eyebone"},
					contents =  {
									countprefabs = {
    										critterlab = 1,
    									},
					                distributepercent = .5,
					                distributeprefabs =
					                {
										rock1 = .8,
										rock2 = .1,
										flint = .1,
                                        fireflies = 0.2,
					                    grass = .05,
					                    sapling = .8,
										twiggytree = 0.8,
										ground_twigs = 0.06,
					                    berrybush = .03,
					                    berrybush_juicy = 0.015,
					                    red_mushroom = .03,
					                    green_mushroom = .02,
					                    blue_mushroom = .002,
										trees = {weight = 6, prefabs = {"evergreen", "evergreen_sparse"}},
					                    grassgekko = 0.3,
					                },
					            }
					})
	-- Trees, very few rocks, very few molehills
AddRoom("ForestMole", {
					colour={r=.5,g=0.6,b=.080,a=.10},
					value = WORLD_TILES.FOREST,
					tags = {"ExitPiece", "Chester_Eyebone"},
					contents =  {
					                distributepercent = .3,
					                distributeprefabs=
					                {
                                        fireflies = 0.2,
					                    --evergreen = 6,
					                    rock1 = 0.05,
					                    grass = .05,
					                    sapling=.8,
										twiggytree = 0.8,
										ground_twigs = 0.06,
					                    molehill=.3,
					                    berrybush=.03,
					                    berrybush_juicy = 0.015,
					                    red_mushroom = .03,
					                    green_mushroom = .02,
					                    trees = {weight = 6, prefabs = {"evergreen", "evergreen_sparse"}}
					                },
					            }
					})
AddRoom("CrappyForest", {
					colour={r=.5,g=0.6,b=.080,a=.10},
					value = WORLD_TILES.FOREST,
					tags = {"ExitPiece", "Chester_Eyebone", "Balatro_Spawner"},
					contents =  {
									countprefabs = {
    										spawnpoint_multiplayer = 1,
    									},
					                distributepercent = .3,
					                distributeprefabs=
					                {
                                        fireflies = 0.2,
					                    evergreen_sparse = 6,
					                    rock1 = 0.05,
					                    grass = .05,
					                    sapling=.8,
										twiggytree = 0.8,
										ground_twigs = 0.06,
					                    molehill=.05,
					                    berrybush=.03,
					                    berrybush_juicy = 0.015,
					                    red_mushroom = .03,
					                    green_mushroom = .02,

					                },
					            }
					})
AddRoom("SpiderForest", {
					colour={r=.80,g=0.34,b=.80,a=.50},
					value = WORLD_TILES.FOREST,
					tags = {"ExitPiece", "Chester_Eyebone"},
					contents =  {
					                distributepercent = .2,
					                distributeprefabs=
					                {
					                    evergreen_sparse = 6,
					                    rock1 = 0.05,
					                    sapling = .05,
										twiggytree = 0.05,
										ground_twigs = 0.03,
										spiderden = 1,
					                },
									prefabdata = {
										spiderden = function() if math.random() < 0.2 then
																	return { growable={stage=2}}
																else
																	return { growable={stage=1}}
																end
															end,
									},
					            }
					})
AddRoom("BurntClearing", {
					colour={r=.8,g=0.5,b=.7,a=.50},
					value = WORLD_TILES.FOREST,
					tags = {"ExitPiece", "Chester_Eyebone"},
					contents =  {
					                distributepercent = .1,
					                distributeprefabs=
					                {
					                    evergreen = 0.15,
					                    grass = .1,
					                    sapling=.2,
										twiggytree = 0.2,
										ground_twigs = 0.06,
					                },
									prefabdata={
										evergreen = {burnt=true},
									}
					            }
					})
	-- Trees on the outside, empty in the middle
AddRoom("Clearing", {
					colour={r=.8,g=0.5,b=.6,a=.50},
					value = WORLD_TILES.FOREST,
					tags = {"ExitPiece", "Chester_Eyebone", "StagehandGarden", "Balatro_Spawner"},
					contents =  {
									countprefabs = {
    										spawnpoint_multiplayer = 1,
    									},
									countstaticlayouts={["MushroomRingLarge"]=function()
																				if math.random(0,1000) > 985 then
																					return 1
																				end
																				return 0
																			   end},
					                distributepercent = .1,
					                distributeprefabs=
					                {
										pighouse=0.015,
                                        fireflies = 1,
					                    evergreen = 1.5,
					                    grass = .1,
					                    sapling=.8,
										twiggytree = 0.8,
										ground_twigs = 0.06,
					                    berrybush=.1,
					                    berrybush_juicy = 0.05,
					                    beehive=.05,
					                    red_mushroom = .01,
					                    green_mushroom = .02,
					                },
					            }
					})

AddRoom("MoonbaseOne", {
					colour={r=.8,g=0.5,b=.6,a=.50},
					value = WORLD_TILES.FOREST,
					tags = { "RoadPoison" },
					contents =  {
									countprefabs = {

    									},
									countstaticlayouts={["MoonbaseOne"]=1},

					                distributepercent = .8,
					                distributeprefabs=
					                {
										evergreen=6,
                                        fireflies = .5,
					                    blue_mushroom = .05,
					                    green_mushroom = .05,
					                    grass = .1,
					                    sapling=.8,
										twiggytree = 0.8,
										ground_twigs = 0.06,
					                    berrybush_juicy = 0.05,
					                },
					            }
					})
