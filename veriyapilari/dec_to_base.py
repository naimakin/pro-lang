from stack import *

def turn(dec,base):
        
	digits = "0123456789ABCDEF"
	
	s=Stack()

	while dec > 0 : 
		rem  = dec % base
		s.push(rem)
		dec = dec / base
		
	new = ""
	while not s.isEmpty():
		new = new + digits[s.pop()]

	return new

print turn(46,3)
