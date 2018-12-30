require 'rails_helper'

RSpec.describe Sample, type: :model do


  it 'sample test' do
    #setup
    sample = Sample.new    

    #execerise
    sample.set_name("sps")
    
    #verify
    expect(sample.name).to eq("sps")

  end

  it 'checks the name is present or not' do
    #setup
    sample = Sample.new    

    #execerise
    sample.name = nil
    
    #verify
    expect(sample.name).to be_nil    
  end


  it 'checks the name is unique or not' do
    
  end

end
