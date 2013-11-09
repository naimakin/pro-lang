def gcd(m,n):
	while m%n != 0:
		oldm = m
		oldn = n

		m = oldn
		n = oldm% oldn
	return n

class Fraction:
    def __init__(self,top,buttom):
        self.num = top
        self.den = buttom

    def show(self):
        print self.num ,"/",self.den

    def __str__(self):
        return str(self.num) + "/" + str(self.den)

    def __add__(self,otherfraction):

        newnum = self.num * otherfraction.den +self.den * otherfraction.num
        newden = self.den.otherfraction.den
#	common=gcd(newnum,newden)
        return Fraction(newnum , newden)

    def __sub__(self,otherfraction):

        newnum = self.num * otherfraction.den - self.den * otherfractin.num
        newden = self.den.otherfraction.den

        return Fraction(newnum , newden)

f1 = Fraction(8,4)
f2 = Fraction(10,6)

print f1.__add__f2
