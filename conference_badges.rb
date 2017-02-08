# Write your code here.
require 'pry'

attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def badge_maker (name)
  "Hello, my name is #{name}."
end

def batch_badge_creator (attendees)
  attendees.map do |name|
    "Hello, my name is #{name}."
  end
end

def assign_rooms (attendees)
  room_array = []
  room_assignments = 1
  attendees.map do |name|
    room_array << "Hello, #{name}! You'll be assigned to room #{room_assignments}!"
    room_assignments += 1
  end
  room_array
end

def printer (attendees)
  badges_array = batch_badge_creator (attendees)
  rooms_array = assign_rooms (attendees)
  badges_array.each do |badge|
    puts badge
  end
  rooms_array.each do |rooms|
    puts rooms
  end
end
