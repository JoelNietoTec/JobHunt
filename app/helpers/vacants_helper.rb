module VacantsHelper
  def postulated vacant, candidate
    Postulation.where(:vacant_id => vacant, :candidate => candidate).first
  end
end
