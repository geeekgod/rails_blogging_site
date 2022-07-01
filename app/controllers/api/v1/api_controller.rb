class Api::V1::ApiController < ApplicationController
    # protect_from_forgery unless: -> { request.format.json? }
    protect_from_forgery with: :null_session
    include DeviseTokenAuth::Concerns::SetUserByToken
    skip_before_action :verify_authenticity_token
    skip_before_filter :verify_authenticity_token, :only => :create
end