#!/usr/bin/ruby

class CaesarCipher
  def initialize(shift)
    @shift = shift
  end

  def encrypt(message)
    cipher(message, @shift)
  end

  def decrypt(message)
    cipher(message, -@shift)
  end

  def cipher(message, shift)
    message.split("").each do |char|
      encrypted_message = ""
      base = char =~ /[a-z]/ ? 'a'.ord : 'A'.ord
      encrypted_char = ((char.ord + base + @shift) % 26 + base).chr
      encrypted_message += encrypted_char
      return encrypted_message
    end
  end
end
