local db = require('dashboard')
db.custom_center = {
  {icon_hl={fg="#FFFFFF"},icon ="some icon",desc="some desc"}, --correct
  { icon = 'some icon', desc = 'some description here' }, --correct if you don't action filed
  { desc = 'some description here' },                    --correct if you don't action and icon filed
  { desc = 'some description here', action = 'Telescope find files'} --correct if you don't icon filed
}

-- Cus
