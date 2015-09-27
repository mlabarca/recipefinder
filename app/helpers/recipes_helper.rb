module RecipesHelper

  # Converts social rank to float and truncates to 2 decs
  def truncated_rank rank
    "%.2f" % (Integer(rank.to_f * 100) / Float(100))
  end

end
