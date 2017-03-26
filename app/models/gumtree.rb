module Gumtree
  class Base
    def initialize(resource)
      @resource = resource
    end

    def url
      "#{host}#{@resource}"
    end

    def host
      'https://www.gumtree.com.au/'
    end

    def response_body
      @response ||= Net::HTTP.get_response(URI.parse(url))
      @response.body
    end

    def charset
      'utf8'
    end

    def document
      @document ||= Nokogiri::HTML.parse(response_body, nil, charset)
    end

    def get_text(xpath)
      document.css(xpath)[0].try(:text).try(:strip)
    end
  end

  class List < Base
    def result
      document.css('.ad-listing__thumb-link').map { |a| a[:href] }
    end
  end

  class Page < Base
    def result
      {
        url: url,
        price: get_price,
        make: get_text('//*[@id="c-cars.carmake_s"]'),
        model: get_text('//*[@id="c-cars.carmodel_s"]'),
        variant: get_text('//*[@id="c-cars.variant_s"]'),
        transmission: get_text('//*[@id="c-cars.cartransmission_s"]'),
        year: get_text('//*[@id="c-cars.caryear_i"]').try(:to_i),
        kilometres: get_text('//*[@id="c-cars.carmileageinkms_i"]').try(:to_i),
        registered: get_text('//*[@id="c-cars.registered_s"]') == 'Yes',
        registration_expiry: get_text('//*[@id="c-cars.registrationexpiry_tdt"]').try(:to_date)
      }
    end

    def get_price
      if price = get_text('//*[@id="ad-price"]/div/span').presence
        price.split('.')[0].gsub(/\D/, '').to_i
      end
    end
  end
end
