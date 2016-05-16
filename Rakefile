require 'dotenv'
Dotenv.load

task :test do
  require_relative 'lib/f2s3'
  client      = F2S3.new('aokproduct')
  file_name   = 'test.json'
  bucket_path = 'Staging/rake_test.json'

  client.upload_file(file_name, bucket_path)
end
