activate :syntax, line_numbers: true

data.languages.each do |language|
  proxy "#{language.path}/", '/language.html', locals: { language: language }, layout: :layout
end
