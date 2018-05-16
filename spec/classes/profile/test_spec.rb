require 'spec_helper'

describe 'regex_variable::profile::test' do
#  let(:pre_condition) {
 #     <<-PRE_COND
  #      class {'regex_variable': }
   #   PRE_COND
    #  }
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }
    end
  end
end
