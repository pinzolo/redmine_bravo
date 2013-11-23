# coding: utf-8
class Bravo < ActiveRecord::Base
  unloadable

  belongs_to :user
  belongs_to :journal, conditions: Proc.new { ["target_type = ?", "journal"] }

  def self.users(options = {})
    where(target: options[:target], target_id: options[:target_id]).map(&:user)
  end

  def self.bravos_for(journal)
    unless Thread.current[:bravos]
      Thread.current[:bravos] = Bravo.where(target_id: journal.issue.journals.map(&:id)).each_with_object({}) do |bravo, result|
        result[bravo.target_id] ||= []
        result[bravo.target_id] << bravo
      end
    end
    Thread.current[:bravos][journal.id]
  end
end
