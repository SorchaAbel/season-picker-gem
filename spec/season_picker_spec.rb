require "spec_helper"
require 'date'

RSpec.describe SeasonPicker do

  before(:all) do
    @season_picker = SeasonPicker.new
  end

  describe '#process' do

    it 'should have two inputs' do
      expect(@season_picker.process("01/08/2017", 'Southern')).to eq('Winter')
    end

  end

  describe '#parse_date' do
    context 'input params' do

      it 'should accept a date in string format and return a number' do
        @date = Date.today
        expect(@season_picker.parse_date(@date)).to be >0
      end

      it 'should accept a date in date format and return a number' do
        @date = "01/01/2017"
        expect(@season_picker.parse_date(@date)).to be >0
      end

    end
  end
  it "has a version number" do
    expect(SeasonPicker::VERSION).not_to be nil
  end

  xit "does something useful" do
    expect(false).to eq(true)
  end
end
