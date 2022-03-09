def decode_char(str)
  @morse_char = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }
  @morse_char[str]
end

def decode_word(str)
  morse = str.split
  word = morse.map { |c| decode_char(c) }
  word.join
end

def decode_sentence(str)
  morse = str.split('  ')
  sentence = morse.map { |w| decode_word(w) }
  sentence.join(' ')
end
decode_word('.-')
decode_word('-- -.--')
decode_sentence('-- -.--   -. .- -- .')
decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')

