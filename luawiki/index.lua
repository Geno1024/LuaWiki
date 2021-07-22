local title = ngx.unescape_uri(ngx.var.arg_title)

local f = io.open('wiki/' .. title)

if not f then
  return ngx.say('Page not found')
end

local preprocessor = require('preprocessor')
local parser = require('parser')
local wikitext = f:read('*a')
wikitext = preprocessor.process(wikitext, title)
local wiki_html = parser.parse(wikitext)
ngx.say('<!DOCTYPE html><html><head><title>维基百科，自由的百科全书</title>' ..
    '<link rel="stylesheet" type="text/css" href="/wiki.css">' ..
    '</head><body>' ..
    '<h1>' .. title .. '</h1>' .. (wiki_html:gsub('<((%a+)[^>]-)/>', '<%1></%2>')
      or '') ..
    '<script src="/simplequery.js"></script>' ..
    '<script src="/wiki.js"></script>' ..
    '</body></html>')