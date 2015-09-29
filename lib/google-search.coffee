module.exports =
  activate: (state) ->
    atom.commands.add 'atom-workspace', 'google:search', => @search()

  search: ->
    query  = atom.workspace.getActivePaneItem().getLastSelection().getText()

    if query
      query = encodeURIComponent(query)
      url = "https://encrypted.google.com/search?q=#{query}&oq=#{query}"
      window.open(url, "#{query} - Google Search", "status=0, toolbar=0")
