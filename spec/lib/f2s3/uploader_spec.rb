require_relative '../../../lib/f2s3/uploader'
require 'dotenv'; Dotenv.load

RSpec.describe F2S3::Uploader do
  it '.new smoke test' do
    expect { F2S3::Uploader.new('aokproduct') }.to_not raise_error
  end

  it 'upload smoke test', :pending do
    client      = F2S3::Uploader.new('aokproduct')
    file_name   = 'test.json'
    bucket_path = 'Staging/test.json'

    expect { client.upload_file(file_name, bucket_path) }.to_not raise_error
  end
end
