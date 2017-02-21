class Profil < ActiveRecord::Base

  after_initialize :set_defaults

  DIMENSION_TYPES = [
    ["Ouverture", 1],
    ["Conscienciosité", 2],
    ["Extraversion", 3],
    ["Agréabilité", 4],
    ["Neuroticisme", 5],
    ["Sport", 6],
    ["Technologie", 7],
    ["Culture", 8],
    ["Ecologie", 9],
    ["Gastronomie", 10],
    ["Genre", 11],
    ["Age", 12],
    ["Prix", 13],
    ["Alcool", 14],
    ["Objet", 15]
  ]

  attr_accessor :dim1
  attr_accessor :dim2
  attr_accessor :dim3
  attr_accessor :dim4
  attr_accessor :dim5
  attr_accessor :dim6
  attr_accessor :dim7
  attr_accessor :dim8
  attr_accessor :dim9
  attr_accessor :dim10
  attr_accessor :dim11
  attr_accessor :dim12
  attr_accessor :dim13
  attr_accessor :dim14
  attr_accessor :dim15

  validates :dim1, presence: true
  validates :dim2, presence: true
  validates :dim3, presence: true
  validates :dim4, presence: true
  validates :dim5, presence: true
  validates :dim6, presence: true
  validates :dim7, presence: true
  validates :dim8, presence: true
  validates :dim9, presence: true
  validates :dim10, presence: true
  validates :dim11, presence: true
  validates :dim12, presence: true
  validates :dim13, presence: true
  validates :dim14, presence: true
  validates :dim15, presence: true




  def update_dim(numDimension,valeur)
    case numDimension
      when 1
        self.dim1 = valeur
      when 2
        self.dim2 = valeur
      when 3
        self.dim3 = valeur
      when 4
        self.dim4 = valeur
      when 5
        self.dim5 = valeur
      when 6
        self.dim6 = valeur
      when 7
        self.dim7 = valeur
      when 8
        self.dim8 = valeur
      when 9
        self.dim9 = valeur
      when 10
        self.dim10 = valeur
      when 11
        self.dim1 = valeur
      when 12
        self.dim12 = valeur
      when 13
        self.dim13 = valeur
      when 14
        self.dim14 = valeur
      when 15
        self.dim15 = valeur
    end
  end


  private

  def set_defaults
    self.dim1 = 0
    self.dim2 = 0
    self.dim3 = 0
    self.dim4 = 0
    self.dim5 = 0
    self.dim6 = 0
    self.dim7 = 0
    self.dim8 = 0
    self.dim9 = 0
    self.dim10 = 0
    self.dim11 = 0
    self.dim12 = 0
    self.dim13 = 0
    self.dim14 = 0
    self.dim15 = 0
  end

end
