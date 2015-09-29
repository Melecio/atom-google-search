module.exports =
  activate: (state) ->
    atom.commands.add 'atom-workspace', 'google:search', => @search()

  search: ->
    query  = atom.workspace.getActivePaneItem().getLastSelection().getText()

    if query
      url = "https://encrypted.google.com/search?q=#{query}&oq=#{query}"
      window.open(url, "#{query} - Google Search", "status=no, menubar=no")
