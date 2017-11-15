require('pry')
require('rspec')
require('number_to_words')

describe('number_to_words') do
  it("write nothing if number is 0") do
    expect(number_to_words(0)).to(eq(""))
  end
  it("display the correct number from the ones place") do
    expect(number_to_words(1)).to(eq("one"))
  end
  it("display the correct number from the tens place") do
    expect(number_to_words(99)).to(eq("ninety nine"))
  end
  it("display eleven for 11") do
    expect(number_to_words(11)).to(eq("eleven"))
  end
  it ("display the correct number from the hundreds place") do
    expect(number_to_words(124)).to(eq("one hundred twenty four"))
  end
  it ("display the correct number from the thousands place") do
    expect(number_to_words(6568)).to(eq("six thousand five hundred sixty eight"))
  end
  it ("display only the ones and thousands place if nothing in tens and hundreds") do
    expect(number_to_words(2001)).to(eq("two thousand one"))
  end
end
