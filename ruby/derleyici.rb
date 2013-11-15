#!/usr/bin/ruby
def main()
	deger= 0 
	i=0
	j=0
        boy=0
	ti=0
	tcont = Array.new
	boyut = Array.new    
	aFile = File.new("input.html", "r")
   	cont = aFile.sysread(1120)
	cont = Array.new
	for a in 0..i
		if cont[a]=='<' 
		 	 tmp = a
		   	j=0
			while cont[tmp+1] != ">" do
				tcont[ti][j]=cont[tmp+1]
				j=j+1
				tmp = tmp +1
			end
			boyut[boy]=j
			ti= ti+1
			boy=boy+1 
		end
	end

	tikontrol=ti-1
	boy2=tikontrol/2
	for kontrol in 0..boy2
		for kontrolc in 0..boyut[kontrol]
			if tcont[kontrol][kontrolc]!=tcont[tikontrol][kontrolc+1]
				deger =1
			end
		end
		tikontrol = tikontrol - 1
	end
	if deger == 0
		puts "metin hatasiz bicimlendirildi"
	if deger == 1
		puts "metin bicimlenmesinde hata var"
	end	
	end
end
main
	
