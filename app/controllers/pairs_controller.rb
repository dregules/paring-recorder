class PairsController < ApplicationController
  def index
    @time = Time.new
    @start_date = Time.new(2015,8,31,1,00,00)
    @week_number = ((@time - @start_date)/(60*60*24*7)+1).to_i
  end
end
