![newiphonemockup](https://github.com/Ryocchi-Muscle/fitapp-api/assets/140929302/bb068a5d-ae34-4b55-8644-4bcdb8619955)


## ■ サービス名
<h1><a href="https://www.befitvercel.com/">Be Fit</a></h1>

## ■ サービス概要


筋トレ初心者向けのサポートアプリです。
<br>
具体的には、<br>
 * ユーザーの性別、トレーンング頻度にあったトレーニングプログラムを作成できる
 * 週ごとのトレーニングの成長を棒グラフで確認することができる
 * メニューの解説機能を使用して、正しいフォームを学ぶことができる

## ■ このサービスを作成した理由
#### ・背景：多くの人にフィットネスの楽しさを伝えたい
筋トレを通じて、**自己肯定感が高まりました。** その経験から、<br>
多くの人にフィットネスの楽しさを伝えたいと考えています。<br>
しかし、トレーニング初心者はジムでの知識が不足しており、何をすれば良いのかわからないことが多いです。<br>
そこで、私の知識と経験を活かし、初心者が効率的なトレーニングを行い、身体の変化を実感できるサービスを提供したいと思い、このサービスを開発しました。

## ■ ユーザー層について

対象者：筋トレ初心者

## ■ サービスの利用イメージ
1.性別、1週間のトレーニング頻度、プログラム期間を選択します。<br>
2.1.の選択内容によって、オリジナルのトレーニングプログラムメニューが作成されます。<br>
3.作成されたプログラムのメニューのセットの重量と回数を記録します。<br>
4.週ごとの総重量が記録されるため、週ごとのトレーニング強度の進捗を確認することができます。<br>

## ■ メイン機能の使い方

<div style="display: flex; justify-content: space-around;">

  <div style="width: 30%; margin-bottom: 20px; text-align: center;">
    <h3>トレーニングプログラム作成</h3>
    <img src="assets/プログラム機能.gif" alt="トレーニングプログラム作成" style="width: 100%;">
    <p>まずは、プログラム作成ボタンを押して、各旅行情報を記入後に作成ボタンを押す。</p>
  </div>

  <div style="text-align: center; width: 30%;">
    <h3>トレーニングプログラム作成</h3>
    <img src="assets/画面収録 2024-07-07 13.29.40.gif" alt="トレーニングプログラム作成" style="width: 100%;">
    <p>まずは、プログラム作成ボタンを押して、各旅行情報を記入後に作成ボタンを押す。</p>
  </div>

  <div style="text-align: center; width: 30%;">
    <h3>トレーニングプログラム作成</h3>
    <img src="assets/画面収録 2024-07-07 13.29.40.gif" alt="トレーニングプログラム作成" style="width: 100%;">
    <p>まずは、プログラム作成ボタンを押して、各旅行情報を記入後に作成ボタンを押す。</p>
  </div>

</div>


## ■ サービスの差別化ポイント

**① プログラム内容のシンプルさ。**<br>
他の筋トレアプリにあるような多数のメニューを提示することなく、<br>
筋トレ歴5年の私の経験と知識をもとに、「初心者が効率的に身体の変化を感じられるためのプログラム」を
念頭に自作でプログラムメニューを作成しました。<br>
<br>
**②モチベーションの向上維持。**<br>
週ごとのトレーニング強度（重量 × 回数 = 総重量）を記録し、棒グラフで表示します。これにより、前週よりも強度が上がったか下がったかを可視化し、ユーザーのモチベーションを向上・維持することを狙っています。<br>
<br>
**③動画付きトレーニング解説機能**<br>
トレーニングを行う上で、トレーニンフォーム、対象筋肉を理解してトレーニングを行うことが大切です。<br>
そのため、メニューの対象筋肉を図解表示し、おすすめのYouTube動画も掲載しています。<br>

## ■ 機能一覧<br>
**機能**<br>
・Googleアカウントを利用したユーザー登録 / ログイン機能<br>
・プログラムの取得 / 作成 / 削除機能<br>
・トレーニングメニューの取得 / 作成 / 更新 / 削除機能<br>
・トレーニング記録の表示機能<br>
・カレンダー機能<br>
・トレーニング解説ページ表示機能<br>
<br>

**画面**<br>
・トースト表示<br>
・ローディング画面<br>
・モーダル画面<br>
・ダイアログ画面<br>
・レスポンシブデザイン<br>

## ■ 使用技術

| カテゴリ       | 技術                                                                                  |
| -------------- | ------------------------------------------------------------------------------------- |
| フロントエンド | TypeScript 5.3.3 / React 18.2 / Next.js 14.2.3                                   |
| バックエンド   | Ruby 3.2.2 / Ruby on Rails 7.0.8 （APIモード）                                         |
| データベース   | MySQL                                                                            |
| 認証           | NextAuth.js                                                                           |
| CI/CD           | GitHubActions                                                                           |
| インフラ       | Vercel / Heroku                                                                       |                       |
| その他         | SWR / shadcn/ui / Radix UI/ GoogleAnalitycs / tailwind CSS


## ■ 画面遷移図<br>

Figma：https://www.figma.com/file/nGPYGIh8IXzliZafhJxrzf/PF-3%2F9?type=design&node-id=0%3A1&mode=design&t=vkvG9u5hJ7tX2RlN-1<br>

## ■ ER図<br>
https://drive.google.com/file/d/1Ee7QTfIJnDDzuYfnZJH_fcJclKbBpP2r/view?usp=sharing<br>
