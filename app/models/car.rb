class Car < ApplicationRecord
  def self.factory(args)
    car = find_or_initialize_by(url: args[:url])
    car.assign_attributes(args)
    car.save!
    car
  end

  def kilometres_per_year
    return nil unless kilometres.present?
    return nil unless year.present?
    kilometres / (Time.current.year - year + 1)
  end
end
