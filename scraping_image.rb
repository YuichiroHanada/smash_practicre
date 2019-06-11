require 'mechanize'

agent = Mechanize.new
page = agent.get("https://gamewith.jp/smashbros-special/")
elements = page.search(' .smbr_allchara-table a img')
elements.each do |ele|
  puts ele.get_attribute('src')  # get_attributeメソッドで属性srcの値を取得
end