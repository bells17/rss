class HomeController < BaseController
  def index
    urls = ['https://www.nxsw.co.jp/feed/']    
    feeds = urls.map do |url|
      Feedjira::Feed.fetch_and_parse url
    end
    @data = { :feeds => feeds }
    p @data
  end
end
