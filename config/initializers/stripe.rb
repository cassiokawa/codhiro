Rails.configuration.stripe = {
  :publishable_key => 'pk_test_ZelwNIgMyUaJ0xDOzlLFDhnU',
  :secret_key      => 'sk_test_aYkztHU6WPwS5BMZs6IXTdwI'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]