%w(/ /ideas).each do |path|   # %w() = a notation to write an array of strings separated by spaces instead of commas and without quotes around them.
                              # Same as ["/", "/ideas"]
  get path do
    @ideas = Idea.all
    erb: 'ideas/index'
  end
end