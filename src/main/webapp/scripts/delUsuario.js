const deleteModal = document.getElementById('deleteModal')
if (deleteModal) {
  deleteModal.addEventListener('show.bs.modal', event => {

    const button = event.relatedTarget

    const id = button.getAttribute('id')
    const inputIdUser = deleteModal.querySelector('#idUser')
    inputIdUser.value = id
    
    const nombre = button.getAttribute('nombre')
    const apellido = button.getAttribute('apellido')

    const dataUser = deleteModal.querySelector('.modal-body #dataUser')

    dataUser.innerHTML = nombre + " " + apellido
  })
}