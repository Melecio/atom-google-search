module.exports =
  activate: ->
    atom.workspaceView.command "lmgtfy:google-it", => @googleIt()

  googleIt : ->
    editor = atom.workspace.activePaneItem
    selection = editor.getSelection()
    query = selection.getText().split(" ").map(encodeURIComponent).join("+")
    if query
      url = "https://encrypted.google.com/search?q=#{query}&oq=#{query}"
      window.open(url, "lmgtfy", "");
