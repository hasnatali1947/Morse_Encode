ALPHABETS = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z'
}.freeze

def decode_char(val)
  ALPHABETS[val].upcase
end

char = decode_char('.-')
puts char

def decode_word(word)
  splitted = word.split
  words = ''
  splitted.each do |c|
    words += decode_char(c)
  end
  words
end
puts decode_word('-- -.--')

def decode(word)
  splitted = word.split('   ')
  words = ''
  splitted.each do |s|
    words += "#{decode_word(s)} "
  end
  words
end
puts decode('-- -.--   -. .- -- .')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
