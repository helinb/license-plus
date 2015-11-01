module.exports =
  activate: ->
    atom.commands.add "atom-workspace", "license:Android-Project", => @android()
    atom.commands.add "atom-workspace", "license:Apache-2․0", => @apache2()
    atom.commands.add "atom-workspace", "license:Artistic-2․0", => @artist2()
    atom.commands.add "atom-workspace", "license:BSD", => @bsd()
    atom.commands.add "atom-workspace", "license:CC0-1․0", => @cc010()
    atom.commands.add "atom-workspace", "license:CC-BY-4․0", => @ccby40()
    atom.commands.add "atom-workspace", "license:CC-BY-ND-4․0", => @ccbynd40()
    atom.commands.add "atom-workspace", "license:CC-BY-SA-4․0", => @ccbysa40()
    atom.commands.add "atom-workspace", "license:CC-BY-NC-4․0", => @ccbync40()
    atom.commands.add "atom-workspace", "license:CC-BY-NC-ND-4․0", => @ccbyncnd40()
    atom.commands.add "atom-workspace", "license:CC-BY-NC-SA-4․0", => @ccbyncsa40()
    atom.commands.add "atom-workspace", "license:CDDL-1․0", => @cddl10()
    atom.commands.add "atom-workspace", "license:Eclipse-1․0", => @eclipse10()
    atom.commands.add "atom-workspace", "license:MIT", => @mit()
    atom.commands.add "atom-workspace", "license:GPL-v2", => @gplv2()
    atom.commands.add "atom-workspace", "license:GPL-v3", => @gplv3()
    atom.commands.add "atom-workspace", "license:LGPL-v2․1", => @lgplv21()
    atom.commands.add "atom-workspace", "license:LGPL-v3", => @lgplv3()
    atom.commands.add "atom-workspace", "license:Mozilla", => @mozilla()
    atom.commands.add "atom-workspace", "license:The-Unlicense", => @unlicense()

  android: ->
    @addLicense("android")

  apache2: ->
    @addLicense("apache20")

  artist2: ->
    @addLicense("artistic20")

  bsd: ->
    @addLicense("bsd2")

  cc010: ->
    @addLicense("cc010")

  ccby40: ->
    @addLicense("ccby40")

  ccbynd40: ->
    @addLicense("ccbynd40")

  ccbysa40: ->
    @addLicense("ccbysa40")

  ccbync40: ->
    @addLicense("ccbync40")

  ccbyncnd40: ->
    @addLicense("ccbyncnd40")

  ccbyncsa40: ->
    @addLicense("ccbyncsa40")

  ccbyncsa40: ->
    @addLicense("ccbyncsa40")

  cddl10: ->
    @addLicense("cddl10")

  eclipse10: ->
    @addLicense("eclipse10")

  mit: ->
    @addLicense("mit")

  gplv2: ->
    @addLicense("gplv2")

  gplv3: ->
    @addLicense("gplv3")

  lgplv21: ->
    @addLicense("lgplv21")

  lgplv3: ->
    @addLicense("lgplv3")

  mozilla: ->
    @addLicense("mozilla")

  unlicense: ->
    @addLicense("unlicense")


  addLicense: (name)->
    editor = atom.workspace.getActiveTextEditor()
    @getLicenseText name, (err, license)->
      editor.insertText(license)

  getLicenseText: (name, next) ->
    fs = require "fs"
    file = __dirname + '/licenses/' + name + ".txt"
    fs.readFile file, 'utf8', next
