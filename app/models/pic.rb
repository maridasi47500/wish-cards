class Pic < ApplicationRecord
  has_many :picanimations
  accepts_nested_attributes_for :picanimations
  belongs_to :message
    def filename=(uploaded_io)
          File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
                    file.write(uploaded_io.read)
                        end
              write_attribute(:filename, uploaded_io.original_filename)
                end
      def filename
            read_attribute(:filename)
              end
end
