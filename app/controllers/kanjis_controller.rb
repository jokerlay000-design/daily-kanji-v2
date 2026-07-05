class KanjisController < ApplicationController
  def index
    @today_kanji = Kanji.find_by(day_number: current_day)
    @all_kanjis = Kanji.order(:day_number)
  end

  private

  def current_day
    ((Date.today - Date.new(2026, 1, 1)).to_i % Kanji.count) + 1
  end
end
