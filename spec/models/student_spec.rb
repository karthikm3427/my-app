require 'rails_helper'

RSpec.describe Student, type: :model do
#  subject(:student) { Student.new }
  let(:school) { School.new }
  
  it { expect("").to be_empty }
  it { expect(nil).to be_nil }  
  it { expect("sample").to be_start_with("s") }  
  it { expect("sample").to be_end_with("e") }  
  it { expect(2).to be_between(0, 5) }  
  it { expect{ :x.count }.to raise_error(NoMethodError) }

  
end
