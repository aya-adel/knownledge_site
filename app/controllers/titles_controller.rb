class TitlesController < InheritedResources::Base

  private

    def title_params
      params.require(:title).permit(:string, :user)
    end
end

