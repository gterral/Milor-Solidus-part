class QuestionDecision< ActiveRecord::Base

  after_initialize :set_defaults

  QUESTION_TYPES = [
      ["Question de type texte", "qtext"],
      ["Question de type image", "qpicture"],
      ["Question textuel et image", "qtextpicture"]
  ]

  DIMENSION_TYPES = [
      ["Ouverture", 1],
      ["Conscienciosité", 2],
      ["Extraversion", 3],
      ["Agréabilité", 4],
      ["Neuroticisme", 5],
      ["Loisirs", 6],
      ["Alcool", 7],
      ["Culture", 8],
      ["Ecologie", 9],
      ["Gastronomie", 10],
      ["Genre", 11],
      ["Age", 12],
      ["Prix", 13],
      ["Proximité", 14],
      ["Objet", 15]
  ]

  has_many :answers, dependent: :destroy

  attr_accessor :statement
  attr_accessor :typeq
  attr_accessor :dimension

  validates :statement, presence: true
  validates :typeq, presence: true
  validates :dimension, presence: true

  private

  def set_defaults
    self.typeq = 'qtext'
  end

end
