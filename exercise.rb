# divisible by 2, value should be key +1
# divisible by 7, value should be key -1
# divisible by 2 and 7, value should be key * 2
# otherwise value is same as key

number_hash = {}

def divisible_by_2?(number)
  number % 2 == 0
end

def divisible_by_7?(number)
  number % 7 == 0
end

(1..50).each do |num|
  if divisible_by_2?(num) && divisible_by_7?(num)
    number_hash[num] = num * 2
  elsif divisible_by_2?(num)
    number_hash[num] = num + 1
  elsif divisible_by_7?(num)
    number_hash[num] = num - 1
  elsif
    number_hash[num] = num
  end
end

puts number_hash
