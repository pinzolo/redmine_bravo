# coding: utf-8
module BravosHelper
  def bravo_mark(journal)
    BravoMarker::bravo_mark(journal)
#    return "" unless journal
#
#    bravo_contents = image_tag("thumbs-up.png", class: "bravo-thumbs-up", plugin: :redmine_bravo) + content_tag(:span, "Bravo!", class: "bravo-text")
#    bravos = Bravo.bravos_for(journal)
#    if bravos.blank?
#      bravo_contents = link_to(bravo_contents, bravos_path(target_id: journal.id), method: :post, remote: true)
#    else
#      bravo_contents << content_tag(:span, bravos.size, class: "bravo-count")
#      if bravos.all? { |b| b.user != User.current }
#        bravo_contents = link_to(bravo_contents, bravos_path(target_id: journal.id), method: :post, remote: true)
#      end
#    end
#    content_tag(:span, bravo_contents, id: "bravo-journal-#{journal.id}")
  end
end
