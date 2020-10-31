class MatchingController < ApplicationController

  def index
    # 自分にいいねをしてくれた人
    # whereで指定した部分からpluckで指定したidを配列で返している。取り出し方はfrom_user_idですよ。
    got_reaction_user_ids = Reaction.where(to_user_id: current_user.id,status: 'like').pluck(:from_user_id)
    # いいねしてくれた人の中から自分がいいねを押した人
    @match_users = Reaction.where(to_user_id: got_reaction_user_ids, from_user_id: current_user.id, status:'like').map(&:to_user)
  end
  
end
