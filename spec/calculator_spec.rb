require "string_calculator"

describe StringCalculator do

  context "given an empty string" do
    it "returns zero" do
      expect(StringCalculator.add("")).to eq(0)
    end
  end

end