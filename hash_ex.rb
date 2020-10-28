family = {  uncles: ["bob", "joe", "steve"],
    sisters: ["jane", "jill", "beth"],
    brothers: ["frank","rob","david"],
    aunts: ["mary","sally","susan"]
}

immediate_family = family.select { |k, v| k == :sisters || k == :brothers }

puts immediate_family

family.keys.each { 
    |key| puts key 
}
puts '--------------'
family.values.each {
    |value| puts value
}
puts '--------------'
family.each {
    |key, value|
    puts "(#{key} => #{value})"
}

def has_value(hash, value)
    if hash.is_a?(Hash)
        hash.each do |key, val|
            if value.eql?(val)
                return true
            end
        end
    else
        puts "not a hash"
        return false
    end

    return false;
end

puts '--------------'

family[:me] = "me"

puts "Does family have me? " + has_value(family, "me").to_s



