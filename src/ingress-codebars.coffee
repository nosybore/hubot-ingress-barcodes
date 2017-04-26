# Description
#   Encode player names that exploit sans-serif to obfuscate their identities.
#
# Configuration:
#   None
#
# Commands:
#   hubot cb <ABC> - translate ABC to obfuscated identity
#
# Notes:
#   None
#
# Author:
#   Paul Robison <paul@nosybore.net>

module.exports = (robot) ->
  robot.respond /(codebar|cb) (.+)/i, (res) ->
    codebar = res.match[2]
    b0=(codebar.charCodeAt(0)-64).toString(2)
    while b0.length < 5
     b0="0"+b0
    b1=(codebar.charCodeAt(1)-64).toString(2)
    while b1.length < 5
     b1="0"+b1
    b2=(codebar.charCodeAt(2)-64).toString(2)
    while b2.length < 5
     b2="0"+b2
    barcode = b0+b1+b2
    barcode = barcode.replace /0/g, "I"
    barcode = barcode.replace /1/g, "l"
    if barcode.length == 15
       res.send "#{barcode}"
    else
       res.send "Sorry, I can't encode that. :("
