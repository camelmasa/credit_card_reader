require 'spec_helper'

describe CreditCardReader::Result do
  describe "#valid?" do
    it "returns true with valid is true" do
      result = described_class.new(brand: "brand", valid: true)

      expect(result.valid?).to be_truthy
    end

    it "returns false with valid is false" do
      result = described_class.new(brand: "brand", valid: false)

      expect(result.valid?).to be_falsey
    end
  end
end
