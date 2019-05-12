#!/usr/bin/ruby
# encoding: utf-8

module Asciify
    # FIXME: Türkçeye özel, ama modül ismi (Ascii) genel
    CHARS = Hash[*%w(
      ı i
      ğ g
      ü u
      ş s
      ö o
      ç c
      İ I
      Ğ G
      Ü U
      Ş S
      Ö O
      Ç C
    )]
    RE = Regexp.new '[' + CHARS.keys.join + ']'
  
    def self.turkish(text)
      text.gsub(RE) { |c| CHARS[c] }
    end
end

# FIXME: Dizgi üzerinden çağrılsa?  "ŞĞÜÖÇöçğüıİ".ascii gibi
puts Asciify.turkish('ŞĞÜÖÇöçğüıİ')
