require "season_picker/version"
require 'date'
require 'pry'

class SeasonPicker
  attr_reader :north_seasons, :south_seasons, :four_seasons


  def initialize
    @four_season = %w(Winter Spring Summer Autumn)

    @north_seasons = {
        January: @four_season[0],
        February: @four_season[0],
        March: @four_season[1],
        April: @four_season[1],
        May: @four_season[1],
        June: @four_season[2],
        July: @four_season[2],
        August: @four_season[2],
        September: @four_season[3],
        October: @four_season[3],
        November: @four_season[3],
        December: @four_season[0]
    }

    @south_seasons = {
        January: @four_season[2],
        February: @four_season[2],
        March: @four_season[3],
        April: @four_season[3],
        May: @four_season[3],
        June: @four_season[0],
        July: @four_season[0],
        August: @four_season[0],
        September: @four_season[1],
        October: @four_season[1],
        November: @four_season[1],
        December: @four_season[2]
    }

  end

  def process(date=Date.today, hemisphere=nil)

    hemisphere ||= 'Northern' if ['Northern', 'Southern'].include? hemisphere # default it to Northern
    month_num = parse_date(date)
    month_name = Date::MONTHNAMES[month_num.to_i]
    if hemisphere == 'Southern'
      @south_seasons[month_name.to_sym]
    else
      @north_seasons[month_name.to_sym]
    end

  end


  def parse_date(date)
    begin
      date = Date.parse(date) unless date.is_a? Date
    rescue ArgumentError
      date = Date.today
    end
    date.month
  end

end
