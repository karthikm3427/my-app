require 'rails_helper'

RSpec.describe Teacher, type: :model do
 
  it 'returns one teacher ' do
    #expect(teacher.name).to eq 'Teacher1'
    # Setup
      teacher = Teacher.create(name: 'Teacher1')
   
    # Verify
      expect(teacher.name).not_to eq 'Walther PPK'
      #expect(teacher.name).to eq 'Teacher1'
   
    # Teardown is for now mostly handled by RSpec itself    
    
    
  end
 
end
