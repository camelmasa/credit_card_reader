module CreditCardReader
  class Detector
    CARD_BRANDS = {
      american_express:   /^3[47]\d{13}$/,
      dankort:            /^5019\d{12}$/,
      union_pay:          /^62[0-5]\d{13,16}$/,
      discover:           /^65[4-9][0-9]{13}|64[4-9][0-9]{13}|6011[0-9]{12}|(622(?:12[6-9]|1[3-9][0-9]|[2-8][0-9][0-9]|9[01][0-9]|92[0-5])[0-9]{10})$/,
      diners_club:        /^3(0[0-5]|[68]\d)\d{11}$/,
      forbrugsforeningen: /^600722\d{10}$/,
      jcb:                /^35(28|29|[3-8]\d)\d{12}$/,
      laser:              /^(6304|6706|6709|6771(?!89))\d{8}(\d{4}|\d{6,7})?$/,
      master:             /^(5[1-5]\d{4}|677189)\d{10}$/,
      solo:               /^6767\d{12}(\d{2,3})?$/,
      switch:             /^6759\d{12}(\d{2,3})?$/,
      visa:               /^4\d{12}(\d{3})?(\d{3})?$/,
      maestro:            /^(?:5[0678]\d\d|6304|6390|67\d\d)\d{8,15}$/,
    }

    def detect(number)
      Result.new(number: number, brand: detect_brand(number), valid: valid?(number))
    end

    private

    def detect_brand(number)
      CARD_BRANDS.each do |brand, pattern|
        return brand if number =~ pattern
      end

      nil
    end

    def valid?(number)
      ::Luhn.valid?(number)
    rescue Luhn::RequirementError
      false
    end
  end
end
