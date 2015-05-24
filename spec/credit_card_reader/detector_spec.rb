require 'spec_helper'

describe CreditCardReader::Detector do
  describe "#detect" do
    let(:detector) { described_class.new }

    shared_examples "a detect result" do |brand, number|
      context "with #{brand}" do
        let(:number) { number }

        it { expect(detector.detect(number)).to be_a CreditCardReader::Result }
        it { expect(detector.detect(number).brand).to eq brand }
      end
    end

    it_behaves_like 'a detect result', :american_express,   "340123456789012"
    it_behaves_like 'a detect result', :dankort,            "5019012345678901"
    it_behaves_like 'a detect result', :discover,           "6011012345678912"
    it_behaves_like 'a detect result', :diners_club,        "30001234567890"
    it_behaves_like 'a detect result', :forbrugsforeningen, "6007220123456789"
    it_behaves_like 'a detect result', :jcb,                "3528012345678901"
    it_behaves_like 'a detect result', :laser,              "6304012345670123"
    it_behaves_like 'a detect result', :maestro,            "5060123456789"
    it_behaves_like 'a detect result', :master,             "5101230123456789"
    it_behaves_like 'a detect result', :solo,               "6767012345678901"
    it_behaves_like 'a detect result', :switch,             "6759012345678901"
    it_behaves_like 'a detect result', :union_pay,          "6200123456789012"
    it_behaves_like 'a detect result', :visa,               "4012345678901"
  end
end
