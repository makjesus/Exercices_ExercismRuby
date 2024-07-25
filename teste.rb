class Ticket
  def issue_pass!(pass_id)
    @pass_id = pass_id
    @pass_id
  end
end

ticket = Ticket.new
puts "#{ticket.issue_pass!(12345)} # Isso atribui 12345 a @pass_id e retorna 12345."

porque o metodo usou o sinal de interrogação nesse caso expecifico
