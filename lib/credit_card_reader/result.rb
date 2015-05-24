module CreditCardReader
  class Result
    attr_reader :brand, :valid

    def initialize(options)
      @brand = options[:brand]
      @valid = options[:valid]
    end

    def valid?
      valid
    end
  end
end
