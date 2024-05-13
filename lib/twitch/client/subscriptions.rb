# frozen_string_literal: true

module Twitch
  class Client
    # API methods for subscriptions
    module Subscriptions
      def get_broadcaster_subscription(options = {})
        initialize_response Subscription, post('subscriptions', options)
      end

      def get_user_subscription(options = {})
        initialize_response UserSubscription, post('subscriptions/user', options)
      rescue Twitch::NotFoundError
        # If the subscription doesn't exist, return `nil`
        nil
      end
    end
  end
end
