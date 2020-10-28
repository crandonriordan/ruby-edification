friends = ["bob", "jen", "crandon", "alex"]

puts friends.select { |friend| friend.length >= 4 }

friends = friends.map{ |friend| friend.upcase }

puts friends