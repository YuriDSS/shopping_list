# frozen_string_literal: true

require 'test_helper'

class AlertComponentTest < ViewComponent::TestCase
  def test_should_create_a_danger_alert
    expected_html = '<div class="alert alert-dismissible fade show alert-danger" role="alert">Fudeu<button aria-label="Close" class="btn-close" data-bs-dismiss="alert" type="button"></button>
</div>'

    rendered_html = render_inline(AlertComponent.new(type: :danger, message: 'Fudeu')).to_html

    assert_equal expected_html, rendered_html
  end

  def test_should_create_a_success_alert
    expected_html = '<div class="alert alert-dismissible fade show alert-success" role="alert">Tudo ok<button aria-label="Close" class="btn-close" data-bs-dismiss="alert" type="button"></button>
</div>'

    rendered_html = render_inline(AlertComponent.new(type: :success, message: 'Tudo ok')).to_html

    assert_equal expected_html, rendered_html
  end
end
