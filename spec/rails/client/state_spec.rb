require 'spec_helper'

describe Rails::Client::State do
  it 'has a version number' do
    expect(Rails::Client::State::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
