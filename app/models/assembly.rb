class Assembly < ApplicationRecord
  belongs_to :wine
  belongs_to :strain
  accepts_nested_attributes_for :strain, allow_destroy: true

  def nameStrain
    s =  Strain.where(id: strain_id).pluck :name
    s.first
  end
end
