# coding: utf-8
class BravoHooks < Redmine::Hook::ViewListener
  include BravoMarker

  def view_issues_history_journal_bottom(context = {})
    journal = context[:journal]
    bravo_mark(journal)
  end
end
