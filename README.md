# JongHelper

[![JongHelper紹介動画](https://raw.githubusercontent.com/jphacks/SD_1702/master/JongHelper.png)](https://youtu.be/1fCdh1iiX0A)

## 製品概要
### Mahjong X Tech 
 JongHelperは初心者支援麻雀ARアプリです。
自分の手牌にiPhoneをかざすだけで、上がりまでどのくらいか、次にどの牌を切れば良いかが分かります。
アプリのサポートがあれば、初心者でも気軽に麻雀が楽しめます。

### 背景（製品開発のきっかけ）
<!-- こんかいのプロダクトの開発に至った背景
- 着目した顧客・顧客の課題・現状-->
開発メンバーは5人とも同じ研究室に所属しており、研究室では麻雀がとても盛んです。

「あー麻雀がしたい！麻雀がしたい！でもメンツが揃わない！」（麻雀経験者）

「麻雀なんか難しそうだし、経験者の中に一人で入るのも・・」（麻雀初心者）

このように、研究生活の中で、麻雀をやる人やらない人の意識の差が激しいことが分かってきました。

#### JongHelperはそんな経験者と初心者をつなげます！！
ネット麻雀のようなサポートがあれば、初心者は参入しやすい! 経験者は人を集めやすい！


### 製品説明（具体的な製品の説明）
[](こちらに製品の概要・特徴について説明を記載。)

### 特長

#### 1. 自分の配牌はiPhoneカメラで認識！入力いらずの実用性重視
カメラからの画像を元に手牌の位置と牌の種類を認識。

#### 2. 捨て牌はアプリが選択。捨て牌に迷って周りから煽られる心配なし！！
手牌に応じた捨て牌候補が表示されるので、迷ったときの指針になります。

#### 3. 点計算もアプリがします。面倒な符の計算もサクッと!
点計算ができなくても安心。飜、符に応じた点数をアプリが計算します。

### 解決出来ること
[](この製品を利用することによって最終的に解決できることについて記載をしてください。)

* 初心者がつまづきやすいポイントを解消し、麻雀を始めるきっかけとなる
* 誰でも麻雀が打てるようになり、メンツを揃えるのに苦労しなくなる


### 今後の展望
[](今回は実現できなかったが、今後改善すること、どのように展開していくことが可能かについて記載をしてください。)

- 牌を画像認識する際に、現時点では綺麗に正面から撮らなければならず、鳴きやカンは想定していない。牌の位置、および姿勢の推定には大いに改善の余地がある。
- 捨て牌は推薦は自分の手牌を元に算出。経験者に勝つ程のアルゴリズムは未実装。相手の河（捨てた牌）を確認し、相手に上がられないような牌の捨て方なども考える必要あり。

## 開発内容・開発技術


#### 使用言語
* Swift, C++, Python

#### フレームワーク・ライブラリ・モジュール
* コンピュータ・ビジョン・ライブラリ「OpenCV」
* 機械学習ライブラリ「Keras」


#### デバイス
* iPhone


### 独自開発技術（Hack Dayで開発したもの）
#### 2日間に開発した独自の機能・技術
<!--* 独自で開発したものの内容をこちらに記載してください
* 特に力を入れた部分をファイルリンク、またはcommit_idを記載してください（任意）-->
* 配牌の位置認識技術
* 牌の種別を分類する学習モデルの作成
* 手牌から捨て牌の推薦を行う機能
