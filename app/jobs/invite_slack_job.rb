# frozen_string_literal: true

class InviteSlackJob < ApplicationJob
  queue_as :default

  def perform(email, channel_name)
    client = Slack::Web::Client.new
    client.auth_test

    # ユーザーを検索
    user = client.users_lookupByEmail(email: email)
    # Slackのユーザーidを取得
    user_id = user.channel.id

    # ユーザー用のチャンネルを該当のワークスペースに追加
    # client.conversations_create(name: channel_name)

    # ユーザーを招待したいチャンネルのidを定義
    slack_should_be_invited_channel_id = 'SLACK_CHANNEL_ID_1'
    # slack_shouldable_channel = ENV['SLACK_CHANNEL_ID_1']
    # 複数の場合は以下のように設定すれば良い
    # slack_shouldable_channel_ids = ['SLACK_CHANNEL_ID_1', 'SLACK_CHANNEL_ID_2']

    client.conversations_invite(channel: slack_should_be_invited_channel_id, users: user_id)
    # 複数のチャンネルに登録する場合
    # slack_shouldable_channel_ids.each do |slack_shouldable_channel_id|
    #   client.conversations_invite(channel: slack_shouldable_channel_id, users: user_id)
    # end
  end
end
