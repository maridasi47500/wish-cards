class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_many :pics
  accepts_nested_attributes_for :pics, allow_destroy: true
  has_many :texts
  accepts_nested_attributes_for :texts, allow_destroy: true
  def image=(uploaded_io)
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
        file.write(uploaded_io.read)
    end
    write_attribute(:image, uploaded_io.original_filename)
  end
  def image
    read_attribute(:image)
  end
end
