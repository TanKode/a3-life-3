# Template example on howto create custom commands.

import sys
import os

# Important this needs to point to the correct directory
sys.path.append(os.getcwd()+"\\Plugins\\CustomCmd_Simple")


# Make sure no other commands uses this name
TriggerWord = "!admin"

class MyPlugin(object):

	def __init__(self, instance):
		''' constructor '''
		self.bec = instance

		# Copy and extend , "monkey patching" of chat handler in bec.
		self.org_func_chat	= self.bec._be_chat
		self.bec._be_chat	= self.player_chat

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
				
				######################################################################
				if chat_text.startswith(TriggerWord): # and len(chat_text) == len(TriggerWord)
					msg = "say "+str(beid)+" Visit our TeamSpeak for Admin support"
					self.bec._Bec_queuelist.append(msg)

								

		return extended_data						
	
	# Decorator
	@Be_PlayerChat
	def player_chat(self, data):
		self.org_func_chat(data)	

# Bec will autolook for this function. "start".
def start(x):
	MyPlugin(x)