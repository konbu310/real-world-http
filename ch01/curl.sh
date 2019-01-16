# curlコマンドによるHTTPリクエスト
curl --http1.0 http://localhost:18888/greeting

# URLに検索キーワードを付与してリクエストを送信する
curl --http1.0 --get --data-urlencode "search word" http://localhost:18888

# より詳細な情報を表示する
curl -v --http1.0 http://localhost:18888

# headerを送信する
curl --http1.0 -H "X-Test: Hello" http://localhost:18888

# User-Agentを偽装する
curl -v --http1.0 -A "Moxilla/5.0 (compatible; MSIE 10.0; Windows NT 6.1; Trident/6.0" http://localhost:18888

# メソッドの送信
curl --http1.0 -X POST http://localhost:18888

# リダイレクトがあった場合続けてリクエストを送信する
curl -L http://localhost:18888

# JSONを送信する
curl -d "{\"hello\": \"world\"}" -H "Content-Type: application/json" http://localhost:18888

# ファイルを読み込んでその内容を送信する
curl -d @test.json -H "Content-Type: application/json" http://localhost:18888

# 強制的にメソッドを変更しボディを送信する（非推奨）
curl -X GET --data "hello=world" http://localhost:18888