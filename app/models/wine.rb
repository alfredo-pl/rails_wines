class Wine < ApplicationRecord
    has_many :assemblies, dependent: :destroy
    has_many :strains, through: :assemblies, dependent: :destroy
    accepts_nested_attributes_for :assemblies, allow_destroy: true

    validates_associated :assemblies
    validates_associated :strains

    def build_strains
        a = Assembly.references(:wines).where(wine_id: id)
        
        a.map{|s| "#{s.nameStrain} (#{s.proportion}%)" }.join(", ")
    end

    
end
