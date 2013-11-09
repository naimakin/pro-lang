from stack import *

def parc(string):
	s  =Stack()
	
	balanced  =True
 	i = 0

	while i < len(string) and balenced:
		symbol = string[i]
		if symbol == "(":
			s.push(symbol)
		else:
			if s.isEmpty():
				balanced = False
			else:
				s.pop()
		i = i + 1

	if balanced and s.isEmpty():
		return True
	else :
		return False
