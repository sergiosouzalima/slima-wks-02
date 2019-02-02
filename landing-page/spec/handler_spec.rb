require 'spec_helper'
require 'handler'
require 'pry'

describe '#handler' do
  let(:event) {SpecHelper::Event.new}
  let(:body) {handler(event).call.body}

  context 'when function is requested' do
    it 'returns a String' do
      expect(body).to be_a(String)
    end
    it 'returns person_email html tag name' do
      expect(body).to include('person_email')
    end
    it 'returns submit_button html tag name' do
      expect(body).to include('submit_button')
    end
  end
end
