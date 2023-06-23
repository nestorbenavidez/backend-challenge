require_relative 'text_formatter'

RSpec.describe TextFormatter do
  describe '.format_text' do
    it 'breaks the text into lines with a maximum character limit' do
      text = "In 1991, while studying computer science at University of Helsinki, Linus Torvalds began a project that later became the Linux kernel. He wrote the program specifically for the hardware he was using and independent of an operating system because he wanted to use the functions of his new PC with an 80386 processor. Development was done on MINIX using the GNU C Compiler."

      expected_result = "In 1991, while studying computer\nscience at University of Helsinki,\nLinus Torvalds began a project that\nlater became the Linux kernel. He wrote\nthe program specifically for the\nhardware he was using and independent\nof an operating system because he\nwanted to use the functions of his new\nPC with an 80386 processor.\nDevelopment was done on MINIX using\nthe GNU C Compiler."

      result = TextFormatter.format_text(text, 40)

      expect(result).to eq(expected_result)
    end
  end
end
