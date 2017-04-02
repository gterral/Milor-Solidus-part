class Profil < ActiveRecord::Base

  #"#{after_initialize :set_defaults

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

  #attr_accessor :dim1
  #attr_accessor :dim2
  #attr_accessor :dim3
  #attr_accessor :dim4
  #attr_accessor :dim5
  #attr_accessor :dim6
  #attr_accessor :dim7
  #attr_accessor :dim8
  #attr_accessor :dim9
  #attr_accessor :dim10
  #attr_accessor :dim11
  #attr_accessor :dim12
  #attr_accessor :dim13
  #attr_accessor :dim14
  #attr_accessor :dim15


  def update_rep(numRep,valeur)
    case numRep
      when 1
        self.rep1 = valeur
      when 2
        self.rep2 = valeur
      when 3
        self.rep3 = valeur
      when 4
        self.rep4 = valeur
      when 5
        self.rep5 = valeur
      when 6
        self.rep6 = valeur
      when 7
        self.rep7 = valeur
      when 8
        self.rep8 = valeur
      when 9
        self.rep9 = valeur
      when 10
        self.rep10 = valeur
      when 11
        self.rep11 = valeur
      when 12
        self.rep12 = valeur
      when 13
        self.rep13 = valeur
      when 14
        self.rep14 = valeur
      when 15
        self.rep15 = valeur
      when 16
        self.rep16 = valeur
      when 17
        self.rep17 = valeur
      when 18
        self.rep18 = valeur
      when 19
        self.rep19 = valeur
      when 20
        self.rep20 = valeur
    end
  end


  private

  def set_defaults
    self.rep1 = 0
    self.rep2 = 0
    self.rep3 = 0
    self.rep4 = 0
    self.rep5 = 0
    self.rep6 = 0
    self.rep7 = 0
    self.rep8 = 0
    self.rep8 = 0
    self.rep9 = 0
    self.rep10 = 0
    self.rep11 = 0
    self.rep12 = 0
    self.rep13 = 0
    self.rep14 = 0
    self.rep15 = 0
    self.rep16 = 0
    self.rep17 = 0
    self.rep18 = 0
    self.rep19 = 0
    self.rep20 = 0
  end

end
