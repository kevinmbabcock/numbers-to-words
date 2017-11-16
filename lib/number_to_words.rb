def number_to_words(number)
  ones = Hash.new()
  ones = {0 => "", 1 => "one", 2 => "two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine", 10=>"ten"}

  tens = Hash.new
  tens ={0 => "", 1 => "teen ", 2 => "twenty ", 3=>"thirty ", 4=>"forty ", 5=>"fifty ", 6=>"sixty ", 7=>"seventy ", 8=>"eighty ", 9=>"ninety "}

  hundreds = Hash.new
  hundreds = {0 => "", 1 => "one hundred ", 2 => "two hundred ", 3=>"three hundred ", 4=>"four hundred ", 5=>"five hundred ", 6=>"six hundred ", 7=>"seven hundred ", 8=>"eight hundred ", 9=>"nine hundred "}

  trillions_place = ones.fetch(((number%10000000000000)/1000000000000).floor)
  hundred_billions_place = hundreds.fetch(((number%1000000000000)/100000000000).floor)
  ten_billions_place = tens.fetch(((number%100000000000)/10000000000).floor)
  billions_place = ones.fetch(((number%10000000000)/1000000000).floor)
  hundred_millions_place = hundreds.fetch(((number%1000000000)/100000000).floor)
  ten_millions_place = tens.fetch(((number%100000000)/10000000).floor)
  millions_place = ones.fetch(((number%10000000)/1000000).floor)
  hundred_thousands_place = hundreds.fetch(((number%1000000)/100000).floor)
  ten_thousands_place = tens.fetch(((number%100000)/10000).floor)
  thousands_place = ones.fetch(((number%10000)/1000).floor)
  hundreds_place = hundreds.fetch(((number%1000)/100).floor)
  tens_place = tens.fetch(((number%100)/10).floor)
  ones_place = ones.fetch((number%10).floor)


  if (ten_billions_place == "teen ")
    if (billions_place == "one")
      billions_place = "eleven"
    elsif (billions_place == "two")
      billions_place = "twelve"
    elsif (billions_place == "three")
      billions_place = "thirteen"
    elsif (billions_place == "four")
        billions_place = "fourteen"
    elsif (billions_place == "five")
      billions_place = "fifteen"
    elsif (billions_place == "six")
      billions_place = "sixteen"
    elsif (billions_place == "seven")
      billions_place = "seventeen"
    elsif (billions_place == "eight")
      billions_place = "eightteen"
    elsif (billions_place == "nine")
      billions_place = "nineteen"
    end
    ten_billions_place = ""
  end

  if (ten_millions_place == "teen ")
    if (millions_place == "one")
      millions_place = "eleven"
    elsif (millions_place == "two")
      millions_place = "twelve"
    elsif (millions_place == "three")
      millions_place = "thirteen"
    elsif (millions_place == "four")
        millions_place = "fourteen"
    elsif (millions_place == "five")
      millions_place = "fifteen"
    elsif (millions_place == "six")
      millions_place = "sixteen"
    elsif (millions_place == "seven")
      millions_place = "seventeen"
    elsif (millions_place == "eight")
      millions_place = "eightteen"
    elsif (millions_place == "nine")
      millions_place = "nineteen"
    end
    ten_millions_place = ""
  end
  if (ten_thousands_place == "teen ")
    if (thousands_place == "one")
      thousands_place = "eleven"
    elsif (thousands_place == "two")
      thousands_place = "twelve"
    elsif (thousands_place == "three")
      thousands_place = "thirteen"
    elsif (thousands_place == "four")
        thousands_place = "fourteen"
    elsif (thousands_place == "five")
      thousands_place = "fifteen"
    elsif (thousands_place == "six")
      thousands_place = "sixteen"
    elsif (thousands_place == "seven")
      thousands_place = "seventeen"
    elsif (thousands_place == "eight")
      thousands_place = "eightteen"
    elsif (thousands_place == "nine")
      thousands_place = "nineteen"
    end
    ten_thousands_place = ""
  end

  if (tens_place == "teen ")
    if (ones_place == "one")
      ones_place = "eleven"
    elsif (ones_place == "two")
      ones_place = "twelve"
    elsif (ones_place == "three")
      ones_place = "thirteen"
    elsif (ones_place == "four")
        ones_place = "fourteen"
    elsif (ones_place == "five")
      ones_place = "fifteen"
    elsif (ones_place == "six")
      ones_place = "sixteen"
    elsif (ones_place == "seven")
      ones_place = "seventeen"
    elsif (ones_place == "eight")
      ones_place = "eightteen"
    elsif (ones_place == "nine")
      ones_place = "nineteen"
    end
    tens_place = ""
  end

  if (trillions_place != "")

  elsif (hundred_billions_place != "")

  elsif (ten_billions_place != "")

  elsif (billions_place != "")

  elsif (hundred_millions_place != "")

  elsif (ten_millions_place != "")

  elsif (millions_place != "")

  elsif (hundred_thousands_place != "")

  elsif (ten_thousands_place != "")
    "#{ten_thousands_place}#{thousands_place} thousand #{hundreds_place}#{tens_place}#{ones_place}"
  elsif (thousands_place != "")
    "#{thousands_place} thousand #{hundreds_place}#{tens_place}#{ones_place}"
  elsif (hundreds_place != "")
    "#{hundreds_place}#{tens_place}#{ones_place}"
  elsif (tens_place != "")
    "#{tens_place}#{ones_place}"
  else
    "#{ones_place}"
  end

end
