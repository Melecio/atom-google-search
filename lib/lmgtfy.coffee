module.exports = LMGTFY =
  activate: (state) ->
    atom.commands.add 'atom-workspace', 'lmgtfy:google-it', => @search()

  search: ->
    query  = atom.workspace.getActivePaneItem().getLastSelection().getText()

    if query
      url = "https://encrypted.google.com/search?q=#{query}&oq=#{query}"
      window.open(url, "lmgtfy", "")
