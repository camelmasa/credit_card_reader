module CreditCardReader
  class Result
    attr_reader :brand

    def initialize(options)
      @brand = options[:brand]
    end
  end
end
