Remove-Item -ErrorAction Ignore -Force -Recurse -Path $ENV:USERPROFILE\.cache
Remove-Item -ErrorAction Ignore -Force -Recurse -Path $ENV:USERPROFILE\.SpaceVim
Remove-Item -ErrorAction Ignore -Force -Recurse -Path $ENV:USERPROFILE\.SpaceVim.d
Remove-Item -ErrorAction Ignore -Force -Path $ENV:USERPROFILE\_vimrc
Remove-Item -ErrorAction Ignore -Force -Path $ENV:USERPROFILE\_viminfo
