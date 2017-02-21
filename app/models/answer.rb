class Answer < ActiveRecord::Base
  after_initialize :set_defaults

  belongs_to :question_decision
  has_one :picture, -> { order(:position) }, as: :viewable, dependent: :destroy, class_name: "Spree::Image"

  #attr_accessor :content
  #attr_accessor :impact

  validates :content, presence: true
  validates :impact, presence: true

  private

  def set_defaults
    self.impact = 0
  end
end
