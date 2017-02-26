class Alouette

  def self.lines_for_verse(verse_num)
    @@words = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]

    lines = []
    (verse_num).downto(0) do |i|
      lines << "Et #{@@words[i]}!"
    end

    return lines
  end

  def self.verse(verse_num)
    lines = Alouette.lines_for_verse(verse_num)

    verse = ""
    2.times { verse += "Je te plumerai #{@@words[verse_num]}.\n"}
    lines.each { |line| 2.times { verse += "#{line}\n" } }
    2.times { verse += "Alouette!\n" }
    verse += "A-a-a-ah"

    return verse
  end

  def self.sing
    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."

    song = ""
    8.times do |i|
      song += "#{refrain}\n\n"
      song += Alouette.verse(i) + "\n\n"
    end
    song += "#{refrain}"

    return song
  end
end
