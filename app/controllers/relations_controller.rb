##
# Relations Controllers
#
class RelationsController < ApplicationController

  ## post /i/domain/relations
  ##
  def create
    @relation = authorize current_user.all_relations.new(relation_params)

    if @relation.save
      if @relation.relationable_type == "User"
        Notification.create(actor: current_user, user_id: @relation.relationable_id,
          notify_type: @relation.name)
      end
      redirect_to :back, notice: "ok"
    end
  end

  def destroy
    @relation = authorize Relation.find(params[:id])
    @relation.destroy
    redirect_to :back, notice: "delete"
  end

  private

    def relation_params
      params.require(:relation).permit(:name, :relationable_id, :relationable_type)
    end
end
