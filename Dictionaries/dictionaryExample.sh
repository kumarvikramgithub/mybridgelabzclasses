#
declare -A sounds;
sounds[dog]="bark";
sounds[cats]="mue";
sounds[cow]="moo";
sounds[bird]="tweet";
sounds[wolf]="howl";
echo "Dog Sound " ${sounds[dog]};
echo "All Animal Sound " ${sounds[@]};
echo "All Animal key Sound " ${!sounds[@]};
echo "All Animal Sound " ${#sounds[@]};

