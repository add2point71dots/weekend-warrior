class Hamming
  def self.compute(str1, str2)
    raise ArgumentError.new("Can't compare strings of different lengths") if str1.length != str2.length
    count = 0

    str1.length.times do |i|
      count += 1 if str1[i] != str2[i]
    end
    return count
  end
end
