class Cipher
    def caesar_cipher(str, num_to_shift)
        # 97.chr turns int into char value
        # 97-122 is range of lowercase
        # 65-90 is range of uppercase
        new_str = ""
        str.each_char do |c|
            char_code = c.ord
            if char_code >= 97 && char_code <= 122
                # case of lower case
                num_to_shift.times do
                    if(char_code == 122)
                        char_code =  97
                    else
                        char_code += 1
                    end
                end
            elsif char_code >= 65 && char_code <= 90
                # case of upper case
                num_to_shift.times do
                    if(char_code == 90)
                        char_code = 65
                    else
                        char_code += 1
                    end
                end
            end
    
            # convert the int char_code to a character and add to string
            new_str += char_code.chr
        end
    
        return new_str
    end    
end


puts Cipher.new.caesar_cipher("a", 2)