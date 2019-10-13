CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     ENV["AWS_ACCESS_KEY_ID"],                        # required unless using use_iam_profile
    aws_secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"],                        # required unless using use_iam_profile
    region:                'eu-central-1',                  # optional, defaults to 'us-east-1'
    host:                  's3-eu-central-1.amazonaws.com',             # optional, defaults to nil
  }
  config.storage = :fog
  config.fog_directory  = ENV["S3_BUCKET_NAME"]                                     # required
  config.fog_public     = false                                                 # optional, defaults to true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
end