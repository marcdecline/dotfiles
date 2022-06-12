
  
#!/usr/bin/bash

r=$(echo -e "Portàtil\nDoble-2560\nDoble-3840\n\naltres" | dmenu -i -p "Selecciona entrada:" -fn "Cantarell-14" -nf '#82AAFF' -sb '#82AAFF' -sf '#222')

case "$r" in
    Portàtil) /home/marc/.conf/i3/screenlayouts/una-pantall-portatil.sh ;;
    Doble-2560) /home/marc/.config/i3/screenlayouts/dues-pantalles-2-2560-vertical.sh ;;
    Doble-3840) /home/marc/.config/i3/screenlayouts/dues-pantalles-2-3840-vertical.sh ;;
    altres) arandr ;;
    *) echo "No s'ha trobat $r (Portàtil|Doble-2560|Doble-3840|altres)" ;;
esac
