# frozen_string_literal: true

# Alert component
class AlertComponent < ViewComponent::Base
  def initialize(type:, message:)
    super()
    @type = type
    @message = message
  end
end
