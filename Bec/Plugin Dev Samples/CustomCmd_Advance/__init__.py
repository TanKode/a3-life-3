# Template example on howto create custom commands.

import sys
import os

# Important this needs to point to the correct directory
sys.path.append(os.getcwd()+"\\Plugins\\CustomCmd_Advance")

# InstancObject._Bec_commands[Cmd_name] = [GroupNr, Act, Time, Text, Description]
# This is my custom commands set to group 100 "public group" ..
# Remember to set them up in Be_PlayerChat aswell.

Custom_Commands={
	# Public commands
	'!admin' 		: [100, "say -N", "", "Visit our TeamSpeak for support", 		"This is only the description for the command !admin"],
	'!info' 		: [100, "say -N", "", "Use !help to get info about commands", 	"This text is what is shown when you type !help !info"],
	'!greetings' 	: [100, "say -N", "", "Hello and Welcome to our server", 		"Same as above, just a general Description."],

	# Admin commands, 
	'!status' 		: [0, "", "", "", "Same as above, just a general Description."],
	'!lol'			: [1, "", "", "", "Same as above, just a general Description."]
}



class MyPlugin(object):

	def __init__(self, instance):
		''' constructor '''
		self.bec = instance

		# Copy and extend , "monkey patching" of chat handler in bec.
		self.org_func_chat	= self.bec._be_chat
		self.bec._be_chat	= self.player_chat

		# Run test on command names..
		test = self.run_CmdTest()
		

	def run_CmdTest(self):
		'''Check the custom commands, If the command already exists delete it from out custom cmd dict. '''
		for ckey in self.bec._Bec_commands.keys():
			if Custom_Commands.has_key(ckey):
				del Custom_Commands[ckey]

	def Be_PlayerChat(func):
		'''
			This function will trigger once a player sends some chat.
			Add your extra code into extended_data -> finally.
		
			Arg 0 can be considered as self.
			Arg 1 will be a regex obj
		'''
		def extended_data(*args, **kwargs):
			try:
				return func(*args, **kwargs)
			finally:
				''' 
					To execute action of your custom commands. you can set up the logic here..
					Example shown below.
				'''
				self = args[0]	
				
				# Get the channel the player uses. "ie. Global, Side, Direct etc.."
				chat_channel = args[1].groups()[0]
				
				# Get Player name.
				name = args[1].groups()[1]
				
				# Get Chat text.
				chat_text = args[1].groups()[2]
				
				# collect beid & guid of player aswell..
				beid = "-1" 	
				guid = ""
				for g in self.bec.Bec_playersconnected.keys():
					if self.bec.Bec_playersconnected[g][1] == name:
						beid = str(self.bec.Bec_playersconnected[g][0])
						guid = g
						break				
				
				##########################################################################
				# check if the chat from the player/admin was a "Custom command".
				test = [x for x in Custom_Commands.keys() if chat_text.startswith(x)]
				
				if test:
					commandgroup 	= Custom_Commands[test[0]][0]
					commandaction 	= Custom_Commands[test[0]][1]
					commandtime 	= Custom_Commands[test[0]][2]
					commandtext		= Custom_Commands[test[0]][3]
					
					
					# replace -N with the players BE Id
					if commandaction == "say -N":
						commandaction = "say "+str(beid)+" "
					
					##################################################################################################
					# Every command that is in group 100. should go here.
					##################################################################################################
					if commandgroup == 100:

						
						#########################################################
						# This is where we check the command and make it happen.
						#########################################################
						if test[0] == "!admin":
							todo = commandaction+commandtext
							self.bec._Bec_queuelist.append(todo)
						
						elif test[0] == "!info":
							todo = commandaction+commandtext
							self.bec._Bec_queuelist.append(todo)
							
						elif test[0] == "!greetings":
							todo = commandaction+commandtext
							self.bec._Bec_queuelist.append(todo)
						
							
					##################################################################################################
					# Command is not in group 100, "not a public command", Only admins should be allowed to execute it
					##################################################################################################
					else:
					
						# check if the player is a admin
						if self.bec.Bec_adminsconnected.has_key(name):
							
							# check if the admin is allowed to execute the command
							admininfo = self.bec.Bec_adminsconnected[name]
							admingrp = int(admininfo[2])					
					
							if admingrp <= Custom_Commands[test[0]][0]:


								#########################################################
								# This is where we check the command and make it happen.
								#########################################################
								if test[0] == "!status":
									msg = "say "+str(beid)+" I am sorry "+name+" there is no status function implemented yet"
									self.bec._Bec_queuelist.append(msg)
								
								elif test[0] == "!lol":
									msg = "say -1 No more lols in the chat please"
									self.bec._Bec_queuelist.append(msg)

								

		return extended_data						
	
	# Decorator
	@Be_PlayerChat
	def player_chat(self, data):
		self.org_func_chat(data)	

# Bec will autolook for this function. "start".
def start(x):
	MyPlugin(x)