class JobSerializer < ActiveModel::Serializer
  include ActionView::Helpers::NumberHelper
  attributes :id, :title, :company, :formatted_salary, :description, :suburb, :source_link

  def formatted_salary
    number_with_delimiter(object.salary)
  end

end
