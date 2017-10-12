def phase_one?(str1,str2)
  dictionary = str1.chars.permutation.to_a
  dictionary.include?(str2.chars)
end

def phase_two?(str1,str2)
  str1.each_char do |chr1|
    str2.each_char do |chr2|
      p chr1
      p chr2
      if chr1 == chr2
        str1.delete!(chr1)
        str2.delete!(chr1)
      end
      p str1,str2
    end
  end
  str1.empty? && str2.empty?
end

# p anagram_4?("elvis", "lives")    #=> true


def anagram_3?(str1,str2)
  str1.chars.sort == str2.chars.sort
end

def anagram_4?(str1,str2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  str1.each_char do |el|
    hash1[el] += 1
  end

  str2.each_char do |el|
    hash2[el] += 1
  end

  hash1 == hash2
end
p anagram_4?("elvis", "lives")
