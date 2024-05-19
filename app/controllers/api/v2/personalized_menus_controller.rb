class Api::V2::PersonalizedMenusController < ApplicationController
  before_action :set_current_user
  def create
    gender = params[:gender]
    frequency = params[:frequency]

    program = generate_program(gender, frequency)

    render json: { program: program }
  end

  private

  def generate_program(gender, frequency)
  base_url = request.base_url
  Rails.logger.debug "Base URL: #{base_url}"

  case gender
  when 'male'
    case frequency
    when '1'
      [
        {
          title: "週に1回のプログラム",
          image: "#{base_url}/images/images.jpeg",
          details: [
            "スクワット: 10回3セット, インターバル3分",
            "スクワット: メインセットから重量を15%落として限界まで1セット, インターバル1分",
            "ベンチプレス: 10回3セット, インターバル3分 (時間なければ2分)",
            "ベンチプレス: メインセットから重量を15%落として限界まで1セット, インターバル1分",
            "デッドリフト: 10回2セット, インターバル3分",
            "懸垂: インターバル3分",
            "サイドレイズ: 12回3セット, インターバル1分",
            "アブローラー: 2セット, インターバル2分",
            "※はじめの15%落として限界まで行うセットはこのプログラムを始めて1ヶ月以上経過してから取り入れてください。それまでは10回3セットだけでOKです。"
          ]
        }
      ]
    when '2-3'
      [
        {
          title: "週に2-3回のプログラム A",
          image: "#{base_url}/images/program_2_3_A.jpg", # 必要に応じて画像のパスを変更
          details: [
            "スクワット: 10回3セット, インターバル3分",
            "ベンチプレス: 10回3セット, インターバル3分 (時間がなければ2分)",
            "デッドリフト: 10回2セット, インターバル3分",
            "懸垂: 10回3セット, インターバル3分",
            "サイドレイズ: 12回3セット, インターバル1分",
            "アブローラー: 10回2セット, インターバル2分"
          ]
        },
        {
          title: "週に2-3回のプログラム B",
          image: "#{base_url}/images/program_2_3_B.jpg", # 必要に応じて画像のパスを変更
          details: [
            "スクワット: 10回3セット, インターバル3分",
            "ベンチプレス: 10回3セット, インターバル3分 (時間がなければ2分)",
            "懸垂: 10回3セット, インターバル3分",
            "サイドレイズ: 12回3セット, インターバル1分",
            "アブローラー: 10回2セット, インターバル2分"
          ]
        }
      ]
    when '4-6'
      [
        {
          title: "週に4-6回のプログラム A",
          image: "#{base_url}/images/program_4_6_A.jpg", # 必要に応じて画像のパスを変更
          details: [
            "スクワット: 10回3セット, インターバル3分",
            "デッドリフト: 10回3セット, インターバル3分 (時間がなければ2分)",
            "ブルガリアンスクワット: 10回3セット, インターバル1分",
            "アブローラー: 10回2セット, インターバル2分"
          ]
        },
        {
          title: "週に4-6回のプログラム B",
          image: "#{base_url}/images/program_4_6_B.jpg", # 必要に応じて画像のパスを変更
          details: [
            "ベンチプレス: 10回3セット, インターバル3分",
            "懸垂: 10回3セット, インターバル3分",
            "サイドレイズ: 12回3セット, インターバル1分",
            "ダンベルカール: 10回3セット, インターバル60〜90秒",
            "ライイングトライセプスEX: 10回3セット, インターバル60〜90秒"
          ]
        },
        {
          title: "週に4-6回のプログラム C",
          image: "#{base_url}/images/program_4_6_C.jpg", # 必要に応じて画像のパスを変更
          details: [
            "スクワット: 10回3セット, インターバル3分",
            "ブルガリアンスクワット: 10回3セット, インターバル1分",
            "懸垂: 10回3セット, インターバル3分",
            "インクラインダンベルカール: 10回3セット, インターバル60〜90秒",
            "アブローラー: 10回2セット, インターバル2分"
          ]
        },
        {
          title: "週に4-6回のプログラム D",
          image: "#{base_url}/images/program_4_6_D.jpg", # 必要に応じて画像のパスを変更
          details: ["休み"]
        },
        {
          title: "週に4-6回のプログラム E",
          image: "#{base_url}/images/program_4_6_E.jpg", # 必要に応じて画像のパスを変更
          details: [
            "ベンチプレス: 10回3セット, インターバル3分",
            "サイドレイズ: 12回3セット, インターバル1分",
            "ショルダープレス: 10回3セット, インターバル3分",
            "ライイングトライセプスEX: 10回3セット, インターバル60〜90秒"
          ]
        },
        {
          title: "週に4-6回のプログラム F",
          image: "#{base_url}/images/program_4_6_F.jpg", # 必要に応じて画像のパスを変更
          details: ["休み"]
        }
      ]
    end
  when 'female'
    case frequency
    when '1'
      ["プログラムD1", "プログラムD2"]
    when '2-3'
      ["プログラムE1", "プログラムE2"]
    when '4-6'
      ["プログラムF1", "プログラムF2"]
    end
  end
  end

end
