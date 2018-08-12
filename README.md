# Tarantube
Tarantool message queue wrapper based on Tarantalk
[Tarantool queue](https://github.com/tarantool/queue) wrapper based on [Tarantalk](https://github.com/mumez/Tarantalk).

```smalltalk
tarantalk := TrTarantalk connect: 'taran:talk@localhost:3301'.
tarantalk tubes. "return currently available tubes"
	
"Preparing a FIFO tube"
tube := tarantalk ensureTubeNamed: 'my_tube' .
	
"Adding tasks to the tube"
1 to: 10 do:  [:idx | tube putTaskWith: idx asString]. 
	
"Taking tasks periodically (with 2 seconds timeout)"
tube repeatTakeTaskFor: 2 ifAvailable: [:task | Transcript cr; show: {task. task data}. task done].
	
"Get stats"
tube statistics.
```

# Installation
```smalltalk
Metacello new  baseline: 'Tarantube';  repository: 'github://mumez/Tarantube/repository';  load.
```

And extend your tarantool with [queue module](https://github.com/tarantool/queue).

# Running
Before running tarantool, you need to require queue module in your script.lua file.

```lua
box.cfg{listen = 3301}
queue = require('queue')
```