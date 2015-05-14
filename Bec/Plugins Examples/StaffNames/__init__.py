# -*- encoding: utf-8 -*-
#============================================================
__version__ 		= "0.1"
__license__ 		= "Custom"
__copyright__ 		= "Copyright 2014, Stian Mikalsen"
__author__ 			= "Stian Mikalsen"
__description__ 	= 'Staff Name plugin for Bec'
__author_email__	= "Stianmikalsen@hotmail.com"
__maintainer__ 		= "You and yourself. ;)"
#============================================================
import os
import sys
sys.path.append(os.getcwd()+"\\Plugins\\\StaffNames")
import Staff_Settings

SERVERS=[]
STAFFINFO= Staff_Settings.STAFF

class StaffNames(object):

	def __init__(self, instance):
		self.bec = instance
		self.org_func_unverified	= self.bec._be_unverified	
		self.bec._be_unverified 	= self.unverified

	def Be_PlayerUnverified(func):
		def extended_data(*args, **kwargs):
			try:
				return func(*args, **kwargs)
			finally:
				udata = args[1].groups()
				beid = udata[0]
				nick = udata[1]
				guid = udata[2]
				for key in STAFFINFO.keys():
					
					### ### ### ### ### ###
					## Important!!!. 
					## Use this if you want to match names exactly, and comment out the other if line below using # as a comment.
					### ### ### ### ### ###

					#############
					# Exact match, 
					# Will kick a player who uses a name reserved for an admin.s
					
					#if guid != key and STAFFINFO[key] == nick:
					#	cmd = "kick "+str(beid)+ "BEC : Impersonating staff is not allowed"
					#	args[0].bec._Bec_queuelist.append(cmd)
					
					#############
					# Names only contain the name. 
					# Ie. your admin is named, peter, and if someone joins with peter01 etc, they get auto kicked.
					if guid != key and STAFFINFO[key] in nick:
						cmd = "kick "+str(beid)+ "BEC : Impersonating staff is not allowed"
						args[0].bec._Bec_queuelist.append(cmd)
						
				
		return extended_data
	
	@Be_PlayerUnverified
	def unverified(self,data):
		self.org_func_unverified(data)		
		
def start(x):
	staffnames=StaffNames(x)
	