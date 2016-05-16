require 'aws-sdk'

# If you're using dotenv, you have to manually load the .env file

class F2S3
  class F2S3Error < StandardError; end # devrive class errors from here

  def initialize(bucket_name)
    @s3     = Aws::S3::Resource.new
    @bucket = @s3.bucket(bucket_name)
  end

  def upload_file(file_name, bucket_path)
    @bucket.object(bucket_path)
      .upload_file(file_name)
  end
end
