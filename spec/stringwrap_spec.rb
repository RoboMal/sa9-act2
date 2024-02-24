
require 'stringwrap'

RSpec.describe StringWrapper do
  test = StringWrapper.new("Skreeonk")

  describe "#reverse" do
    it "reverses the string" do
      expect(test.reverse). to eq "knoeerkS"
    end
  end

  describe "#upcase" do
    it "converts the string to uppercase" do
      expect(test.upcase). to eq "SKREEONK"
    end
  end

  describe "#downcase" do
    it "converts the string to lowercase" do
      expect(test.downcase). to eq "skreeonk"
    end
  end
end
