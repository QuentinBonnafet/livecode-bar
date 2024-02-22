require 'nokogiri'
require 'open-uri'
class User < ApplicationRecord
  has_many :bars, dependent: :destroy

  def get_picture
    if self.image_url.present?
      self.image_url
    else
      scrap
    end
  end

  private

  def scrap
    url = "https://github.com/#{self.github_name}"
    html = URI.open(url)
    doc = Nokogiri::HTML(html)
    result = doc.css('img.avatar')
    if result.empty?
      'https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png'
    else
      self.image_url = doc.css('img.avatar').first['src']
      self.save
      self.image_url
    end
  end
end
