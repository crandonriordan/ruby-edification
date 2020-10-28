class Substring
    def substring(sentence, dictionary)
        words = sentence.downcase.split(" ")
        hash_of_occurences = {}
        words.each do |word|
            dictionary.each do |substr|
                if word.include?(substr)
                    hash_of_occurences[substr] = hash_of_occurences
                        .fetch(substr, 0) + 1
                end
            end
        end

        return hash_of_occurences
    end
end