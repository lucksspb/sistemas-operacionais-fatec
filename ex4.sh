read -p "digite o nome do arquivo a ser movido: " arquivo
read -p "Digite o nome do diretorio de destino: " destino


if [ ! -e "$arquivo" ]; then
        echo "Erro: Arquivo '$arquivi' nao encontrado"

elif [ ! -d "$destino" ]; then
        echo "Erro: O diretório de destino '$destino' não existe."

else

    mv "$arquivo" "$destino/"


    if [ $? -eq 0 ]; then
        echo "Sucesso: O arquivo '$arquivo' foi movido para '$destino' com sucesso!"
    else
        echo "Erro: Não foi possível mover o arquivo."
    fi
fi
