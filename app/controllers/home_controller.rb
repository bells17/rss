class HomeController < BaseController
  def index
    urls = ['https://www.nxsw.co.jp/feed/']    
    feeds = urls.map do |url|
      Feedjira::Feed.fetch_and_parse url
      # doc = Nokogiri::HTML.parse(html, nil, charset)
      # parseしてはじめに見つかったimgを設定 or なかったら noimage を設定
    end
    @data = { :feeds => feeds }
    p @data
    p @data[:feeds][0].entries[0].keys
  end
end
