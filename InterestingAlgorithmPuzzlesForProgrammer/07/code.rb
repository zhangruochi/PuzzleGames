require "date"


date_list = (Date.parse("19641010")..Date.parse("20200724")).map {|d|  d.strftime("%Y%m%d").to_i}
p date_list.select {|d| d == d.to_s(2).reverse.to_i(2)}



