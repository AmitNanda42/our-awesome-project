extends Control

const options = [
	{
		"Name" : "Option 1",
		"Description" : "Description for Option 1",
		"Method" : "function1"
	},
	{
		"Name" : "Option 2",
		"Description" : "Description for Option 2",
		"Method" : "function2"
	},
	{
		"Name" : "Option 3",
		"Description" : "Description for Option 3",
		"Method" : "function3"
	}	
]

func function1():
	print("Option 1 Pressed!")

func function2():
	print("Option 2 Pressed!")

func function3():
	print("Option 3 Pressed!")


func update_description(description):
	print("Hellow world")
	$DynamicTextBox.set_text(description)

func _ready():
	$Choices.set_data(options, self)
	$Choices.connect("update_description", self, "update_description")
	$Choices.focus(0)
