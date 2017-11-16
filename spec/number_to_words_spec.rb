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
  it ("display only the ones and hundreds place if nothing in tens") do
    expect(number_to_words(201)).to(eq("two hundred one"))
  end
  it ("display only the ones and hundreds place if nothing in tens") do
    expect(number_to_words(22571)).to(eq("twenty two thousand five hundred seventy one"))
  end
  it ("display only the ones and hundreds place if nothing in tens") do
    expect(number_to_words(232776)).to(eq("two hundred thirty two thousand seven hundred seventy six"))
  end
  it ("display only the ones and hundreds place if nothing in tens") do
    expect(number_to_words(6894356)).to(eq("six million eight hundred ninety four thousand three hundred fifty six"))
  end
  it ("display only the ones and hundreds place if nothing in tens") do
    expect(number_to_words(12404567)).to(eq("twelve million four hundred four thousand five hundred sixty seven"))
  end
  it ("display only the ones and hundreds place if nothing in tens") do
    expect(number_to_words(548907044)).to(eq("five hundred forty eight million nine hundred seven thousand forty four"))
  end
  it ("display only the ones and hundreds place if nothing in tens") do
    expect(number_to_words(8754302212)).to(eq("eight billion seven hundred fifty four million three hundred two thousand two hundred twelve"))
  end
  it ("display only the ones and hundreds place if nothing in tens") do
    expect(number_to_words(99452879001)).to(eq("ninety nine billion four hundred fifty two million eight hundred seventy nine thousand one"))
  end
  it ("display only the ones and hundreds place if nothing in tens") do
    expect(number_to_words(123456789321)).to(eq("one hundred twenty three billion four hundred fifty six million seven hundred eighty nine thousand three hundred twenty one"))
  end
  it ("display only the ones and hundreds place if nothing in tens") do
    expect(number_to_words(9876543211123)).to(eq("nine trillion eight hundred seventy six billion five hundred forty three million two hundred eleven thousand one hundred twenty three"))
  end
end
