extends Button

func _on_Save_pressed():
	saveFile()

func saveFile(file = "res://config.ini"):
	# Initiate ConfigFile 
	var configFile = ConfigFile.new()  
	 
	# Add values to file 
	configFile.set_value("Config","Width",1024) 
	configFile.set_value("Config","Height",600) 
	configFile.set_value("Options","Windowed",1) 
 
    # Save file 
	configFile.save(file)
	print("File saved: ", file)