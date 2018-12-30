require 'rails_helper'

RSpec.describe School, type: :model do
#  let(:school) { School.new }
   let!(:school) { School.create(name: "sps") }
  

  it "check the name of the school" do
    ##Exercise
    #school.set_name("ajc")
    
    #verify
    expect(school.name).to eq("sps")
    
  end
end
