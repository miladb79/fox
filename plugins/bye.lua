local function run(msg, matches)
local reply_id = msg['id']
local MKH = 188548712
  local hash = 'rank:variables'
  local text = ''
    local value = redis:hget(hash, msg.from.id)
     if not value then
        if msg.from.id == tonumber(MKH) then 
           text = text..'بسلامت بابایی\n\n'
         elseif is_admin2(msg.from.id) then
           text = text..'بسلامت بابایی \n\n'
         elseif is_owner2(msg.from.id, msg.to.id) then
           text = text..'بسلامت مدیر کل گروه \n\n'
         elseif is_momod2(msg.from.id, msg.to.id) then
           text = text..'بسلامت مدیر گروه \n'
     else
           text = text..'بسلامت\n\n'
      end
      else
       text = text..'بسلامت '..value..'  \n\n'
     end
reply_msg(reply_id, text, ok_cb, false)

    
end

return {
  patterns = {


"^[B]ey$",
"^خداحافظ$",
"^بای$",

  }, 
  run = run 
}
