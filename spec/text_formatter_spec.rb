# spec/text_formatter_spec.rb
require 'spec_helper'
require 'text_formatter'

RSpec.describe TextFormatter do
  describe '.format_text' do
    it 'breaks the text into lines with a maximum character limit' do
      text = "In 1991, while studying computer science at University of Helsinki, Linus Torvalds began a project that later became the Linux kernel. He wrote the program specifically for the hardware he was using and independent of an operating system because he wanted to use the functions of his new PC with an 80386 processor. Development was done on MINIX using the GNU C Compiler."

      expected_result = "In 1991, while studying computer science\nat University of Helsinki, Linus\nTorvalds began a project that later\nbecame the Linux kernel. He wrote the\nprogram specifically for the hardware he\nwas using and independent of an\noperating system because he wanted to\nuse the functions of his new PC with an\n80386 processor. Development was done on\nMINIX using the GNU C Compiler."

      result = TextFormatter.format_text(text, 40)

      expect(result.strip).to eq(expected_result.strip)
    end
  end
end
