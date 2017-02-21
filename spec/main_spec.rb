require_relative 'spec_helper'

describe "Sassy Contour" do
  it "should have a homepage" do
    get '/'
    last_response.body.must_include '<body>'
  end
end
