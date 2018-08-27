repo = 'https://raw.githubusercontent.com/pregren/cheetah'
branch = 'master'

gemfile_url = "#{repo}/#{branch}/gemfile.rb"
rubocop_url = "#{repo}/#{branch}/debug/rubocop.rb"

file_attributes = {
  debug: %w(pry),
  service: %w(),
  spec: %w(),
}

apply gemfile_url

file_attributes.each do |key, values|
  values.each do |value|
    apply "#{repo}/#{branch}/#{key}/#{value}.rb"
  end
end

apply rubocop_url
