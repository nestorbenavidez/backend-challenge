class TextFormatter
  def self.format_text(text, limit)
    lines = []
    current_line = ""

    words = text.split(" ")

    words.each do |word|
      if current_line.length + word.length <= limit
        current_line += "#{word} "
      else
        lines << current_line.strip
        current_line = "#{word} "
      end
    end

    lines << current_line.strip
    lines.join("\n")
  end
end

# Example usage
text = "In 1991, while studying computer science at University of Helsinki, Linus Torvalds began a project that later became the Linux kernel. He wrote the program specifically for the hardware he was using and independent of an operating system because he wanted to use the functions of his new PC with an 80386 processor. Development was done on MINIX using the GNU C Compiler."

formatted_text = TextFormatter.format_text(text, 40)
puts formatted_text
