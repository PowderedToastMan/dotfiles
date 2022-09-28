function lockscreen --wraps='xscreensaver-command -lock' --description 'alias lockscreen xscreensaver-command -lock'
  xscreensaver-command -lock $argv; 
end
