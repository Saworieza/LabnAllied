class EditorController < ApplicationController
    before_action :authenticate_user!
end
