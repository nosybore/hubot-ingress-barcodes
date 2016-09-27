# Description
#   Decode names of players who exploit sans-serif to obfuscate their identities.
#
# Dependencies:
#   factoids (optional for storing manual names)
#
# Configuration:
#   None
#
# Commands:
#   hubot bc <BARCODE> - translate BARCODE to more easily remembered name
#
# Notes:
#   None
#
# Author:
#   Jack Miner <3ch01c@gmail.com>

module.exports = (robot) ->
  robot.respond /(barcode|bc) ([Il]+)\??$/, (res) ->
    barcode = res.match[2]
    factoids = robot.brain.get("factoids") or {}
    if factoids[barcode]
      decoded = factoids[barcode]
      res.send "#{JSON.stringify(decoded)}"
    else
      s = ""
      s += String.fromCharCode(64 + parseInt(barcode.slice(i,i+5).replace(/\I/g,'0').replace(/\l/g,'1'), 2)) for i in [0,5,10]
      if s.length == 3
        res.send "#{s}"
      else
        res.send "Sorry, I can't decode that. :("
