CarrierWave.configure do |config|
  config.fog_credentials = {
    # Configuration for Amazon S3
    :provider              => 'AWS',
    :aws_access_key_id     => ENV['AWS_ACCESS_KEY'],
    :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'],
    :region                => 'us-west-2'
    }
  config.storage = :fog
  config.cache_dir = "#{Rails.root}/tmp/uploads"
  config.fog_directory    = ENV['AWS_BUCKET']
end