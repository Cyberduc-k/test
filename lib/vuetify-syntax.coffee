module.exports =
  activate: (state) ->
    @updateSettings()

    atom.config.onDidChange 'vuetify-syntax.dropShadow', =>
      @updateSettings()

  clearSettings: ->
    document.documentElement.classList.remove 'drop-shadow'

  updateSettings: ->
    @clearSettings()

    dropShadow = atom.config.get 'vuetify-syntax.dropShadow'

    if dropShadow
      document.documentElement.classList.add 'drop-shadow'

  deactivate: ->
    @clearSettings()
