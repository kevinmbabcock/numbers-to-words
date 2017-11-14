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
    expect(number_to_words(99)).to(eq("ninety-nine"))
  end
  it("display eleven for 11") do
    expect(number_to_words(15)).to(eq("fifteen"))
  end

end
