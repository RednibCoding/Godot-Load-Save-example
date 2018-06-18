extends Button

func _on_Load_pressed():
	loadFile()
	
	
func loadFile(file = "res://config.ini"):
	# Initiate ConfigFile  
	
	var configFile = ConfigFile.new() 
	
	# Load file 
	configFile.load(file) 
	
	# ---------- 
	
	# METHOD-1: 
	# Check if "hostname" exists in Config section 
	if (configFile.has_section_key("Config", "Width")): 
	
	    # Get hostname value and print it 
	    var width = configFile.get_value("Config", "Width") 
	    print("Width: ", width) 
	
	# ---------- 
	
	# METHOD-2: 
	# Assign value without checking if it exists 
	var height = configFile.get_value("Config", "Height") 
	
	# If value is not null; print out 
	if(height != null): 
	    print("Height: ", height) 
	
	# ---------- 
	
	# Check if [Options] section exist 
	if (configFile.has_section("Options")): 
	    print ("Options found!")
