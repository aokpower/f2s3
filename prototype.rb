# AWS credentials are stored in .env
# This is a note on the Aws interface.

# This program needs to be rethought.
# Information required to make it work:
# AWS Access key id (checked with env variable)
# AWS secret access key (checked with env variable)
# AWS region
# target bucket name
# folder path if target isn't toplevel
# local file name
# S3 file name

s3_file_name = 'test.json'

class F2S3Error < StandardError; end

class S3Info
  class S3InfoError < F2S3Error; end
  class MissingS3InfoError < S3InfoError; end

  def self.folder_path
    ARGV[2] || ENV['s3_folder_path'] || raise(MissingS3InfoError)
  end

  def self.file_name
    ARGV[1] || ENV['s3_file_name'] || raise(MissingS3InfoError)
  end

  def self.bucket_name
    ENV['BUCKET_NAME'] || raise(MissingS3InfoError)
  end

  def self.target_path
    folder_path + '/' + file_name
  end
end

s3 = Aws::S3::Resource.new
bucket = s3.bucket(S3Info.bucket_name)
target = bucket.object(S3Info.target_path)
target.upload_file(local_file_name) # Doesn't need to be the same as target s3_file_name
