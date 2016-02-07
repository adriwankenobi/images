class Image < ActiveRecord::Base

  mount_uploader :source, PicturesUploader
  
  validates :name, presence: true, length: { minimum: 5 }
  
  validates :source, presence: true
  validates_processing_of :source
  validate :source_size_validation
  
private

  def source_size_validation
    errors[:source] << "should be less than 50KB" if source.size > 0.048828125.megabytes
  end  
  
end
