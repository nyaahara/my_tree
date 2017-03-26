class Car < ApplicationRecord
  def self.usually_crawl
    entry_points = %w(
      s-cars-vans-utes/perth/car/k0c18320l3008303?sort=price_desc&price=__1200.00
      s-cars-vans-utes/perth/car/k0c18320l3008303?sort=price_desc&price=1200.00__2000.00
    )
    entry_points.each do |entry_point|
      crawl(entry_point)
    end
  end

  def self.crawl(entry_point)
    resources = Gumtree::Resources.new(entry_point).result
    crawled_car_ids = Car.all.pluck(:url).map { |url| url.split('/').last }
    resources.each do |resource|
      cars = Gumtree::Resource.new(resource).result
      uncrawled_cars = cars.reject { |car| crawled_car_ids.include? car.split('/').last }
      uncrawled_cars.each { |car| factory(Gumtree::Car.new(car).result) }
    end
  end

  def self.factory(args)
    car = find_or_initialize_by(url: args[:url])
    car.assign_attributes(args)
    car.save!
    car
  end

  def price_under_1500?
    price <= 1500
  end

  def japanese?
    %w(Toyota Honda Nissan Suzuki Mitsubishi Mazda).include? make
  end

  def after_1997?
    year >= 1997
  end

  def remaining_days_over_1?
    registration_expire_remaining_days >= 1
  end

  def kilometres_per_year_over_3000?
    kilometres_per_year >= 3000
  end

  def kilometres_under_25000?
    kilometres <= 250_000
  end

  def registration_expire_remaining_days
    return 0 unless registration_expiry.present?
    return 0 if Date.today > registration_expiry
    (registration_expiry - Date.today).to_i
  end

  def kilometres_per_year
    return 0 unless kilometres.present?
    return 0 unless year.present?
    kilometres / (Time.current.year - year + 1)
  end

  def display_created_at
    created_at.strftime('%d/%m/%Y %H:%M:%S')
  end
end
