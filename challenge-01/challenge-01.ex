defmodule StringPeeler do
  def remove_primeiro_ultimo_caracteres(string, caracter_removido \\ 1) do
    unless String.length(string) > (caracter_removido * 2) do
      raise 'Tamanho da string é menor que 2'
    end

    inicio = caracter_removido
    fim = -1 - caracter_removido
    String.slice(string, inicio..fim)
  end
end
