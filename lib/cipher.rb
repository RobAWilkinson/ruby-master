class Cipher
	    attr_reader :abc

    def encrypt(string, shift)
	    @abc = ('a'..'z').to_a.join
	    i = shift % abc.size
	    string = string.downcase
	    string.delete!(' ')
	    string.tr!(@abc, @abc[i..-1] + @abc[0...i])
    end
    
end

code = Cipher.new
code.encrypt("sdffdSDAFd sadsf", 1)
