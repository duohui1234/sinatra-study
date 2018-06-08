require 'sinatra'
require "sinatra/reloader"


get '/' do
  'Helloworld! welcome'
end


get '/htmlfile' do
   send_file 'views/htmlfile.html'
end


get '/htmltag' do
    '<h1>html태그를 보낼 수 있습니다</h1>
     ul>
     <li>1</li>
     <li>22</li>
     <li>333</li>
    </ul>'
end


get '/welcome/:name' do
    "#{params[:name]}님 안녕하세요"
end
    
    
get '/cube/:num' do
     a = params[:num].to_i
     "#{a**3}"
end
    
    
get '/erbfile' do
     @name = "dahye"
     erb :erbfile
end


get '/lunch-array' do
    #메뉴들을 배열에 저장한다
    menu = ["냉면","피자","돈까스","김밥"];
    #하나를 추천한다
    @today = menu.sample
    #erb 파일에 담아서 랜더링한다
    erb :lunchmenu
end
    
    
    
get '/lunch-hash' do
    
   menu = ["냉면","피자"]
   hash = {"냉면" => "http://pds.joins.com/news/component/htmlphoto_mmdata/201706/05/812f0c83-b11c-47a7-a385-e7d39f48e977.jpg", 
   "피자" => "https://pizzaalvolo.co.kr/resources/images/menu/list/10_03_1020.jpg"}
   
   @name = menu.sample
   @url = hash[@name] 
   
   erb  :lunchmenu
   
end


get '/randomgame/:name' do
   
    @url = "https://lh3.googleusercontent.com/qd9AeeK9I9rU0qL_y-ANSMwwkP9X9zN92yL7f1OItOQXDYO_6R6k47_421tan702eZRSH3oTltTnnxx98QIqzNjrzfVDbu-h=s640-l65"
    @name = params[:name]
    
    arr = ["유영무","정선우","한현우","백상우"]
    
    if @name == "이태우"
        @result = "안유정"
    elsif
        @result = arr.sample
    end

    erb  :random

end