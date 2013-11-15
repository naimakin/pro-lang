#!/usr/bin/ruby
class Stack
	def initialize
		@items=Array.new
	end
	def isEmpty
		@items=[]
	end
	def pop 
		@items.pop
	end

	def push(item)
		@items.push item
		self
	end

	def size
		@items.size
	end
	def peek
		@items[-1]
	end
end   
def checker(tags)
	s=Stack.new
	balanced = true
	i = 0
	while i <= tags.length-1 and balanced do
		tg = tags[i]	
		if tg=='</'
			s.push(tg)
		else
			if  s.isEmpty()
				balanced = false
			else
				top = s.pop()
				if not matches(top,tg)
					balanced = false
			end
		end
		i = i + 1
	end
	if s.isEmpty() and balanced
		return false
	else
		return true 
	end 
    end
end 
def main 
	tagsim=""
	File.open('input.html') do |f|
		f.each do |line|
			mm =line.to_s
			puts mm
			tagsi = mm.gsub(/[abcdefghiljkLmnopqrstuvwxyz]/, '')
			tagsim << tagsi.to_s
		end
	end
	puts tagsim
	puts checker(tagsim)
	
end 

main

def matches(open,close)
	open ="</"
	close = "\>"
	return open.i(open) ==close.i(close)
end
