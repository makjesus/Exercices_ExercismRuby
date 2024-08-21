class Pessoa
  def initialize(name, age)
    @name = name  # Variável de instância para armazenar o nome
    @age = age    # Variável de instância para armazenar a idade
  end

  def mostrar_informacoes
    puts "Nome: #{@name}, Idade: #{@age}"
  end
end

pessoa1 = Pessoa.new("Alice", 30)
pessoa1.mostrar_informacoes  # Output: Nome: Alice, Idade: 30

pessoa2 = Pessoa.new("Bob", 25)
pessoa2.mostrar_informacoes  # Output: Nome: Bob, Idade: 25

