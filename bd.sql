INSERT INTO ComunidadesCNPV (COD_INE, Departamento, Provincia, Municipio, Comunidad, Empadronados, Viviendas, Latitud, Longitud)
VALUES
('123456', 'Departamento 1', 'Provincia 1', 'Municipio 1', 'Comunidad 1', 500, 120, -16.123456, -68.654321),
('789012', 'Departamento 2', 'Provincia 2', 'Municipio 2', 'Comunidad 2', 300, 80, -17.987654, -69.123456),
('345678', 'Departamento 3', 'Provincia 3', 'Municipio 3', 'Comunidad 3', 700, 150, -18.654321, -70.987654),
('901234', 'Departamento 4', 'Provincia 4', 'Municipio 4', 'Comunidad 4', 400, 100, -19.321456, -71.654321),
('567890', 'Departamento 5', 'Provincia 5', 'Municipio 5', 'Comunidad 5', 600, 130, -20.123456, -72.987654);
INSERT INTO DatosGenerales (Departamento, Municipio, NumeroLocalidadesAfectadas, NombreAlcaldeMunicipal, TelefonoCelular, FechaLlenadoFormulario, FechaEventoAdverso, HoraEventoAdverso)
VALUES
('Departamento 1', 'Municipio 1', 3, 'Alcalde 1', '1234567890', '2023-08-08', '2023-08-01', '10:00:00'),
('Departamento 2', 'Municipio 2', 2, 'Alcalde 2', '9876543210', '2023-08-08', '2023-07-15', '14:30:00'),
('Departamento 3', 'Municipio 3', 4, 'Alcalde 3', '2345678901', '2023-08-08', '2023-06-20', '09:45:00'),
('Departamento 4', 'Municipio 4', 1, 'Alcalde 4', '8901234567', '2023-08-08', '2023-09-05', '16:15:00'),
('Departamento 5', 'Municipio 5', 2, 'Alcalde 5', '5678901234', '2023-08-08', '2023-05-10', '11:30:00');
INSERT INTO InformacionPoblacionAfectada (TotalPoblacionAfectada, TotalFamiliasAfectadas, TotalFamiliasDamnificadas, Formulario_ID)
VALUES
(1500, 300, 100, 1),
(900, 180, 60, 2),
(2100, 420, 140, 3),
(1200, 240, 80, 4),
(1800, 360, 120, 5);
INSERT INTO TipoEventoAdverso (Inundacion, Riada, Deslizamiento, Helada, Granizada, Sequia, Incendios, Otros, Formulario_ID)
VALUES
(TRUE, FALSE, TRUE, FALSE, FALSE, FALSE, TRUE, 'Otros tipos de eventos', 1),
(FALSE, TRUE, FALSE, TRUE, FALSE, FALSE, FALSE, NULL, 2),
(TRUE, FALSE, FALSE, FALSE, TRUE, TRUE, FALSE, NULL, 3),
(FALSE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE, NULL, 4),
(TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, 'Incendio forestal', 5);
INSERT INTO ImpactoPoblacion (GrupoEtario, NumeroFallecidos, NumeroHeridos, NumeroDesaparecidos, Observaciones, Formulario_ID)
VALUES
('Niños', 2, 10, 3, 'Observaciones sobre niños', 1),
('Adultos', 1, 5, 1, 'Observaciones sobre adultos', 2),
('Personas mayores', 3, 2, 0, 'Observaciones sobre personas mayores', 3),
('Jóvenes', 0, 3, 1, 'Observaciones sobre jóvenes', 4),
('Todos', 5, 15, 5, 'Observaciones generales', 5);
INSERT INTO NecesidadPrimeraRespuesta (Equipo, Requerimiento, Observaciones, Formulario_ID)
VALUES
('Equipo 1', TRUE, 'Necesidades equipo 1', 1),
('Equipo 2', FALSE, 'Necesidades equipo 2', 2),
('Equipo 3', TRUE, 'Necesidades equipo 3', 3),
('Equipo 4', TRUE, 'Necesidades equipo 4', 4),
('Equipo 5', FALSE, 'Necesidades equipo 5', 5);
INSERT INTO Salud (NombreEstablecimientoSalud, LocalidadComunidad, NivelAtencion, DañoParcial, DañoTotal, NumeroMedicos, NumeroEnfermeros, NumeroOtros, COD_INE, Formulario_ID)
VALUES
('Hospital 1', 'Localidad 1', 'Primer Nivel', TRUE, FALSE, 10, 5, 3, '123456', 1),
('Hospital 2', 'Localidad 2', 'Segundo Nivel', FALSE, TRUE, 8, 6, 4, '789012', 2),
('Hospital 3', 'Localidad 3', 'Tercer Nivel', TRUE, TRUE, 5, 7, 2, '345678', 3),
('Hospital 4', 'Localidad 4', 'Primer Nivel', FALSE, FALSE, 12, 3, 5, '901234', 4),
('Hospital 5', 'Localidad 5', 'Segundo Nivel', FALSE, FALSE, 9, 4, 6, '567890', 5);
INSERT INTO NecesidadesSalud (BotiquinIncendio, BotiquinInundacion, BotiquinSequia, OtrasNecesidades, Observaciones, Formulario_ID)
VALUES
(TRUE, FALSE, TRUE, 'Otras necesidades médicas', 'Observaciones necesidades salud 1', 1),
(FALSE, TRUE, FALSE, 'Otras necesidades médicas', 'Observaciones necesidades salud 2', 2),
(TRUE, TRUE, FALSE, NULL, 'Observaciones necesidades salud 3', 3),
(FALSE, FALSE, TRUE, 'Otras necesidades médicas', 'Observaciones necesidades salud 4', 4),
(FALSE, TRUE, TRUE, 'Otras necesidades médicas', 'Observaciones necesidades salud 5', 5);
INSERT INTO InfraestructuraVial (ViasAccesoPuentes, TramoLocalidadLocalidad, DañoParcialKm, DañoTotalKm, NecesidadesInmediatas, Observaciones, Formulario_ID)
VALUES
('Vías principales 1', 'Tramo localidad 1', 5.5, 2.3, 'Necesidades en puentes', 'Observaciones infraestructura vial 1', 1),
('Vías secundarias 2', 'Tramo localidad 2', 3.2, 1.8, 'Necesidades en caminos', 'Observaciones infraestructura vial 2', 2),
('Vías principales 3', 'Tramo localidad 3', 4.0, 3.7, 'Necesidades en puentes', 'Observaciones infraestructura vial 3', 3),
('Vías secundarias 4', 'Tramo localidad 4', 2.1, 1.5, 'Necesidades en caminos', 'Observaciones infraestructura vial 4', 4),
('Vías principales 5', 'Tramo localidad 5', 6.7, 5.2, 'Necesidades en puentes', 'Observaciones infraestructura vial 5', 5);
INSERT INTO InfraestructuraPublica (LocalidadComunidad, TipoEstructura, DañoParcial, DañoTotal, Observaciones, COD_INE, Formulario_ID)
VALUES
('Localidad 1', 'Escuela', FALSE, TRUE, 'Observaciones infraestructura pública 1', '123456', 1),
('Localidad 2', 'Centro de salud', TRUE, FALSE, 'Observaciones infraestructura pública 2', '789012', 2),
('Localidad 3', 'Comisaría', TRUE, TRUE, 'Observaciones infraestructura pública 3', '345678', 3),
('Localidad 4', 'Oficina municipal', FALSE, FALSE, 'Observaciones infraestructura pública 4', '901234', 4),
('Localidad 5', 'Centro de acopio', FALSE, FALSE, 'Observaciones infraestructura pública 5', '567890', 5);
INSERT INTO Educacion (NombreEstablecimientoEducativo, Comunidad, DañoParcial, DañoTotal, SuspensionClases, PerdidaMaterialEducativo, FuncionaComoAlbergue, COD_INE, Formulario_ID)
VALUES
('Escuela 1', 'Comunidad 1', FALSE, TRUE, TRUE, TRUE, FALSE, '123456', 1),
('Colegio 2', 'Comunidad 2', TRUE, FALSE, FALSE, FALSE, TRUE, '789012', 2),
('Escuela 3', 'Comunidad 3', TRUE, TRUE, TRUE, TRUE, FALSE, '345678', 3),
('Colegio 4', 'Comunidad 4', FALSE, FALSE, FALSE, FALSE, TRUE, '901234', 4),
('Escuela 5', 'Comunidad 5', FALSE, FALSE, TRUE, TRUE, FALSE, '567890', 5);
INSERT INTO AfectacionAlumnosProfesoresAdministrativos (EstablecimientoEducativo, TotalAfectadosEstudiantes, TotalAfectadosProfesores, TotalAfectadosAdministrativos, Observaciones, Formulario_ID)
VALUES
('Escuela 1', 50, 5, 2, 'Aulas dañadas', 1),
('Colegio 2', 100, 10, 3, 'Necesidad de material educativo', 2),
('Escuela 3', 30, 3, 1, 'Alumnos alojados en el centro educativo', 3),
('Colegio 4', 80, 8, 4, 'Falta de acceso al agua potable', 4),
('Escuela 5', 25, 2, 1, 'Falta de energía eléctrica', 5);
INSERT INTO ImpactoVivienda (Comunidad, NumeroViviendasDañoParcial, NumeroViviendasDañoTotal, NecesidadesInmediatas, Observaciones, COD_INE, Formulario_ID)
VALUES
('Comunidad 1', 10, 2, 'Reparación de techos', 'Necesidad de carpas temporales', '123456', 1),
('Comunidad 2', 5, 1, 'Daños en estructuras', 'Falta de suministro de alimentos', '789012', 2),
('Comunidad 3', 8, 3, 'Necesidad de kits de higiene', 'Viviendas inhabitables', '345678', 3),
('Comunidad 4', 15, 0, 'Necesidad de materiales de construcción', 'Falta de servicios básicos', '901234', 4),
('Comunidad 5', 3, 1, 'Daños en paredes', 'Escasez de agua potable', '567890', 5);
INSERT INTO ImpactoAgropecuario (TipoCultivo, HasAfectadas, HasPerdidas, NecesidadesInmediatas, Observaciones, Formulario_ID)
VALUES
('Maíz', 100, 50, 'Replantar cultivos', 'Daños en sistemas de riego', 1),
('Café', 30, 20, 'Necesidad de insumos agrícolas', 'Falta de acceso a mercados', 2),
('Plátano', 80, 70, 'Fertilización de suelos', 'Pérdida de ingresos', 3),
('Frijol', 50, 40, 'Control de plagas', 'Daños en infraestructura agrícola', 4),
('Hortalizas', 25, 15, 'Rehabilitación de parcelas', 'Falta de asistencia técnica', 5);
INSERT INTO DañosNecesidadesPecuarias (TipoEspecie, Raza, NumeroAnimalesAfectados, NumeroAnimalesMuertos, NecesidadesInmediatas, Formulario_ID)
VALUES
('Vacuno', 'Holstein', 20, 5, 'Atención veterinaria urgente', 1),
('Porcino', 'Yorkshire', 15, 2, 'Suministro de alimento', 2),
('Aviar', 'Plymouth Rock', 100, 30, 'Protección contra depredadores', 3),
('Caprino', 'Alpino', 10, 1, 'Reparación de cercas', 4),
('Ovino', 'Dorper', 8, 0, 'Vacunación preventiva', 5);
INSERT INTO DañosInfraestructuraProductiva (Tipo, NumeroDañoParcial, NumeroDañoTotal, Formulario_ID)
VALUES
('Silos', 2, 0, 1),
('Galpones', 1, 1, 2),
('Almacenes', 3, 2, 3),
('Invernaderos', 0, 1, 4),
('Establos', 1, 0, 5);
INSERT INTO ImpactoProteccion (PoblacionMayorVulnerabilidad, NumeroMujeres, NumeroHombres, TotalNecesidad, ApoyoPsicosocial, ReposicionDocIdentidad, Observaciones, Formulario_ID)
VALUES
('Adultos mayores', 10, 5, 15, TRUE, FALSE, 'Necesidad de atención médica especializada', 1),
('Niños y niñas', 20, 18, 38, TRUE, TRUE, 'Reposición de documentos perdidos', 2),
('Personas con discapacidad', 5, 3, 8, TRUE, FALSE, 'Necesidad de apoyo psicológico', 3),
('Mujeres embarazadas', 3, 2, 5, TRUE, TRUE, 'Reposición de medicamentos', 4),
('Personas en situación de calle', 7, 9, 16, TRUE, FALSE, 'Necesidad de refugio', 5);
INSERT INTO AyudaHumanitaria (AyudaHumanitaria, Observaciones, Formulario_ID)
VALUES
('Kits de alimentos', 'Necesidad de repartir en comunidades', 1),
('Agua potable', 'Escasez de agua para consumo', 2),
('Medicamentos', 'Necesidad de suministros médicos', 3),
('Ropa y mantas', 'Falta de abrigo en comunidades', 4),
('Artículos de higiene', 'Necesidad de productos básicos', 5);
INSERT INTO ComunidadLocalidadAfectada (ComunidadLocalidadBarrio, COD_INE, Formulario_ID)
VALUES
('Comunidad 1', '123456', 1),
('Comunidad 2', '789012', 2),
('Comunidad 3', '345678', 3),
('Comunidad 4', '901234', 4),
('Comunidad 5', '567890', 5);
INSERT INTO ResponsableFormulario (NombreCompletoResponsable, Cargo, FonoCelular, Email, Formulario_ID)
VALUES
('Juan Pérez', 'Coordinador', '123456789', 'juan@example.com', 1),
('María Gómez', 'Supervisor', '987654321', 'maria@example.com', 2),
('Carlos Rodríguez', 'Director', '456789123', 'carlos@example.com', 3),
('Ana Martínez', 'Líder de Campo', '789123456', 'ana@example.com', 4),
('Luis Sánchez', 'Coordinador de Ayuda', '654321987', 'luis@example.com', 5);
