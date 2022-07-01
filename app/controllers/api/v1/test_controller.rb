class Api::V1::TestController < Api::V1::ApiController
    def index
        render json: {message: "Hello"}
    end

    def create
        # puts params
        if params[:present]
            render json: {message: "present"}
        else
            render json: {message: "absent"}
        end
    end

    # private
    # def test_params
    #   params.permit(:id, :present, :absent)
    # end
end