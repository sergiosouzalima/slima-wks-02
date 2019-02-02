require 'spec_helper'
require 'handler'

describe '#handler' do
  let(:event) {SpecHelper::Event.new}
  let(:body) {handler(event).call.body}

  context 'when function is requested' do
    it 'returns a String' do
      expect(body).to be_a(String)
    end
  end
end
