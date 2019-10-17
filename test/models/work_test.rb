require "test_helper"

describe Work do
  # it "does a thing" do
  #   value(1+1).must_equal 2
  # end
  
  describe 'validations' do
    it "can be valid" do
      is_valid = works(:valid_work).valid?
      
      assert(is_valid)
    end
    
    it "is invalid if there is no title" do
      work = Work.new(category: "movie", creator: "the wizard of oz", publication_year: "2013", description: "abc")
      is_valid = work.valid?
      refute(is_valid)
    end
    
    it "is invalid if it does not have a unique title within its category" do
      work = Work.new(category: "book", title: "The best work ever", creator: "John Doe", description: "hello", publication_year: "2000")
      is_valid = work.valid?
      refute(is_valid)
    end
    
    it "is valid if it has the same title as a work of a different category" do
      work = Work.new(category: "album", title: "The best work ever", creator: "John Doe", description: "hello", publication_year: "2000")
      is_valid = work.valid?
      assert(is_valid)
    end
  end
  
  describe 'custom methods' do
    describe 'top_ten' do
      
      
    end
    
    describe 'spotlight' do
      
    end
  end
end
