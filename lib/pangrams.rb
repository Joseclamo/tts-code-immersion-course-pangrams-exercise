
def is_pangram?(sentence)

    sentence = sentence.downcase
    sentence_clean = sentence.gsub(/[áéíóú]/, 'á' => 'a', 'é' => 'e', 'í' => 'i', 'ó' => 'o', 'ú' => 'u')
    abc = "qwertyuioplkjhgfdsazxcvbnm"

    result = true
    abc.each_char do |letter|
        unless sentence_clean.include? letter
            result = false
        end
    end
    return result
end
