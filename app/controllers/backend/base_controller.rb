class Backend::BaseController < ApplicationController
  before_filter :authenticate_partner!
end
