# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150831161631) do

  create_table "ayudas", force: :cascade do |t|
    t.string   "nombre"
    t.string   "url"
    t.string   "opcional"
    t.text     "descripcion"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
  end

  create_table "balances", force: :cascade do |t|
    t.integer  "reference_id"
    t.float    "pedido_prendas"
    t.float    "jornada_laboral"
    t.float    "talk_time"
    t.float    "tiempo_total"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "operacion_maquina_id"
  end

  add_index "balances", ["operacion_maquina_id"], name: "index_balances_on_operacion_maquina_id"
  add_index "balances", ["reference_id"], name: "index_balances_on_reference_id"

  create_table "cateayudas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.integer  "documento_id"
    t.string   "nombre"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "numero_documento"
    t.string   "correo"
    t.string   "telefono"
  end

  create_table "colors", force: :cascade do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors_fichatecnicas", force: :cascade do |t|
    t.integer  "fichatecnica_id"
    t.integer  "color_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "costo_fijos", force: :cascade do |t|
    t.float    "arrendamiento"
    t.float    "servicios_publicos"
    t.float    "nomina"
    t.float    "prestaciones"
    t.float    "otros_gastos"
    t.float    "papeleria"
    t.float    "honorarios"
    t.float    "gastos_mercadeo"
    t.float    "impuestos_municipales"
    t.float    "otros"
    t.float    "total_costos"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "costo_generals", force: :cascade do |t|
    t.float    "salario"
    t.float    "salario_porcentaje"
    t.float    "subsidio"
    t.float    "subsidio_procentaje"
    t.float    "total_sueldo"
    t.float    "total_porcentaje"
    t.float    "cesantias"
    t.float    "cesantias_porcentaje"
    t.float    "prima"
    t.float    "prima_procentaje"
    t.float    "vacaciones"
    t.float    "vacaciones_porcentaje"
    t.float    "intereses_cesantias"
    t.float    "total_prestacion"
    t.float    "porcenjatesalud"
    t.float    "salud"
    t.float    "porcentajepension"
    t.float    "pension"
    t.float    "porcentajerprofesional"
    t.float    "rprofesional"
    t.float    "porcentajesena"
    t.float    "sena"
    t.float    "porcentajeicbf"
    t.float    "icbf"
    t.float    "porcentajecajacompensacion"
    t.float    "cajacompensaciontotal"
    t.float    "porcentajetotal_costom"
    t.float    "total_costom"
    t.float    "porcentajetotalneto"
    t.float    "totalneto"
    t.float    "dias_año"
    t.float    "domingos"
    t.float    "festivos"
    t.float    "total_dias"
    t.float    "dlaborales_mes"
    t.float    "costo_dia"
    t.integer  "hlaborales"
    t.float    "costo_hora"
    t.float    "costo_minuto"
    t.float    "recargo_adicional"
    t.float    "total_minuto"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "documentos", force: :cascade do |t|
    t.string   "siglas"
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "especificacions", force: :cascade do |t|
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "especificacions_fichatecnicas", force: :cascade do |t|
    t.integer  "fichatecnica_id"
    t.integer  "especificacion_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "estadoms", force: :cascade do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "estadopros", force: :cascade do |t|
    t.string   "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estandares", force: :cascade do |t|
    t.text     "descripcion"
    t.integer  "ayuda_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "estandars", force: :cascade do |t|
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "estandars_fichatecnicas", force: :cascade do |t|
    t.integer  "fichatecnica_id"
    t.integer  "estandar_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "fichatecnica_colors", force: :cascade do |t|
    t.integer  "fichatecnica_id"
    t.integer  "color_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "fichatecnicas", force: :cascade do |t|
    t.text     "descripcion"
    t.string   "tallapromedio"
    t.integer  "modulo_id"
    t.integer  "talla_id"
    t.integer  "tela_id"
    t.integer  "color_id"
    t.integer  "especificacion_id"
    t.integer  "estandar_id"
    t.integer  "pieza_id"
    t.integer  "reference_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "muestras_file_name"
    t.string   "muestras_content_type"
    t.integer  "muestras_file_size"
    t.datetime "muestras_updated_at"
    t.string   "muestra_file_name"
    t.string   "muestra_content_type"
    t.integer  "muestra_file_size"
    t.datetime "muestra_updated_at"
  end

  create_table "fichatecnicas_estandars", force: :cascade do |t|
    t.integer  "fichatecnica_id"
    t.integer  "estandar_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "fichatecnicas_modulos", force: :cascade do |t|
    t.integer  "fichatecnica_id"
    t.integer  "modulo_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "fichatecnicas_piezas", force: :cascade do |t|
    t.integer  "fichatecnica_id"
    t.integer  "pieza_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "fichatecnicas_procesoexts", force: :cascade do |t|
    t.integer  "fichatecnica_id"
    t.integer  "procesoext_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "fichatecnicas_tallas", force: :cascade do |t|
    t.integer  "fichatecnica_id"
    t.integer  "talla_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "fichatecnicas_telas", force: :cascade do |t|
    t.integer  "fichatecnica_id"
    t.integer  "tela_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "grupos", force: :cascade do |t|
    t.string   "numero_ficha"
    t.string   "nombre"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "imodulos", force: :cascade do |t|
    t.integer  "tinstructor_id"
    t.integer  "modulo_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "imodulos", ["modulo_id"], name: "index_imodulos_on_modulo_id"
  add_index "imodulos", ["tinstructor_id"], name: "index_imodulos_on_tinstructor_id"

  create_table "instructors", force: :cascade do |t|
    t.integer  "documento_id"
    t.string   "numdocumento"
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "email"
    t.integer  "modulo_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "instructors", ["documento_id"], name: "index_instructors_on_documento_id"
  add_index "instructors", ["modulo_id"], name: "index_instructors_on_modulo_id"

  create_table "insumo_fichatecnicas", force: :cascade do |t|
    t.integer  "insumo_id"
    t.integer  "fichatecnica_id"
    t.string   "cantidad"
    t.string   "observaciones"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "unidade_id"
  end

  create_table "insumos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maquinas", force: :cascade do |t|
    t.integer  "serial"
    t.string   "nombre"
    t.integer  "estadom_id"
    t.integer  "modulo_id"
    t.string   "especificaciones"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "especificaciones_file_name"
    t.string   "especificaciones_content_type"
    t.integer  "especificaciones_file_size"
    t.datetime "especificaciones_updated_at"
  end

  create_table "material_fichatecnicas", force: :cascade do |t|
    t.integer  "material_id"
    t.integer  "fichatecnica_id"
    t.string   "cantidad"
    t.string   "observaciones"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "unidade_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medida_tallas", force: :cascade do |t|
    t.integer  "medida_id"
    t.integer  "talla_id"
    t.integer  "fichatecnica_id"
    t.string   "centimetros"
    t.string   "tolerancia"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "medidas", force: :cascade do |t|
    t.string   "medida"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modulos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "tipovestuario_id"
  end

  create_table "moperaciones", force: :cascade do |t|
    t.integer  "omaquina_id"
    t.integer  "operacion_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "moperaciones", ["omaquina_id"], name: "index_moperaciones_on_omaquina_id"
  add_index "moperaciones", ["operacion_id"], name: "index_moperaciones_on_operacion_id"

  create_table "moperarios", force: :cascade do |t|
    t.integer  "imodulo_id"
    t.integer  "operario_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "moperarios", ["imodulo_id"], name: "index_moperarios_on_imodulo_id"
  add_index "moperarios", ["operario_id"], name: "index_moperarios_on_operario_id"

  create_table "omaquinas", force: :cascade do |t|
    t.integer  "moperario_id"
    t.integer  "maquina_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "omaquinas", ["maquina_id"], name: "index_omaquinas_on_maquina_id"
  add_index "omaquinas", ["moperario_id"], name: "index_omaquinas_on_moperario_id"

  create_table "operacion_maquinas", force: :cascade do |t|
    t.integer  "operacion_id"
    t.integer  "maquina_id"
    t.integer  "tioperacion_id"
    t.integer  "fichatecnica_id"
    t.float    "sam"
    t.string   "calibreaguja"
    t.string   "ppp"
    t.string   "margencostura"
    t.string   "guia_acesorios"
    t.text     "observaciones"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "hilo"
    t.integer  "num"
  end

  create_table "operaciones", force: :cascade do |t|
    t.string   "nombre"
    t.string   "sam"
    t.text     "descripcion"
    t.integer  "maquina_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "operarios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "numdocumento"
    t.string   "apellido"
    t.string   "email"
    t.integer  "grupo_id"
    t.integer  "ayuda_id"
    t.integer  "documento_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "pieza_fichatecnicas", force: :cascade do |t|
    t.integer  "pieza_id"
    t.integer  "fichatecnica_id"
    t.string   "cantidad"
    t.string   "observaciones"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "piezas", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "procesoexts", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proveedor_procesoexts", force: :cascade do |t|
    t.integer  "proveedor_id"
    t.integer  "procesoext_id"
    t.text     "descripcion"
    t.text     "observaciones"
    t.string   "precio"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "fichatecnica_id"
  end

  create_table "proveedores", force: :cascade do |t|
    t.integer  "nit"
    t.string   "nombre"
    t.string   "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proyectos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pturnos", force: :cascade do |t|
    t.integer  "proyecto_id"
    t.integer  "turno_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "pturnos", ["proyecto_id"], name: "index_pturnos_on_proyecto_id"
  add_index "pturnos", ["turno_id"], name: "index_pturnos_on_turno_id"

  create_table "references", force: :cascade do |t|
    t.string   "ref"
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "resultbalances", force: :cascade do |t|
    t.integer  "balance_id"
    t.integer  "operario"
    t.integer  "operacion"
    t.integer  "maquina"
    t.float    "sam"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "operacion_maquina_id"
  end

  add_index "resultbalances", ["balance_id"], name: "index_resultbalances_on_balance_id"
  add_index "resultbalances", ["operacion_maquina_id"], name: "index_resultbalances_on_operacion_maquina_id"

  create_table "tallas", force: :cascade do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "telas", force: :cascade do |t|
    t.integer  "ref"
    t.string   "nombre"
    t.text     "descripcion"
    t.text     "observaciones"
    t.integer  "ayuda_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tinstructors", force: :cascade do |t|
    t.integer  "pturno_id"
    t.integer  "instructor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "tinstructors", ["instructor_id"], name: "index_tinstructors_on_instructor_id"
  add_index "tinstructors", ["pturno_id"], name: "index_tinstructors_on_pturno_id"

  create_table "tioperaciones", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipmoneys", force: :cascade do |t|
    t.string   "siglas"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tipocostos", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tipovestuarios", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "turnos", force: :cascade do |t|
    t.string   "jornada"
    t.datetime "hora_inicio"
    t.datetime "hora_fin"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "unidades", force: :cascade do |t|
    t.string   "tipo"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
