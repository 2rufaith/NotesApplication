require './NotesApplication'
include Ehiemere

RSpec.describe 'NotesApplication' do

  context 'when checking for different instances' do

    it 'should pass' do
    faith = NotesApplication.new('Faith')
    expect(faith.author).to eq "Faith"
    end

    it 'should pass' do
    oge = NotesApplication.new('Oge')
    expect(oge.author).to eq "Oge"
    end


    it 'should pass' do
    emeka = NotesApplication.new('Emeka')
    expect(emeka.author).to eq "Emeka"
    end

    it 'should pass' do
    mike = NotesApplication.new('Michael Carrick')
    expect(mike.author).to eq "Michael Carrick"
    end

    it 'should pass' do
    john = NotesApplication.new('John Doe')
    expect(john.author).to eq "John Doe"
    end

    it 'raises error for more than one inputs' do
    expect {NotesApplication.new 'a','be'}.to raise_error ArgumentError
    end

  context "Checking if method" do
    faith = NotesApplication.new 'Faith'
    faith.create "Faith is good"
    faith.create 'Independent day'
    faith.create 'Move on'

    it 'returns array or notes' do
    expect(faith.get 0).to eq 'Faith is good'
    end

    it 'returns the last note in notes' do
    expect(faith.get -1).to eq 'Move on'
    end

    it 'returns the second note in notes' do
    expect(faith.get 1).to eq 'Independent day'
    end

    it 'returns nil' do
    expect(faith.get 3).to eq nil
    end

    it 'returns nil' do
    expect(faith.get 5).to eq nil
    end

    it 'should return search not found' do 
    expect {faith.search('nada')}.to raise_error "Text not found"
    end

    it 'should return search not found' do 
    expect {faith.search('bada')}.to raise_error "Text not found"
    end

    it 'should return search not found' do 
    expect {faith.search('Andela')}.to raise_error "Text not found"
    end

    it 'should return search not found' do 
    expect {faith.search('Nigeria')}.to raise_error "Text not found"
    end
    

  context 'Testing for correct input' do

    
    it "should test for empty author name" do
    expect {NotesApplication.new("")}.to raise_error "Please enter valid author name"
    end    
      
    it "should test for integer" do
    expect {NotesApplication.new(4)}.to raise_error "Please enter valid author name"
    end 

    it "should test for integer" do
    expect {NotesApplication.new(7)}.to raise_error "Please enter valid author name"
    end  

    it "should test for float" do
    expect {NotesApplication.new(1.4)}.to raise_error "Please enter valid author name"
    end

    it "should test for nil" do
    expect {NotesApplication.new(nil)}.to raise_error "Please enter valid author name"
    end     
  end	
end
end
end