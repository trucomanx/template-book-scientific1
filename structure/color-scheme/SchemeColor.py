#!/usr/bin/python3

import os
import json

# Obtém o caminho absoluto do script atual
filepath = os.path.abspath(__file__)
diretorio = os.path.dirname(filepath)

json_path=os.path.join(diretorio,'color-peras1.json')

print(json_path)


# Abra o arquivo JSON
with open(json_path, 'r') as file:
    # Carregue o conteúdo do arquivo em um dicionário
    dados = json.load(file)

# Função para converter RGB para hexadecimal
def rgb_to_hex(rgb):
    return '#{:02x}{:02x}{:02x}'.format(*rgb)

# Converte as cores RGB do JSON para hexadecimal
book_hex_color_scheme = [rgb_to_hex(color) for color in dados.values()]
   
#print(book_hex_color_scheme)
