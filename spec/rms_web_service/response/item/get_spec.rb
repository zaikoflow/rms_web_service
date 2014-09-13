require 'spec_helper'
require 'rms_web_service'

describe RmsWebService::Response::Item::Get do
  subject {described_class.new(fixture('get.xml'))}
  it {is_expected.to respond_to(:status, :code, :success?, :item_url, :item_name, :item_price)}
  it {is_expected.not_to respond_to(:errors)}
end
