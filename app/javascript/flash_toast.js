

window.toasts = document.querySelectorAll('[data-flash-toast]')
window.toasts.forEach((toast) => {
  if (!toast.textContent.trim()) return;
  Toastify({text: toast.textContent, close: true, style: {background: '#8bc34a'}}).showToast()
})

