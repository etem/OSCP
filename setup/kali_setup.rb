#!/usr/bin/env ruby

=begin
	This script was created to setup a fresh Kali Linux installation to support the author in the OSCP course and exam
=end


def help()
	puts "Engaging Help Mode..."
	puts ""
	puts "This script will automate as much of the setup as possible..."
	puts "This script will also create a 'manual_configurations' file in the new user's directory"
	puts "The 'manual_configurations' file will list further actions for the user"
	puts ""
	puts "Help Mode executed successfully..."
	puts "Exiting Help Mode..."
	puts ""
	exit(0)
end


def user_management()
	puts "Entering User Management Mode..."
	puts ""
	puts "	Subprocess: Creating new user 'zak'..."
		`adduser zak`
	puts "	Subprocess: Adding user to sudoers group..."
		`usermod -a -G sudo zak`
	puts "	Subprocess: Changing root password..."
		`passwd root`
	puts "	Subprocess: Disabling root account..."
		`passwd -l root`
	puts "User Management Mode executed successfully..."
	puts "Exiting User Management Mode..."
	puts ""
end


def scripts()
	puts "Entering Scripting Mode..."
	puts ""
	puts 
end


def aliases()
	puts "Entering Alias Configuration Mode..."
	puts ""
	puts "	Subprocess: Generating '.bash_aliases'..."
		`cat documents/bash_aliases > /home/zak/.bash_aliases`
		`cat documents/bash_aliases > /root/.bash_aliases`
	puts "		'.bash_aliases' generated successfully..."
	puts "	Subprocess: Generating '.bashrc'..."
		`cat documents/bashrc > /home/zak/.bashrc`
		`cat documents/bashrc > /root/.bashrc`
	puts "		'.bashrc' generated successfully..."
	puts "Alias Configuration Mode executed successfully..."
	puts "Exiting Alias Configuration Mode..."
	puts ""
end


def manual_configurations()
	puts "Entering Manual Configuration Mode..."
	puts ""
	puts "	Subprocess: Generating 'manual_configurations'..."
		`mv documents/manual_configurations /home/zak/`
	puts "		'manual_configurations' generated successfully..."
	puts "Manual Configuration Mode executed successfully..."
	puts "Exiting Manual Configuration Mode..."
	puts ""
end

