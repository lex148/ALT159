#   Copyright (c) 2012 Micah Woods
#
#   Permission is hereby granted, free of charge, to any person obtaining a copy of
#   this software and associated documentation files (the "Software"), to deal in
#   the Software without restriction, including without limitation the rights to
#   use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
#   of the Software, and to permit persons to whom the Software is furnished to do
#   so, subject to the following conditions:
#
#   The above copyright notice and this permission notice shall be included in all
#   copies or substantial portions of the Software.
#
#   THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#   IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
#   FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
#   COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
#   IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
#   CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#ALT159 = \u0192 = f = (obj) ->  AHHH helps
#stringy = require './stringy'

window.ALT159 = window.f = ((obj) ->

  ALT159 = (obj) ->
    return new Stringy(obj) if typeof obj is "string"
    return new Numbery(obj) if toString.call(obj) is "[object Number]"
    return new Datey(obj)   if toString.call(obj) is "[object Date]"
    return new Lagniappe()  if obj is undefined
    null

  ALT159.types =
    Stringy : Stringy
    Numbery : Numbery
    Datey   : Datey

  ALT159
)()

