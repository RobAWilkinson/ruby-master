class Cipher
	    attr_reader :abc

    def encrypt(string, shift)
	    @abc = ('a'..'z').to_a.join
	    i = shift % abc.size
	    string.downcase!.gsub!(/\s+/, "")
	    string.tr(@abc, @abc[i..-1] + @abc[0...i])
    end

    def decrypt(string, shift)
	    @abc = ('a'..'z').to_a.join
	    i = shift % abc.size
	    string.tr(@abc[i..-1] + @abc[0...i], @abc)
    end

end

code = Cipher.new
code.encrypt("Test test", -5)
