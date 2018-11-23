#date format: "2018-08-09" "year-month-day"
concerts = [
  ["Russian Inspiration", "Alice Tully Hall", "2018-10-16"],
  ["Quartet Variations", "Alice Tully Hall", "2018-10-21"],
  ["The Kreutzer Connection", "Alice Tully Hall", "2018-10-28"],
  ["The Art of the Quintet", "Alice Tully Hall", "2018-11-02"],
  ["The Trout Quintet", "Alice Tully Hall", "2018-11-13"],
  ["Death and the Maiden", "Alice Tully Hall", "2018-11-18"],
  ["Windstorm", "Alice Tully Hall", "2018-11-30"],
  ["Baroque Collection", "Alice Tully Hall", "2018-12-09"],
  ["Brandenburg Concertos", "Alice Tully Hall", "2018-12-14"]
]

attendees = [
  "Skylar Huffman",
  "Taylor Mohamed",
  "Angelica Nicholson",
  "Rylan Cisneros",
  "Terence Haas",
  "Rico Weber",
  "Raymond Delarosa",
  "Maddie Mcculloch",
  "Lacey Browning",
  "Caiden Baird",
  "Paisley Brennan",
  "Klara Wyatt"
]

puts "Generating Concerts..."
concerts.each do |title, location, date|
  Concert.create(title: title, location: location, date: date)
end

puts "Generating Attendees..."
attendees.each do |name|
  Attendee.create(name: name)
end

puts "Generating Seats for each Concert..."
Concert.all.each do |concert|
  number = 101
  50.times do
    Seat.create(number: number, concert: concert)
    number += 1
  end
end

puts "Selling 300 Seats..."
300.times do
  seat = Seat.all.sample
  attendee = Attendee.all.sample
  seat.attendee = attendee
  seat.save
end

puts "Complete!"
