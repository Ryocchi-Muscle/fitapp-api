require 'net/http'
require 'uri'
require 'json'
class ApplicationController < ActionController::API
  include ActionController::Cookies

private

  def set_current_user
    received_access_token = request.headers["Authorization"].split.last
     Rails.logger.debug("received_access_token: #{received_access_token}")
     Rails.logger.debug("session: #{session.to_hash}")
     Rails.logger.debug("user_id: #{session[:user_id]}")
     Rails.logger.debug("session[:access_token]: #{session[:access_token]}")

    if session[:user_id] && session[:access_token] == received_access_token
      # セッションからユーザー情報を取得
      @current_user = User.find_by(id: session[:user_id])

    else
      # GitHub APIからユーザー情報を取得
      session.delete(:access_token)
      user_info = fetch_user_info_from_google(received_access_token)
      Rails.logger.debug("user_info: #{user_info}")
      # GitHubのuidをもとにユーザー検索
      @current_user = User.find_by(uid: user_info['id'])
        Rails.logger.debug("current_user: #{@current_user}")
      # セッションにユーザー情報を保存
      session[:user_id] = @current_user.id
      session[:access_token] = received_access_token
    end
  end

  def fetch_user_info_from_google(access_token)
    uri = URI.parse("https://www.googleapis.com/oauth2/v3/userinfo")
    request = Net::HTTP::Get.new(uri)
    request["Authorization"] = "Bearer #{access_token}"

    response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == "https") do |http|
      http.request(request)
    end

    JSON.parse(response.body)
  end
end
