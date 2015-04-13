class Cipher
	def self.encrypt(word, num)

		new = [];
		array = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
		

		word.split(' ').join('').split('').each do |letter|
	    i = array.index(letter)
	    if num > 0
	    	n = i + num%26
    	else
    		n = i - num%26
	    end
	    
	    new << array[n]
		end

		puts new.join('')
	end
end
