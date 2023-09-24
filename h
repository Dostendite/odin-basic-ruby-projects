
[1mFrom:[0m /home/dostendite/Desktop/TOP/odin-basic-ruby-projects/sub-strings/sub_strings.rb:22 Object#substrings:

    [1;34m14[0m: [32mdef[0m [1;34msubstrings[0m(string, dictionary)
    [1;34m15[0m: 
    [1;34m16[0m:   word_hash = {}
    [1;34m17[0m: 
    [1;34m18[0m:   dictionary.each [32mdo[0m |word|
    [1;34m19[0m:     [32mif[0m word == [31m[1;31m"[0m[31mpartner[1;31m"[0m[31m[0m
    [1;34m20[0m:       binding.pry
    [1;34m21[0m: 
 => [1;34m22[0m:     [32mif[0m (word.split([31m[1;31m"[0m[31m[1;31m"[0m[31m[0m) - string.split([31m[1;31m"[0m[31m[1;31m"[0m[31m[0m)).empty?
    [1;34m23[0m:       p [31m[1;31m"[0m[31mFOUND MATCH: #{word}[0m[31m in #{string}[0m[31m[1;31m"[0m[31m[0m
    [1;34m24[0m:       [32mif[0m word_hash[word]
    [1;34m25[0m:         word_hash[word] += [1;34m1[0m
    [1;34m26[0m:       [32melse[0m
    [1;34m27[0m:         word_hash[word] = [1;34m1[0m
    [1;34m28[0m:       [32mend[0m
    [1;34m29[0m:     [32mend[0m
    [1;34m30[0m:   [32mend[0m
    [1;34m31[0m:   [32mend[0m
    [1;34m32[0m:   word_hash
    [1;34m33[0m: [32mend[0m

