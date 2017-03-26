class CarsController < ApplicationController
  def index
    @cars = Car.order(:price)
               .where(transmission: 'Automatic')
               .select(&:japanese?)
               .select(&:after_1997?)
               .select(&:kilometres_per_year_over_3000?)
               .select(&:kilometres_under_25000?)
               .select(&:remaining_days_over_1?)
               .sort { |a, b| a.kilometres_per_year <=> b.kilometres_per_year }
               .uniq(&:url)
    # .select(&:price_under_1500?)
    @years = @cars.group_by(&:year).map { |k, _| k }.uniq.compact.sort
  end
end
