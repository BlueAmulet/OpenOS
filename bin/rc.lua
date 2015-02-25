local rc = require('rc')

local args = table.pack(...)
if args.n < 1 then
  io.write("Usage: rc <service> [command] [args...]")
  return
end

local result, reason = rc.runCommand(table.unpack(args))

if not result then
  io.stderr:write(reason .. "\n")
end

