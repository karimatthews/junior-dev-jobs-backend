class PagesController < ApplicationController
  def main
    @jobs = Job.all
  end
end
