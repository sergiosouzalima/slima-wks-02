require 'spec_helper'
require 'handler'

describe 'handler(event)' do
  let(:event) {SpecHelper::Event.new}

  it 'should return a String' do
    body = handler(event).call.body
    expect(body).to be_a(String)
  end
end
