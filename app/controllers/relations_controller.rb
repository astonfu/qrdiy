##
# Relations Controllers
#
class RelationsController < ApplicationController
  before_action :set_relation, :only => [:destroy]

  ## post /i/domain/relations
  ##
  def create
    @relation = authorize current_user.all_relations.new(relation_params)

    respond_to do |format|
      if @relation.save
        format.html {redirect_to (request.referer || root_path), notice: "已#{@relation.desc}"}
        format.js {render "update"}
      end
    end
  end

  ##
  # 动态更新 relation 的状态，为 cache 而生。即这个 relationable 的 relation 状态：
  # 有多少人和它发生关系。
  # 而这时 view 的状态是要初始的没有一个人发生关系的状态，所有有 create 里 params
  #
  def update
    @relationable = params[:relationable_type].constantize.find(
      params[:relationable_id])
  end

  ##
  # 删除 relation
  #
  def destroy
    authorize @relation
    @relation.destroy

    respond_to do |format|
      if @relation.save
        format.html {redirect_to (request.referer || root_path), notice: "已取消#{@relation.desc}"}
        format.js {render "update"}
      end
    end
  end

  private

    def set_relation
      @relation = authorize Relation.find(params[:id])
    end

    def relation_params
      params.require(:relation).permit(:action_type, :relationable_id, :relationable_type)
    end
end
