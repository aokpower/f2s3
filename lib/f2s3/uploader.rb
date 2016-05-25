require 'aws-sdk'

module F2S3
  class Uploader
    def initialize(bucket_name)
      @s3     = Aws::S3::Resource.new
      @bucket = @s3.bucket(bucket_name)
    end

    def upload_file(file_name, bucket_path)
      @bucket.object(bucket_path)
        .upload_file(file_name)
    end
  end
end

