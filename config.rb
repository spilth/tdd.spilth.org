activate :directory_indexes
activate :syntax, line_numbers: true

ignore "/language.html"

data.languages.each do |language|
  proxy "/#{language.path}/index.html", '/language.html', locals: { language: language }, layout: :layout
end

activate :s3_sync do |s3_sync|
  s3_sync.bucket = 'tdd.spilth.org'
  s3_sync.acl    = 'public-read'
end

