from queue import *
def hotPatato(name,N):
	s=Queue()
	for i in name:
		s.enqueu(i)
	
	while s.size() > 1:
		for i in range(N):
			s.enQueu(s.dequeu())
		return s.dequeu()
