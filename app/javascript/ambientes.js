document.addEventListener('DOMContentLoaded', function() {
  const radioButtons = document.querySelectorAll('input[name="ambiente_tipo"]');
  const ambienteSelect = document.getElementById('ambiente_select');

  radioButtons.forEach(function(radio) {
    radio.addEventListener('change', function(event) {
      const tipo = event.target.value;

      fetch(`/ambientes_por_tipo/${tipo}`)
        .then(function(response) {
          if (!response.ok) {
            throw new Error('Erro na requisição: ' + response.status);
          }
          return response.json();
        })
        .then(function(data) {
          // Limpa o select
          ambienteSelect.innerHTML = '<option value="">Selecione um ambiente</option>';

          // Adiciona as opções recebidas
          data.forEach(function(ambiente) {
            const option = document.createElement('option');
            option.value = ambiente.id;
            option.textContent = ambiente.nome;
            ambienteSelect.appendChild(option);
          });
        })
        .catch(function(error) {
          console.error('Erro ao carregar ambientes:', error);
        });
    });
  });
});
