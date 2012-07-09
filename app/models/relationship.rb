class Relationship < ActiveRecord::Base
  attr_accessible :followed_id

  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"

  validates :follower_id, presence: true
  validates :followed_id, presence: true

#	describe "follower methods" do
#		it { should respond_to(:follower) }
#		it { should respond_to(:followed) }
#		its(:follower) { should == follower }
#		its(:followed) { should == followed }  
#	end


end
