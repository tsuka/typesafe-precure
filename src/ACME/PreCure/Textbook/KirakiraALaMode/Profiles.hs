{-# OPTIONS_GHC -fno-warn-missing-signatures #-}
{-# LANGUAGE OverloadedStrings #-}

module ACME.PreCure.Textbook.KirakiraALaMode.Profiles where

import           Data.String (IsString)

import           ACME.PreCure.Index.Types


girlsKirakiraALaMode :: [Girl]
girlsKirakiraALaMode =
  [ mkGirl "Ichika Usami" "宇佐美 いちか"
  , mkGirl "Himari Arisugawa" "有栖川 ひまり"
  , mkGirl "Aoi Tategami" "立神 あおい"
  , mkGirl "Yukari Kotozume" "琴爪 ゆかり"
  , mkGirl "Akira Kenjo" "剣城 あきら"
  , mkGirl "Ciel Kirahoshi" "キラ星 シエル" -- TODO: Synonym for Kirarin
  , mkGirl "Pekorin" "ペコリン"
  ]


transformeesKirakiraALaMode :: [Transformee]
transformeesKirakiraALaMode =
  [ mkTransformee "Cure Whip" "" "キュアホイップ" "" (concat introducesHerselfAs_CureWhip)
  , mkTransformee "Cure Custard" "" "キュアカスタード" "" (concat introducesHerselfAs_CureCustard)
  , mkTransformee "Cure Gelato" "" "キュアジェラート" "" (concat introducesHerselfAs_CureGelato)
  , mkTransformee "Cure Macaron" "" "キュアマカロン" "" (concat introducesHerselfAs_CureMacaron)
  , mkTransformee "Cure Chocolat" "" "キュアショコラ" "" (concat introducesHerselfAs_CureChocolat)
  , mkTransformee "Cure Parfait" "" "キュアパルフェ" "" (concat introducesHerselfAs_CureParfait)
  , mkTransformee "Cure Pekorin" "" "キュアペコリン" "" (concat introducesHerselfAs_CurePekorin)

  , mkTransformee "Cure Whip" aLaModeStyleEn "キュアホイップ" aLaModeStyle (concat introducesHerselfAs_CureWhip)
  , mkTransformee "Cure Custard" aLaModeStyleEn "キュアカスタード" aLaModeStyle (concat introducesHerselfAs_CureCustard)
  , mkTransformee "Cure Gelato" aLaModeStyleEn "キュアジェラート" aLaModeStyle (concat introducesHerselfAs_CureGelato)
  , mkTransformee "Cure Macaron" aLaModeStyleEn "キュアマカロン" aLaModeStyle (concat introducesHerselfAs_CureMacaron)
  , mkTransformee "Cure Chocolat" aLaModeStyleEn "キュアショコラ" aLaModeStyle (concat introducesHerselfAs_CureChocolat)
  , mkTransformee "Cure Parfait" aLaModeStyleEn "キュアパルフェ" aLaModeStyle (concat introducesHerselfAs_CureParfait)
  ]


transformedGroupsKirakiraALaMode :: [TransformedGroup]
transformedGroupsKirakiraALaMode =
  [ mkTransformedGroup groupMembers_KirakiraALaMode ne "" nj ""
  , mkTransformedGroup groupMembers_KirakiraALaMode_ALaModeStyle ne aLaModeStyleEn nj aLaModeStyle
  ]
  where
    ne = "Kirakira ☆ PreCure A La Mode"
    nj = "キラキラ☆プリキュアアラモード"


aLaModeStyle :: String
aLaModeStyle = "アラモードスタイル"

aLaModeStyleEn :: String
aLaModeStyleEn = "A La Mode Style"


specialItemsKirakiraALaMode :: [SpecialItem]
specialItemsKirakiraALaMode =
  [ mkSpecialItem "Sweets Pact"        "スイーツパクト"       ["Animal Sweets"]
  , mkSpecialItem "Rabbit Shortcake"   "うさぎショートケーキ" []
  , mkSpecialItem "Squirrel Pudding"   "りすプリン"           []
  , mkSpecialItem "Lion Ice"           "らいおんアイス"       []
  , mkSpecialItem "Cat Macaron"        "ねこマカロン"         []
  , mkSpecialItem "Dog Chocolate"      "いぬチョコレート"     []
  , mkSpecialItem "Pegasus Parfait"    "ペガサスパフェ"       []
  , mkSpecialItem "Pekorin Donut"      "ペコリンドーナツ"     []
  , mkSpecialItem "Candy Rod"          "キャンディロッド"     []
  , mkSpecialItem "Rainbow Ribbon"     "レインボーリボン"     []
  , mkSpecialItem "Kirakiraru Creamer" "キラキラルクリーマー" ["Crystal Animal"]
  , mkSpecialItem "Crystal Animal Rabbit"   "クリスタルアニマルうさぎ"   []
  , mkSpecialItem "Crystal Animal Squirrel" "クリスタルアニマルりす"     []
  , mkSpecialItem "Crystal Animal Lion"     "クリスタルアニマルらいおん" []
  , mkSpecialItem "Crystal Animal Cat"      "クリスタルアニマルねこ"     []
  , mkSpecialItem "Crystal Animal Dog"      "クリスタルアニマルいぬ"     []
  , mkSpecialItem "Crystal Animal Pegasus"  "クリスタルアニマルペガサス" []
  , mkSpecialItem "SweetsCastle" "スイーツキャッスル" []
  ]


transformationsKirakiraALaMode :: [Transformation]
transformationsKirakiraALaMode =
      [ mkTransformation ["Ichika"]  [mkIA "SweetsPact" ["RabbitShortcake"]] ["CureWhip"]     (cureALaModeDecoration : introducesHerselfAs_CureWhip)
      , mkTransformation ["Himari"]  [mkIA "SweetsPact" ["SquirrelPudding"]] ["CureCustard"]  (cureALaModeDecoration : introducesHerselfAs_CureCustard)
      , mkTransformation ["Aoi"]     [mkIA "SweetsPact" ["LionIce"]]         ["CureGelato"]   (cureALaModeDecoration : introducesHerselfAs_CureGelato)
      , mkTransformation ["Yukari"]  [mkIA "SweetsPact" ["CatMacaron"]]      ["CureMacaron"]  (cureALaModeDecoration : introducesHerselfAs_CureMacaron)
      , mkTransformation ["Akira"]   [mkIA "SweetsPact" ["DogChocolate"]]    ["CureChocolat"] (cureALaModeDecoration : introducesHerselfAs_CureChocolat)
      , mkTransformation ["Ciel"]    [mkIA "SweetsPact" ["PegasusParfait"]]  ["CureParfait"]  (cureALaModeDecoration : introducesHerselfAs_CureParfait)
      , mkTransformation ["Pekorin"] [mkIA "SweetsPact" ["PekorinDonut"]]    ["CurePekorin"]  (cureALaModeDecoration : introducesHerselfAs_CurePekorin)
      , mkTransformation
          ["Ichika", "Himari", "Aoi", "Yukari", "Akira"]
          [mkIA "SweetsPact" ["RabbitShortcake"], mkIA "SweetsPact" ["SquirrelPudding"], mkIA "SweetsPact" ["LionIce"], mkIA "SweetsPact" ["CatMacaron"], mkIA "SweetsPact" ["DogChocolate"]]
          ["CureWhip", "CureCustard", "CureGelato", "CureMacaron", "CureChocolat"]
          (kirakiraALaModeTransformationSpeechFeaturing' introducesHerselfAs_CureWhip)
      , mkTransformation
          ["Ichika", "Himari", "Aoi", "Yukari", "Akira", "Ciel"]
          [mkIA "SweetsPact" ["RabbitShortcake"], mkIA "SweetsPact" ["SquirrelPudding"], mkIA "SweetsPact" ["LionIce"], mkIA "SweetsPact" ["CatMacaron"], mkIA "SweetsPact" ["DogChocolate"], mkIA "SweetsPact" ["PegasusParfait"]]
          groupMembers_KirakiraALaMode
          (kirakiraALaModeTransformationSpeechFeaturing introducesHerselfAs_CureWhip)
      , mkTransformation
          ["Himari", "Ichika", "Aoi", "Yukari", "Akira"]
          [mkIA "SweetsPact" ["SquirrelPudding"], mkIA "SweetsPact" ["RabbitShortcake"], mkIA "SweetsPact" ["LionIce"], mkIA "SweetsPact" ["CatMacaron"], mkIA "SweetsPact" ["DogChocolate"]]
          ["CureCustard", "CureWhip", "CureGelato", "CureMacaron", "CureChocolat"]
          (kirakiraALaModeTransformationSpeechFeaturing' introducesHerselfAs_CureCustard)
      , mkTransformation
          ["Aoi", "Ichika", "Himari", "Yukari", "Akira"]
          [mkIA "SweetsPact" ["LionIce"], mkIA "SweetsPact" ["RabbitShortcake"], mkIA "SweetsPact" ["SquirrelPudding"], mkIA "SweetsPact" ["CatMacaron"], mkIA "SweetsPact" ["DogChocolate"]]
          ["CureGelato", "CureWhip", "CureCustard", "CureMacaron", "CureChocolat"]
          (kirakiraALaModeTransformationSpeechFeaturing' introducesHerselfAs_CureGelato)
      , mkTransformation
          ["Yukari", "Ichika", "Himari", "Aoi", "Akira"]
          [mkIA "SweetsPact" ["CatMacaron"], mkIA "SweetsPact" ["RabbitShortcake"], mkIA "SweetsPact" ["SquirrelPudding"], mkIA "SweetsPact" ["LionIce"], mkIA "SweetsPact" ["DogChocolate"]]
          ["CureMacaron", "CureWhip", "CureCustard", "CureGelato", "CureChocolat"]
          (kirakiraALaModeTransformationSpeechFeaturing' introducesHerselfAs_CureMacaron)
      , mkTransformation
          ["Akira", "Ichika", "Himari", "Aoi", "Yukari"]
          [mkIA "SweetsPact" ["DogChocolate"], mkIA "SweetsPact" ["RabbitShortcake"], mkIA "SweetsPact" ["SquirrelPudding"], mkIA "SweetsPact" ["LionIce"], mkIA "SweetsPact" ["CatMacaron"]]
          ["CureChocolat", "CureWhip", "CureCustard", "CureGelato", "CureMacaron"]
          (kirakiraALaModeTransformationSpeechFeaturing' introducesHerselfAs_CureChocolat)
      , mkTransformation
          ["Ciel", "Ichika", "Himari", "Aoi", "Yukari", "Akira"]
          [mkIA "SweetsPact" ["PegasusParfait"], mkIA "SweetsPact" ["RabbitShortcake"], mkIA "SweetsPact" ["SquirrelPudding"], mkIA "SweetsPact" ["LionIce"], mkIA "SweetsPact" ["CatMacaron"], mkIA "SweetsPact" ["DogChocolate"]]
          ["CureParfait", "CureWhip", "CureCustard", "CureGelato", "CureMacaron", "CureChocolat"]
          (kirakiraALaModeTransformationSpeechFeaturing introducesHerselfAs_CureParfait)
      , mkTransformation
          ["Ichika", "Himari", "Aoi"]
          [mkIA "SweetsPact" ["RabbitShortcake"], mkIA "SweetsPact" ["SquirrelPudding"], mkIA "SweetsPact" ["LionIce"]]
          ["CureWhip", "CureCustard", "CureGelato"]
          ( kirakiraALaModeTransformationSpeechOf
              [ introducesHerselfAs_CureWhip
              , introducesHerselfAs_CureCustard
              , introducesHerselfAs_CureGelato
              ]
          )
      , mkTransformation
          ["Ichika", "Himari", "Aoi", "Yukari"]
          [mkIA "SweetsPact" ["RabbitShortcake"], mkIA "SweetsPact" ["SquirrelPudding"], mkIA "SweetsPact" ["LionIce"], mkIA "SweetsPact" ["CatMacaron"]]
          ["CureWhip", "CureCustard", "CureGelato", "CureMacaron"]
          ( kirakiraALaModeTransformationSpeechOf
              [ introducesHerselfAs_CureWhip
              , introducesHerselfAs_CureCustard
              , introducesHerselfAs_CureGelato
              , introducesHerselfAs_CureMacaron
              ]
          )
      , mkTransformation
          ["Yukari", "Akira"]
          [mkIA "SweetsPact" ["CatMacaron"], mkIA "SweetsPact" ["DogChocolate"]]
          ["CureMacaron", "CureChocolat"]
          ( kirakiraALaModeTransformationSpeechOf
              [ introducesHerselfAs_CureMacaron
              , introducesHerselfAs_CureChocolat
              ]
          )
      , mkTransformation
          groupMembers_KirakiraALaMode
          [mkIA "KirakiraruCreamer" ["SweetsCastle"]]
          groupMembers_KirakiraALaMode_ALaModeStyle
          ["スイーツキャッスル！", "レッツ・ラ・おきがえ！"]
      ]


purificationsKirakiraALaMode :: [Purification]
purificationsKirakiraALaMode =
  [ mkPurification ["CureWhip"]     ["CandyRod"] ["キラキラキラルン！", "ホイップ・デコレーション！"]
  , mkPurification ["CureCustard"]  ["CandyRod"] ["キラキラキラルン！", "カスタード・イリュージョン！"]
  , mkPurification ["CureGelato"]   ["CandyRod"] ["キラキラキラルン！", "ジェラート・シェイク！"]
  , mkPurification ["CureMacaron"]  ["CandyRod"] ["キラキラキラルン！", "マカロン・ジュリエンヌ！", "にゃーお♥"]
  , mkPurification ["CureChocolat"] ["CandyRod"] ["キラキラキラルン！", "ショコラ・アロマーゼ！"]
  -- TODO: Purification Instance of CureParfait and RainbowRibbon overlap!
  -- , mkPurification ["CureParfait"]  ["RainbowRibbon"] ["キラキラキラリン！", "パルフェ・エトワール！"]
  , mkPurification ["CureParfait"]  ["RainbowRibbon"] ["レインボーリボン！", "行くよ！アン・ドゥ・トレビアン！", "キラクル・レインボー！", "ボナペティ！"]
  , mkPurification
      ["CureWhip", "CureCustard", "CureGelato", "CureMacaron", "CureChocolat"]
      ["CandyRod"]
      ["キャンディーロッド！", "キラキラキラル・フルチャージ！", "スイー・ツー・ワンダフル・アラモード！"]
  , mkPurification
      groupMembers_KirakiraALaMode
      crystalAnimals
      ( ["キラキラルクリーマー！", "キラッと輝け！クリスタルアニマル！"]
        ++ crystalAnimalCries
        ++ ["プリキュア・アニマルゴーランド！"]
      )
  , mkPurification
      groupMembers_KirakiraALaMode_ALaModeStyle
      (mkIA "KirakiraruCreamer" ["SweetsCastle"] : crystalAnimals)
      ( ["キラッと輝け！", "クリスタルアニマル！"]
        ++ crystalAnimalCries
        ++ ["プリキュア・ファンタスティックアニマーレ！"]
      )
  ]
  where
    crystalAnimals =
      [ mkIA "KirakiraruCreamer" ["CrystalAnimalRabbit"]
      , mkIA "KirakiraruCreamer" ["CrystalAnimalSquirrel"]
      , mkIA "KirakiraruCreamer" ["CrystalAnimalLion"]
      , mkIA "KirakiraruCreamer" ["CrystalAnimalCat"]
      , mkIA "KirakiraruCreamer" ["CrystalAnimalDog"]
      , mkIA "KirakiraruCreamer" ["CrystalAnimalPegasus"]
      ]
    crystalAnimalCries =
      [ "ぴょーん！"
      , "くるるっ！"
      , "がぁおー！"
      , "にゃーお！"
      , "わん！"
      , "ぱたた！"
      ]


groupMembers_KirakiraALaMode :: IsString s => [s]
groupMembers_KirakiraALaMode =
  ["CureWhip", "CureCustard", "CureGelato", "CureMacaron", "CureChocolat", "CureParfait"]

groupMembers_KirakiraALaMode_ALaModeStyle :: IsString s => [s]
groupMembers_KirakiraALaMode_ALaModeStyle =
  [ "CureWhip_ALaModeStyle"
  , "CureCustard_ALaModeStyle"
  , "CureGelato_ALaModeStyle"
  , "CureMacaron_ALaModeStyle"
  , "CureChocolat_ALaModeStyle"
  , "CureParfait_ALaModeStyle"
  ]

groupName_KirakiraALaMode = "キラキラ☆プリキュアアラモード"

cureALaModeDecoration = "キュアラモード・デコレーション！"

introducesHerselfAs_CureWhip     = ["ショートケーキ！", "元気と笑顔を！", "レッツ・ラ・まぜまぜ！", "キュアホイップ！できあがり！"]
introducesHerselfAs_CureCustard  = ["プリン！", "知性と勇気を！", "レッツ・ラ・まぜまぜ！", "キュアカスタード！できあがり！"]
introducesHerselfAs_CureGelato   = ["アイス！", "自由と情熱を！", "レッツ・ラ・まぜまぜ！", "キュアジェラート！できあがり！"]
introducesHerselfAs_CureMacaron  = ["マカロン！", "美しさとトキメキを！", "レッツ・ラ・まぜまぜ！", "キュアマカロン！できあがり！"]
introducesHerselfAs_CureChocolat = ["チョコレート！", "強さと愛を！", "レッツ・ラ・まぜまぜ！", "キュアショコラ！できあがり！"]
introducesHerselfAs_CureParfait  = ["パフェ！", "夢と希望を！", "レッツ・ラ・まぜまぜ！", "キュアパルフェ！できあがり！"]
introducesHerselfAs_CurePekorin  = ["ドーナツ！", "ペコペコとキラキラを！", "レッツ・ラ・まぜまぜ！", "キュアペコリン！できあがり！"]

kirakiraALaModeTransformationSpeechOf :: [[String]] -> [String]
kirakiraALaModeTransformationSpeechOf [] = error "No transforamation speech given!"
kirakiraALaModeTransformationSpeechOf al@(first:_) =
  cureALaModeDecoration : init first ++ map last al

kirakiraALaModeTransformationSpeechFeaturing' :: [String] -> [String]
kirakiraALaModeTransformationSpeechFeaturing' first =
  cureALaModeDecoration : init first ++ allDekiagari ++ [groupName_KirakiraALaMode ++ "！"]
  where
    allDekiagari = map last
      [ introducesHerselfAs_CureWhip
      , introducesHerselfAs_CureCustard
      , introducesHerselfAs_CureGelato
      , introducesHerselfAs_CureMacaron
      , introducesHerselfAs_CureChocolat
      ]

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
      , introducesHerselfAs_CureParfait
      ]
