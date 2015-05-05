class ApplyForm < ActiveRecord::Base
  belongs_to :user
  belongs_to :offer

  	has_attached_file :CV
	validates_attachment_presence :CV
	validates_attachment_content_type :CV, :content_type => [ 'application/pdf','text/plain']
end
