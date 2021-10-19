# LuaWiki
MediaWiki parser in Lua

## Requirements
- [luapower](https://luapower.com) - all in one / install following packages
  - cjson lpeg luajit luapower-repos nginx openssl pcre resty.http resty-core resty-lrucache zlib

## Deploy Steps
1. Clone this repository.
2. Download and extract [the latest Luapower release](https://github.com/luapower/all/archive/master.zip), then use the extracted directory as Current Working Directory.
3. Replace `lpeg/re.lua` with [my edition](https://github.com/AlexanderMisel/LPeg/blob/master/re.lua).
4. Move all the contents inside this repository into current directory.
5. Start `nginx`.

That's all. You can browse [http://localhost:6699](http://localhost:6699) to see if it works.

## Goal
Become an alternative to MediaWiki, a lighter implementation. 
- [ ] an LPeg based MediaWiki parser, from MW to HTML
- [ ] re-implement key templates in Lua, and migrate Wikipedia's Lua modules
- [ ] incorporate MariaDB as a database, design basic tables for use
- [ ] editing API and web editor
- [ ] (maybe) sync with Wikipedia, and allow Wikimedia OAuth login, and save to Wikipedia
