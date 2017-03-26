# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


list = Gumtree::List.new('s-cars-vans-utes/perth/car/k0c18320l3008303?sort=price_desc&price=__1200.00').result.map { |resource| Gumtree::Page.new(resource).result }
cars = list.map{|a|Car.factory(a)}

url = 'https://www.gumtree.com.au/s-ad/bellevue/cars-vans-utes/2006-jeep-cherokee-kj-my2006-sport-khaki-4-speed-automatic-wagon/1126093623'
page = Gumtree::Page.new('/s-ad/bellevue/cars-vans-utes/2006-jeep-cherokee-kj-my2006-sport-khaki-4-speed-automatic-wagon/1126093623')



be rails g model car url:string make:string model:string variant:string price:integer transmission:string year:integer kilometres:integer registered:boolean registration_expiry:date
Gumtree::List.new('s-cars-vans-utes/perth/car/k0c18320l3008303?sort=price_desc&price=__1200.00').result.map { |resource| Car.factory(Gumtree::Page.new(resource).result) }

cars = list.map { |resource| Gumtree::Page.new(resource).result }

list2 = Gumtree::List.new('s-cars-vans-utes/perth/car/k0c18320l3008303?price=__1200.00').result.map { |resource| Gumtree::Page.new(resource).result }
list3 = Gumtree::List.new('s-cars-vans-utes/perth/car/k0c18320l3008303?sort=price_desc&price=__1200.00').result.map { |resource| Gumtree::Page.new(resource).result }

list3.map { |a| a.slice(:price, :transmission, :year, :kilometres, :registered, :registration_expiry) }

# TODO: .paginator__page-numをつかって、ページのリストをつくってから、クローリングすることでたくさんクロールしたい。
document.css('.paginator__page-num').map { |a| a[:href] }



# price
# transmittion
# year
# killometers
# registered
# registration_expiry

# killometers_per_year

