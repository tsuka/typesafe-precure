{-# OPTIONS_GHC -fno-warn-missing-signatures #-}

module ACME.PreCure.Textbook.KirakiraALaMode.Profiles where


import           ACME.PreCure.Index.Types


girls :: [Girl]
girls =
  [ Girl "Ichika Usami" "宇佐美 いちか"
  , Girl "Himari Arisugawa" "有栖川 ひまり"
  , Girl "Aoi Tategami" "立神 あおい"
  , Girl "Yukari Kotozume" "琴爪 ゆかり"
  , Girl "Akira Kenjo" "剣城 あきら"
  ]


transformeds :: [Transformed]
transformeds =
  [ Transformed "Cure Whip" "キュアホイップ" (concat introducesHerselfAs_CureWhip) ""
  , Transformed "Cure Custard" "キュアカスタード" (concat introducesHerselfAs_CureCustard) ""
  , Transformed "Cure Gelato" "キュアジェラート" (concat introducesHerselfAs_CureGelato) ""
  , Transformed "Cure Macaron" "キュアマカロン" (concat introducesHerselfAs_CureMacaron) ""
  , Transformed "Cure Chocolat" "キュアショコラ" (concat introducesHerselfAs_CureChocolat) ""
  ]


specialItems :: [SpecialItem]
specialItems =
  [ SpecialItem "Sweets Pact"      "スイーツパクト"       ["Animal Sweets"]
  , SpecialItem "Rabbit Shortcake" "うさぎショートケーキ" []
  , SpecialItem "Squirrel Pudding" "りすプリン"           []
  , SpecialItem "Lion Ice"         "らいおんアイス"       []
  , SpecialItem "Cat Macaron"      "ねこマカロン"         []
  , SpecialItem "Dog Chocolate"    "いぬチョコレート"     []
  , SpecialItem "Candy Rod"        "キャンディロッド"     []
  ]



groupName_KirakiraALaMode = "キラキラ☆プリキュアアラモード"

cureALaModeDecoration = "キュアラモード・デコレーション！"

introducesHerselfAs_CureWhip     = ["ショートケーキ！", "元気と笑顔を！", "レッツ・ラ・まぜまぜ！", "キュアホイップ！できあがり！"]
introducesHerselfAs_CureCustard  = ["プリン！", "知性と勇気を！", "レッツ・ラ・まぜまぜ！", "キュアカスタード！できあがり！"]
introducesHerselfAs_CureGelato   = ["アイス！", "自由と情熱を！", "レッツ・ラ・まぜまぜ！", "キュアジェラート！できあがり！"]
introducesHerselfAs_CureMacaron  = ["マカロン！", "美しさとトキメキを！", "レッツ・ラ・まぜまぜ！", "キュアマカロン！できあがり！"]
introducesHerselfAs_CureChocolat = ["チョコレート！", "強さと愛を！", "レッツ・ラ・まぜまぜ！", "キュアショコラ！できあがり！"]

kirakiraALaModeTransformationSpeechOf :: [[String]] -> [String]
kirakiraALaModeTransformationSpeechOf [] = error "No transforamation speech given!"
kirakiraALaModeTransformationSpeechOf al@(first:_) =
  cureALaModeDecoration : init first ++ map last al

kirakiraALaModeTransformationSpeechFeaturing :: [String] -> [String]
kirakiraALaModeTransformationSpeechFeaturing first =
  cureALaModeDecoration : init first ++ allDekiagari ++ [groupName_KirakiraALaMode ++ "！"]
  where
    allDekiagari = map last
      [ introducesHerselfAs_CureWhip
      , introducesHerselfAs_CureCustard
      , introducesHerselfAs_CureGelato
      , introducesHerselfAs_CureMacaron
      , introducesHerselfAs_CureChocolat
      ]
