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

end