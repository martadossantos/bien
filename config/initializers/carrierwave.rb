CarrierWave.configure do |config|
   config.fog_credentials = {
     provider:              'AWS',                        # required
     aws_access_key_id:     'xxx',                        # required unless using use_iam_profile
     aws_secret_access_key: 'yyy',                        # required unless using use_iam_profile
     use_iam_profile:       true,                         # optional, defaults to false
     region:                'eu-west-1',                  # optional, defaults to 'us-east-1'
   }
   config.fog_directory  = 'name_of_bucket'                                      # required
   # For an application which utilizes multiple servers but does not need caches persisted across requests,
   # uncomment the line :file instead of the default :storage.  Otherwise, it will use AWS as the temp cache store.
   # config.cache_storage = :file
 end