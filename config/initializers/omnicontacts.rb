require "omnicontacts"

Rails.application.middleware.use OmniContacts::Builder do
  importer :gmail, "687735713657-59u8dmqe68kihkqupvk6csgh1dp8uthb.apps.googleusercontent.com", "eq3qTCqB2lf_b1pjb9j4GCuI", {:max_results => 1000, :redirect_path => "/contacts/google/callback"}
  # importer :yahoo, "consumer_id", "consumer_secret", {:callback_path => '/callback'}
  # importer :hotmail, "client_id", "client_secret"
  # importer :facebook, "client_id", "client_secret"
end