Rails.application.routes.draw do
  resources :resultado_costos
  resources :prestaciones
  resources :costomes
  resources :sueldos
  resources :dlaborals
  resources :costo_fijos
  resources :moperaciones
  resources :omaquinas
  resources :moperarios
  resources :imodulos
  resources :tinstructors
  resources :pturnos
  resources :proyectos
  get 'bienvenidos/inicio'

  get 'bienvenidos/index'

  get 'bienvenido/inicio'

  get 'bienvenido/index'

  resources :balances
  resources :ioperarios
  resources :instructors
  resources :ayudas
  resources :unidades
  resources :tipovestuarios
  resources :estadopros
  resources :operacion_maquinas
  resources :pieza_fichatecnicas
  resources :insumo_fichatecnicas
  resources :material_fichatecnicas
  resources :proveedor_procesoexts
  resources :piezas
  resources :insumos
  resources :materials
  resources :medida_tallas
  resources :medidas
  resources :procesoexts
  resources :medidaprendas
  resources :proveedores
  resources :fichatecnicas
  resources :references
  resources :fichatecnicas
  resources :estandars
  resources :especificacions
  resources :fichatecnicas
  resources :estandares
  resources :tioperaciones
  resources :cateayudas
  resources :clientes
  resources :colors
  resources :turnos
  resources :operarios
  resources :telas
  resources :operaciones
  resources :insumos
  resources :tipocostos
  resources :grupos
  resources :tipmoneys
  resources :materiales
  resources :tallas
  resources :maquinas
  resources :estadoms
  resources :documentos
  resources :modulos
  
  resources :references do
    resources :fichatecnicas
  end

  resources :fichatecnicas do
    resources :medida_tallas
  end
  
  resources :fichatecnicas do
     resources :proveedor_procesoexts
  end
  
  resources :fichatecnicas do
     resources :material_fichatecnicas
  end
  
  resources :fichatecnicas do
    resources :insumo_fichatecnicas
  end
  
  resources :fichatecnicas do
    resources :pieza_fichatecnicas
  end
  
  resources :fichatecnicas do
    resources :operacion_maquinas
  end
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
    root 'bienvenidos#inicio'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
