Rails.application.routes.draw do
  get 'pagina/index'
  get 'welcome/index'
  root 'welcome#index'

  get 'nuevo_alumno', to: 'pagina#nuevo_alumno'
  get 'consulta', to: 'pagina#consulta'
  get 'eliminar_user', to: 'pagina#eliminar_user'
  get 'informes', to: 'pagina#informes'
  get 'nuevo_user', to: 'pagina#nuevo_user'
  get 'eliminar_alumno', to: 'pagina#eliminar_alumno'


  post 'crear_alumno', to: 'pagina#crear_alumno'
  post 'crear_user', to: 'pagina#crear_user'
  post 'eliminar_a_alumno', to: 'pagina#eliminar_a_alumno'
  post 'eliminar_a_user', to: 'pagina#eliminar_a_user'
  post 'verificar', to: 'pagina#verificar'
  post 'consulta_alumno', to: 'pagina#consulta_alumno'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
