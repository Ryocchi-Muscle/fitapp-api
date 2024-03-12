## ■サービス概要
「ジムに行っても、何をしていいかわからない〜」<br>
「とりあえず、ランニングマシンしとこ〜」<br>
そんな筋トレ初心者をサポートするアプリです！<br>


## ■ このサービスへの思い・作りたい理由
#### ・背景：多くの人にフィットネスの楽しさを伝えたい。

私は現在筋トレを始めて４年目になりますが、トレーニングを始めるまで自信が全くなく、消極的な性格でした。<br>
しかし、トレーニングを始めてから自信がつき、自尊心を持つことができるようになりました。<br>
大学時代に専攻していた「臨床心理学」と「筋トレ」を絡めたテーマに研究を行い、その結果、運動は身体だけでなく、
心の健康維持に大きな影響を与えていることがわかりました。この体験を多くの人に知ってほいしと、まずは友人に筋トレを勧めました。<br>
しかし、「どのようなトレーニングが自分に合っているのか分からない。どんな食事が良いのか分からない。」等、トレーニング初心者が抱えている問題があると感じました。<br>
また現在、トレーニングと食事管理が両立しているアプリは少ないため、トレーニングと食事の両方のサポートがあり、
正しく努力することで最短で結果を出すサポートができるこのアプリを作成しようと思いました。<br>


## ■ ユーザー層について
#### 対象者：筋トレ初心者（男女）

## ■サービスの利用イメージ
全くの筋トレ初心者でもジムに行き、なりたい体型になるためのトレーニングを知り、実践することができるようになります。<br>

## ■ ユーザーの獲得について
友人に試用してもらったり、<br>
Twitterやmattermost、Qitta等で宣伝し、ユーザー獲得を行う予定。<br>


## ■ サービスの差別化ポイント・推しポイント
ほかアプリとの差別化ポイント<br>
①食事とトレーニングを両方サポートしている。<br>
②トレーニング解説が記載されている。<br>
③YouTube動画を用いることによって、動画から正しいフォームを習得し、実践できる。<br>

## ■ 機能候補
機能選定 MVP<br>
基本機能（第１段階）<br>
・ログイン/ログアウト機能<br>
・メールアドレスとパスワードを利用したユーザー登録<br>
(・外部APIを利用したユーザー登録 / ログイン機能/ログアウト機能)<br>
・ユーザー情報変更機能<br>

- ゲストログイン機能/ログアウト機能
・退会機能
・パスワード再設定機能
・トレーニング記録機能
　└選択項目
　・部位
　・xxx kg x y sets


第２段階
・部位別、トレーニングメニュー解説ページ表示機能
　・胸
　・背中
　・肩
　・腕
　・脚

・1日のトータルボリューム計算&表示機能
・動画検索機（マルチ検索）
自分のトレーニングしたい部位の動画をYouTubeからひっぱてくる。

・ブックマーク機能
　お気に入りの動画をブックマークし、ジムで見返しながら、正しいフォームを身につける

・コース選択
　・体重入力
　・トレーニングの目的
　　・減量（体重を減らす）
　　・体重を維持する
　　・増量（体重を増やす）
　・トレーニングの経験
　　・未経験　
　　・中級者
　　・上級者
　・１週間あたりのトレーニングの頻度
　　・週2回〜週5回

　・基礎代謝
　　・低い（生活の大部分が座位、静的な生活が中心）
　　・普通（座位の生活だが、通勤、買い物など、軽い運動は行っている）
　　・高い（移動や立ち位中心の仕事を行っている）
　・おすすめプランの提示　
　　・期間12週間
　　・カウントダウン
　　・その日行うトレーニングメニュー


・部位別動画レコメンド機能（YouTubeAPI）
　(胸・背中・肩・腕・脚・腹)
※レコメンド機能については、個人的に余計かなと感じる面もあり、検討中です。

・アニメーション機能
　ex)ある程度の継続ができれば、アニメーション等でユーザーを褒める機能
→　褒めることでユーザーの離脱を防ぎ、トレーニング継続を促す効果

食事系
・1日に必要なカロリー自動計算機能
・食事記録機能
　・食べたもの（食品）
※外部APIから情報を取得
　・食べた時間ごとに入力
　　・朝・昼・夜・間食

　　・カロリー（自動計算）　　
　　・PFC（タンパク質、炭水化物、脂質）を入力する（自動計算）
・筋トレにいい食材紹介ページ表示機能
・食品レコメンド機能
　・1日の目標カロリーを計算し、目標と実際のカロリー収支を比較
（できれば、マイナスの場合、追加でとると良い食材を提案する機能を実装）


高度な機能、本リリースまでに実装したい機能について現時点では、未検討です。
基本機能を実装と工数を見ながら検討予定です。


■ 機能の実装方針予定
一般的なCRUD以外の実装予定の機能についてそれぞれどのようなイメージ(使用するAPIや)で実装する予定なのか現状考えているもので良いので教えて下さい。

・YouTubeAPI
・chatGPT API
ほかは、検討中です。
