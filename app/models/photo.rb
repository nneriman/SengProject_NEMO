class Photo < ActiveRecord::Base
  def to_param
    category
  end
  belongs_to :category
end
