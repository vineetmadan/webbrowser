require 'spec_helper'
describe 'webbrowser' do

  context 'with defaults for all parameters' do
    it { should contain_class('webbrowser') }
  end
end
