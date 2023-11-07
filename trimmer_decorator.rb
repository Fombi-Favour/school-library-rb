class TrimmerDecorator < BaseDecorator
  def initialize(nameable)
    super
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name[0..9] if @nameable.correct_name.length > 10
  end
end
