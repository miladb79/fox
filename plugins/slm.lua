local function run(msg, matches)
local reply_id = msg['id']
local MKH = 188548712
  local hash = 'rank:variables'
  local text = ''
    local value = redis:hget(hash, msg.from.id)
     if not value then
        if msg.from.id == tonumber(MKH) then 
           text = text..'سلام بابایی\n\n'
         elseif is_admin2(msg.from.id) then
           text = text..'سلام بابایی 😚 \n\n'
         elseif is_owner2(msg.from.id, msg.to.id) then
           text = text..'سلام رییس کل گروه \n\n'
         elseif is_momod2(msg.from.id, msg.to.id) then
           text = text..'سلام مدیر گروه \n'
     else
           text = text..'سلام\n\n'
      end
      else
       text = text..'سلام '..value..'  \n\n'
     end
reply_msg(reply_id, text, ok_cb, false)

    
end

return {
  patterns = {


"^[Ss]lm$",
"^سلام$",
"^salam$",

  }, 
  run = run 
}
