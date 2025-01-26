require "string_calculator"

describe StringCalculator do

  context "given an empty string" do
    it "returns zero" do
      expect(StringCalculator.add("")).to eq(0)
    end
  end

  context "given a number one" do
    it "returns zero" do
      expect(StringCalculator.add("1")).to eq(1)
    end
  end

  context "given a number one and five" do
    it "returns six" do
      expect(StringCalculator.add('1, 5')).to eq(6)
    end
  end

  context "when input contains newlines between numbers" do
    it "returns their sum" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end
  end

  context "when input contains a different delimiters" do
    it "returns their sum" do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
      expect(StringCalculator.add("//;\n1;7")).to eq(8)
    end
  end

  context "when input contains negative numbers" do
    it "raises an exception" do
      expect { StringCalculator.add("1,-1") }.to raise_error("negative numbers not allowed: -1")
    end

    it "raises an exception" do
      expect { StringCalculator.add("1,-1,-2") }.to raise_error("negative numbers not allowed: -1,-2")
    end
  end

end