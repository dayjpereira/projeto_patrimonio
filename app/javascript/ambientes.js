document.addEventListener("turbo:load", () => {
  const radioDepartamento = document.getElementById("radio_departamento");
  const radioAreaComum = document.getElementById("radio_area_comum");
  const selectAmbiente = document.getElementById("ambiente_select");

  if (!radioDepartamento || !radioAreaComum || !selectAmbiente) return;

  function carregarAmbientes(tipo) {
    fetch(`/ambientes_por_tipo/${tipo}`)
      .then(response => response.json())
      .then(data => {
        selectAmbiente.innerHTML = "";
        const defaultOption = document.createElement("option");
        defaultOption.textContent = "Selecione um ambiente";
        defaultOption.value = "";
        selectAmbiente.appendChild(defaultOption);

        data.forEach(ambiente => {
          const option = document.createElement("option");
          option.textContent = ambiente.nome;
          option.value = ambiente.id;
          selectAmbiente.appendChild(option);
        });
      })
      .catch(error => {
        console.error("Erro ao carregar ambientes:", error);
      });
  }

  // Eventos
  radioDepartamento.addEventListener("change", () => carregarAmbientes("Departamento"));
  radioAreaComum.addEventListener("change", () => carregarAmbientes("AreaComum"));

  // Carregar por padrão
  carregarAmbientes("Departamento");
});
