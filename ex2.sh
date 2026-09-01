read -p "Digite o nome do arquivo que deseja ser removido: " arquivo

if [ -e "$arquivo" ]; then
        rm '$arquivo'
        echo "Arquivo removido com sucesso!"
else
        echo "nao foi possivel encontrar esse arquivo '$arquivo'"

fi
