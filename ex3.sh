read -p "digite o nome do arquivo que voce deseja renomear" arquivo

if [ -e "$arquivo" ]; then
        read -p "qual nome vc deseja por no seu arquivo? " renomearArquivo
        '$renomearArquivo'=$(mv '$arquivo')
        echo ""
        echo "O novo nome do seu arquivo é '$renomearArquivo'"
else
        echo "nao foi possivel encontrar o arquivo '$arquivo'"
fi
