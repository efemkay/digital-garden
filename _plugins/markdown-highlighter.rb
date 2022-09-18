# copied over from https://github.com/maximevaillancourt/digital-garden-jekyll-template/tree/master/_plugins

# Example on how set toggle in _config.yml
#
# open_external_links_in_new_tab = !!doc.site.config["open_external_links_in_new_tab"]
# if open_external_links_in_new_tab
# end

# frozen_string_literal: true

# Turns ==something== in Markdown to <mark>something</mark> in output HTML

Jekyll::Hooks.register [:notes], :post_convert do |doc|
  replace(doc)
end

Jekyll::Hooks.register [:pages], :post_convert do |doc|
  # jekyll considers anything at the root as a page,
  # we only want to consider actual pages
  next unless doc.path.start_with?('_pages/')
  replace(doc)
end

def replace(doc)
  doc.content.gsub!(/==+([^ ](.*?)?[^ .=]?)==+/, "<mark>\\1</mark>")
end
