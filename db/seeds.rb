# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Sex.create([{name: 'Femenino'}, {name: 'Masculino'}])

MaritalStatus.create([{name: 'Soltero(a)'}, {name: 'Casado(a)'}, {name: 'Unido(a)'}, {name: 'Divorciado(a)'}])

DriverLicense.create([ { code: 'No Tiene', vehicle: 'No Aplica', active: false }, { code: 'A', vehicle: 'Bicicleta', active: true}, { code: 'B', vehicle: 'Motocicleta', active: true }, { code: 'C', vehicle: 'Automoviles y camionetas', active: true }, { code: 'D', vehicle: 'Camiones livianos', active: true }, { code: 'E', vehicle: 'Transporte publico de Pasajeros', active: true }, { code: 'E1', vehicle: 'Selectivo', active: true }, { code: 'E2', vehicle: 'Autobuses hasta 16 pasajeros', active: true }, { code: 'E3', vehicle: 'Autobuses de mas de 16 pasajeros', active: true }, { code: 'F', vehicle: 'Camiones unitarios', active: true }, { code: 'G', vehicle: 'Camiones combinados', active: true }, { code: 'H', vehicle: 'Transporte de carga peligrosa', active: true }, { code: 'I', vehicle: 'Equipo pesado', active: true }])

PhoneType.create([{name: 'Celular'}, {name: 'Domicilio'}, {name: 'Oficina'}])

Language.create([{name: 'Inglés'}, {name: 'Portugués'}, {name: 'Alemán'}, {name: 'Francés'}, {name: 'Italiano'}, {name: 'Japonés'}, {name: 'Mandarín'}, {name: 'Coreano'}, {name: 'Hebreo'}])

LanguageLevel.create([{name: 'Basico'}, {name: 'Intermedio'}, {name: 'Avanzado'}, {name: 'Nativo'}])

ProfessionalArea.create([{name: 'Administración'}, {name: 'Contabilidad'}, {name: 'Finanzas'}, {name: 'Mercadeo'}, {name: 'Atención al Cliente'}, {name: 'Ventas'}, {name: 'Comercio Exterior'}, {name: 'Comunicación y Relaciones Públicas'}, {name: 'Alta Gerencia'}, {name: 'Banca'}, {name: 'Derecho'}, {name: 'Logística'}, {name: 'Aduana'}, {name: 'Ingeniería Civil'}, {name: 'Mecánica Automotriz'}, {name: 'Publicidad'}, {name: 'Diseño'}, {name: 'Construcción'}, {name: 'Transporte Masivo'}, {name: 'Educación y Docencia'}, {name: 'Recursos Humanos y Capacitación'}, {name: 'Gastronomía'}, {name: 'Consumo Masivo'}, {name: 'Arquitectura'}, {name: 'Administración Pública'}, {name: 'Seguros'}, {name: 'Producción y Manufactura'}, {name: 'Importación'}, {name: 'Aeronáutica'}, {name: 'Marítima'}, {name: 'Salud, Medicina y Farmacia'}, {name: 'Turismo'}, {name: 'Ecología Ambiental'}, {name: 'Minería'}, {name: 'Tecnologías y Sistemas'}, {name: 'Telecomunicaciones'}, {name: 'Periodismo y Comunicación Social'}, {name: 'Secretariado'}, {name: 'Seguridad'}, {name: 'Aseo y Ornato'}, {name: 'Oficios'}])

CompanyType.create([
  { name: 'Microempresa', description: 'Poseen hasta 10 trabajadores' },
  { name: 'Pequeña Empresa', description: 'Poseen entre 11 y 49 trabajadores' },
  { name: 'Mediana Empresa', description: 'Poseen entre 50 y 250 trabajadores' },
  { name: 'Gran Empresa', description: 'Tienen más de 250 trabajadores' }
  ])

DocumentType.create([{ name: 'Cédula'}, { name: 'Cédula de Extranjería'}, { name: 'Pasaporte' }])

User.create([{ email: 'admin@admin.com', password: '123456', password_confirmation: '123456', role_id: 1}])

EducationLevel.create([{ name: 'Primario '}, { name: 'Secundario' }, { name: 'Bachiller' }, {name: 'Técnico'}, { name: 'Universitario' }, { name: 'Postgrado '}, { name: 'Master' }, { name: 'Doctorado' }])

JobType.create ([{ name: 'Tiempo Completo' }, { name: 'Tiempo Parcial' }, { name: 'Por Contrato' }, { name: 'Temporal' }, { name: 'Pasantía'}, { name: 'Fin de Semana' }, { name: 'Freelance' }, { name: 'Por Horas'}])

ExitReason.create ([{ name: 'Renuncia' }, { name: 'Despido' }, { name: 'Fin de Contrato'}, { name: 'Acuerdo Mutuo' }, { name: 'Mutuo Acuerdo' }, { name: 'Otra' }])

EducativeStatus.create ([{ name: 'Graduado', finished: true }, { name: 'En Curso', finished: false }, { name: 'Abandonado', finished: false }])

VacantStatus.create ([{ name: 'Abierta' }, { name: 'En Proceso de Selección' }, { name: 'Cerrada' }])
