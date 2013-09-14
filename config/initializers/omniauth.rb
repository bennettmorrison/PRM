Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, "687735713657-59u8dmqe68kihkqupvk6csgh1dp8uthb.apps.googleusercontent.com", "eq3qTCqB2lf_b1pjb9j4GCuI",
    {
      :name => "google",
      :scope => "userinfo.email, userinfo.profile, calendar, https://www.google.com/m8/feeds/, https://mail.google.com/",
    }
end