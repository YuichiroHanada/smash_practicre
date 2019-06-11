require 'mechanize'

agent = Mechanize.new
page = agent.get("https://gamewith.jp/smashbros-special/")
elements = page.search(' .smbr_allchara-table a')
elements.each do |ele|
  puts ele.inner_text # inner_textメソッドでテキストを取得
  end 