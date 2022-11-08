class Book < ApplicationRecord
  belongs_to :course
  after_create  :reading_time

  def reading_time 
    text = Nokogiri::HTML(self.content).at('body').inner_text
    self.read_time = (text.scan(/\w+/).length / 150).to_i
  end
end
