=begin

Introdução:

Símbolos são identificadores nomeados que podem ser usados para se referir
 a um valor. Símbolos são criados através de um literal de símbolo, que é
 prefixando um nome com o caractere :, por exemplo, :foo . Eles também
 permitem ser escritos com aspas,
 por exemplo, ":"foo"", o que permite, por exemplo, espaços no nome.

 :foo # => :foo
:"foo boo" # => :"foo boo"

 Símbolos são usados em muitos lugares na linguagem, incluindo como chaves
 em hashes, para representar nomes de métodos e nomes de variáveis.

 Identificador

O que torna os símbolos diferentes das strings é que eles são identificadores
 e não representam dados ou texto.
Isso significa que dois símbolos com o mesmo nome são sempre o mesmo objeto.

"foo".object_id # => 60
"foo".object_id # => 80
:foo.object_id # => 1086748
:foo.object_id # => 1086748

Modificando simbolos

Símbolos são imutáveis, o que significa que não podem ser modificados.
 Isso significa que quando você "modifica" um símbolo, na verdade está
 criando um novo símbolo. Existem alguns métodos que podem ser usados
  para manipular símbolos, todos eles retornam novos símbolos.
Todos os métodos podem ser encontrados na API de Símbolos.

:foo.upcase # => :FOO

:foo.object_id # => 1086748
:foo.upcase.object_id # => 60


O benefício dos símbolos serem imutáveis é que eles são mais eficientes
 em termos de memória do que strings, mas também mais seguros de usar
  como identificadores.

  Conversão

  Os símbolos podem ser convertidos em
   strings e vice-versa. Isso pode ser útil quando você deseja modificar
   um símbolo, ou quando deseja usar um símbolo como uma string. Para
   apresentar uma string como um símbolo, você pode usar o método
   String#to_sym e para fazer o oposto, você pode usar o método
   Symbol#to_s. Devido aos símbolos terem um conjunto limitado
    de métodos, pode ser útil converter um símbolo em uma string para usar
   métodos de string nele, se um novo símbolo for necessário.

:foo.to_s # => "foo"
"foo".to_sym # => :foo

Instruções:

O porto de Palermo é um porto movimentado, com muitos navios
entrando e saindo. Por muito tempo, teve um sistema manual para rastrear
os navios que estão atualmente no porto. Este sistema é muito propenso a
erros, e o chefe do porto decidiu substituí-lo por um sistema informatizado.

   O chefe do porto contratou você para implementar o novo sistema.
  O sistema precisa lidar com identificadores para navios, mas também para destinos.

  Crie as portas de identificação

  A primeira coisa que você precisa fazer é criar o identificador para o porto
  de Palermo. O identificador são as primeiras quatro letras do nome do porto,
  em letras maiúsculas.
  Defina a constante Port::IDENTIFIER como um símbolo com o valor :PALE.

     Port::IDENTIFIER

     Pegue o identificador de portas

     O programa também precisará lidar com outras portas,
     então você precisará criar identificadores para elas
     também. A porta gostaria que o sistema fosse automatizado
      e, como as portas usam diferentes convenções de nomenclatura,
      os identificadores devem ser gerados a partir do nome da porta.
         Os identificadores são as quatro primeiras letras do nome da porta,
          em maiúsculas. Defina o método Port.get_identifier para receber uma
          string como argumento e retornar
      o identificador como um símbolo para essa porta.

       Port.get_identifier("Hamburg")
       # => :HAMB

       Determine qual terminal um navio deve atracar

       Você precisa definir o método Port.get_terminal para
       determinar qual terminal um navio deve atracar com base
       no identificador do navio. O identificador é composto por
        duas partes: três letras maiúsculas que indicam o tipo de
        carga que o navio está transportando e três números que
        formam o identificador único do navio. Se a carga for "OIL"
          ou "GAS", o navio deve atracar no terminal A. Caso contrário,
           o navio deve atracar no terminal B. O método deve aceitar um
           símbolo como argumento e retornar o terminal como um símbolo.





=end


class Port
  # Define a constante para o identificador do porto de Palermo
  IDENTIFIER = :PALE

  # Método para obter o identificador de um dado nome de porto
  def self.get_identifier(port_name)
    # Extrai as quatro primeiras letras do nome do porto, converte para
    #maiúsculas e retorna como símbolo
    port_name[0, 4].upcase.to_sym
  end

  # Método para determinar o terminal com base no identificador do navio
  def self.get_terminal(ship_identifier)
    # Converte o identificador do navio para string para comparação
    identifier_str = ship_identifier.to_s

    # Extrai o tipo de carga do identificador do navio (primeiras 3 letras)
    cargo_type = identifier_str[0, 3]

    # Determina o terminal com base no tipo de carga
    if cargo_type == 'OIL' || cargo_type == 'GAS'
      # Se o tipo de carga for 'OIL' ou 'GAS', retorna o terminal :A
      :A
    else
      # Caso contrário, retorna o terminal :B
      :B
    end
  end
end

# Exemplos de uso
puts Port::IDENTIFIER                     # Output: PALE
puts Port.get_identifier('Palermo')       # Output: :PALE
puts Port.get_terminal(:OIL778)            # Output: :A
puts Port.get_terminal(:GAS188)            # Output: :B
