#!/usr/bin/ruby
arr = IO.foreach("index2.html"){|block| 
puts block[0]
puts block[3]
}
