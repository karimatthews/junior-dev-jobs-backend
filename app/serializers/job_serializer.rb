class JobSerializer < ActiveModel::Serializer
  include ActionView::Helpers::NumberHelper
  attributes :id, :title, :company, :formatted_salary, :description, :suburb, :source_link, :work_type, :created_at

  def formatted_salary
    number_with_delimiter(object.salary)
  end

  def work_type
    object.work_type.downcase
  end

end
