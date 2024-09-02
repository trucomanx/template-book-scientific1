#!/usr/bin/python

import sys
# Adiciona o diretório ao sys.path
sys.path.append('../../../structure/color-scheme')


import numpy as np
import matplotlib.pyplot as plt

import SchemeColor as  SC



# Parâmetros
MARKERSIZE = 7
FONTSIZE = 18
LINEWIDTH = 1.2

x=np.linspace(-1,1,10);
y1=3*x+1;
y2=-3*x+1;
y3=x-1;
y4=-x+1;


print(SC.book_hex_color_scheme)

# Criando a figura e os plots
plt.figure(1)

plt.rcParams['axes.prop_cycle'] = plt.cycler(color=SC.book_hex_color_scheme)

plt.plot(x, y1, '--.', markersize=MARKERSIZE, linewidth=LINEWIDTH, label='$y_{1}(x)$')
plt.plot(x, y2, '->',  markersize=MARKERSIZE, linewidth=LINEWIDTH, label='$y_{2}(x)$')
plt.plot(x, y3, '-<',  markersize=MARKERSIZE, linewidth=LINEWIDTH, label='$y_{3}(x)$')
plt.plot(x, y4, '-v',  markersize=MARKERSIZE, linewidth=LINEWIDTH, label='$y_{4}(x)$')

# Configurando rótulos e legendas
plt.xlabel('$x$', fontsize=FONTSIZE)
plt.ylabel('$y$', fontsize=FONTSIZE)
plt.legend(bbox_to_anchor=(1.05, 1), loc='upper left', fontsize=FONTSIZE)

# Definindo limites e aspecto
#plt.gca().set_aspect(2/0.8)  

plt.gca().tick_params(labelsize=FONTSIZE)

# Salvando a figura
plt.savefig('example.eps', format='eps', bbox_inches='tight')

#plt.show()

