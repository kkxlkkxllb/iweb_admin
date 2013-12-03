class Manual
  include Mongoid::Document
  mount_uploader :file, FileUploader

  field :name, type: String

  belongs_to :project
end
