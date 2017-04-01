class ReverseProfil < ActiveRecord::Base

  #after_initialize :set_defaults, :if => :new_record?

  #validates :rep1, presence: true
  #validates :rep2, presence: true
  #validates :rep3, presence: true
  #validates :rep4, presence: true
  #validates :rep5, presence: true
  #validates :rep6, presence: true
  #validates :rep7, presence: true
  #validates :rep8, presence: true
  #validates :rep9, presence: true
  #validates :rep10, presence: true
  #validates :rep11, presence: true
  #validates :rep12, presence: true
  #validates :rep13, presence: true
  #validates :rep14, presence: true
  #validates :rep15, presence: true
  #validates :rep16, presence: true
  #validates :rep17, presence: true
  #validates :rep18, presence: true
  #validates :rep19, presence: true
  #validates :rep20, presence: true
  #validates :item1, presence: true
  #validates :item2, presence: true
  #validates :item3, presence: true
  #validates :item1mark, presence: true
  #validates :item2mark, presence: true
  #validates :item3mark, presence: true
  #validates :instanciation, presence: true


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
        self.rep11 = valeur
      when 18
        self.rep12 = valeur
      when 19
        self.rep13 = valeur
      when 20
        self.rep14 = valeur
      when 21
        self.rep15 = valeur
    end
  end

  def update_item(nitem,iditem)
    case nitem
      when 1
        self.item1 = iditem
      when 2
        self.item2 = iditem
      when 3
        self.item3 = iditem
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
    self.item1mark = 0
    self.item2mark = 0
    self.item3mark = 0
    self.instanciation = 0
  end

end
