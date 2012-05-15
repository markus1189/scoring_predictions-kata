require 'race'
describe Race do
  it "should score an completely correct prediction with 34 points" do
    Race.score([1,2,3,4,5], [1,2,3,4,5]).should == 34
  end

  context "guessing one position" do

    it "should score 15 points for the first" do
      Race.score([1,2,3,5], [1,42,42,42,42]).should == 15
    end

    it "should score 10 points for the second" do
      Race.score([1,2,3,4,5], [42,2,42,42,42]).should == 10
    end

    it "should score 5 points for the third" do
      Race.score([1,2,3,4,5], [42,42,3,42,42]).should == 5
    end

    it "should score 3 points for the fourth" do
      Race.score([1,2,3,4,5], [42,42,42,4,42]).should == 3
    end

    it "should score 1 points for the fifth" do
      Race.score([1,2,3,4,5], [42,42,42,42,5]).should == 1
    end
  end
end
