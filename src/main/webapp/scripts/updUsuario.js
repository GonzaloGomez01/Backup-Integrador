const updateModal = document.getElementById('updateModal')
if (updateModal) {
  updateModal.addEventListener('show.bs.modal', event => {

    const button = event.relatedTarget

    const id = button.getAttribute('id')
    const inputIdUser = updateModal.querySelector('#idUser')
    inputIdUser.value = id
    
    const nombre = button.getAttribute('nombre')
    const apellido = button.getAttribute('apellido')
    const mail = button.getAttribute('mail')
    
    const inputNombre = updateModal.querySelector('#nombre')
    const inputApellido = updateModal.querySelector('#apellido')
    const inputCorreo = updateModal.querySelector('#correo')
    
    inputNombre.value = nombre
    inputApellido.value = apellido
    inputCorreo.value = mail

    //const dataUser = updateModal.querySelector('.modal-body #dataUser')

    //dataUser.innerHTML = nombre + " " + apellido
    
    
  })
}