class Scraping
  def self.get_character
    agent = Mechanize.new
    page = agent.get("https://gamewith.jp/smashbros-special/")
    names = page.search('.smbr_allchara-table a')
    urls = page.search('.smbr_allchara-table a img')
    names.zip(urls).each do  |ele1, ele2| 
        name = ele1.inner_text
        image_url = ele2.get_attribute('src')
        character = Character.new(name: name, image_url: image_url)
        character.save
    end 
  end
end

