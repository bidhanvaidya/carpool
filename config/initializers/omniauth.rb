Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 'app_ID', 'Secret token',:scope => 'user_work_history,email,user_education_history,user_interests,user_hometown,user_location,user_actions.music'
end

