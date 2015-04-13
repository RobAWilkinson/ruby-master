class Cipher
        def encrypt (message, shift)
            alph = ('a'..'z').to_a
            arr = []
            finalarr = []
            endarr = []

            arr = message.gsub(/\s+/, "").split('')
            arr.each do |i|
                finalarr.push(alph.index(i))
            end
            finalarr.each do |x|
                endarr.push(alph[x + shift])
            end
            endmsg = endarr.join()
            return endmsg
        end
end

new = Cipher.new
new.encrypt("hello", 3)

