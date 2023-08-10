CREATE TABLE ComunidadesCNPV (
    COD_INE VARCHAR(20)PRIMARY KEY,
    Departamento VARCHAR(100),
    Provincia VARCHAR(100),
    Municipio VARCHAR(100),
	Comunidad VARCHAR(100),
    Empadronados INTEGER,
    Viviendas INTEGER,
    Latitud DOUBLE PRECISION,
    Longitud DOUBLE PRECISION
);

CREATE TABLE DatosGenerales (
    NumeroFormulario SERIAL PRIMARY KEY,
    Departamento VARCHAR(100),
    Municipio VARCHAR(100),
	NumeroLocalidadesAfectadas INTEGER,
    NombreAlcaldeMunicipal VARCHAR(100),
	TelefonoCelular VARCHAR(20),
	FechaLlenadoFormulario DATE,
    FechaEventoAdverso DATE,
    HoraEventoAdverso TIME
);

CREATE TABLE InformacionPoblacionAfectada (
    Id SERIAL PRIMARY KEY,
    TotalPoblacionAfectada INTEGER,
    TotalFamiliasAfectadas INTEGER,
    TotalFamiliasDamnificadas INTEGER,
    Formulario_ID INTEGER REFERENCES DatosGenerales (NumeroFormulario)
);

CREATE TABLE TipoEventoAdverso (
    Id SERIAL PRIMARY KEY,
    Inundacion BOOLEAN,
    Riada BOOLEAN,
    Deslizamiento BOOLEAN,
    Helada BOOLEAN,
    Granizada BOOLEAN,
    Sequia BOOLEAN,
    Incendios BOOLEAN,
    Otros VARCHAR (50),
    Formulario_ID INTEGER REFERENCES DatosGenerales (NumeroFormulario)
);

CREATE TABLE ImpactoPoblacion (
    Id SERIAL PRIMARY KEY,
    GrupoEtario VARCHAR(50),
    NumeroFallecidos INTEGER,
    NumeroHeridos INTEGER,
    NumeroDesaparecidos INTEGER,
    Observaciones TEXT,
    Formulario_ID INTEGER REFERENCES DatosGenerales (NumeroFormulario)
);

CREATE TABLE NecesidadPrimeraRespuesta (
    Id SERIAL PRIMARY KEY,
    Equipo VARCHAR(100),
    Requerimiento BOOLEAN,
    Observaciones TEXT,
    Formulario_ID INTEGER REFERENCES DatosGenerales (NumeroFormulario)
);

CREATE TABLE Salud (
    Id SERIAL PRIMARY KEY,
    NombreEstablecimientoSalud VARCHAR(100),
    LocalidadComunidad VARCHAR(100),
    NivelAtencion VARCHAR(50),
	DañoParcial BOOLEAN,
    DañoTotal BOOLEAN,
    NumeroMedicos INTEGER,
    NumeroEnfermeros INTEGER,
    NumeroOtros INTEGER,
	COD_INE VARCHAR (20) REFERENCES ComunidadesCNPV (COD_INE),
    Formulario_ID INTEGER REFERENCES DatosGenerales (NumeroFormulario)
);

CREATE TABLE NecesidadesSalud (
    Id SERIAL PRIMARY KEY,
    BotiquinIncendio BOOLEAN,
    BotiquinInundacion BOOLEAN,
    BotiquinSequia BOOLEAN,
    OtrasNecesidades TEXT,
    Observaciones TEXT,
    Formulario_ID INTEGER REFERENCES DatosGenerales (NumeroFormulario)
);

CREATE TABLE InfraestructuraVial (
    Id SERIAL PRIMARY KEY,
    ViasAccesoPuentes VARCHAR(100),
    TramoLocalidadLocalidad VARCHAR(100),
    DañoParcialKm DOUBLE PRECISION,
    DañoTotalKm DOUBLE PRECISION,
    NecesidadesInmediatas TEXT,
    Observaciones TEXT,
    Formulario_ID INTEGER REFERENCES DatosGenerales (NumeroFormulario)
);

CREATE TABLE InfraestructuraPublica (
    Id SERIAL PRIMARY KEY,
    LocalidadComunidad VARCHAR(100),
    TipoEstructura VARCHAR(100),
    DañoParcial BOOLEAN,
    DañoTotal BOOLEAN,
    Observaciones TEXT,
	COD_INE VARCHAR (20) REFERENCES ComunidadesCNPV (COD_INE),
    Formulario_ID INTEGER REFERENCES DatosGenerales (NumeroFormulario)
);

CREATE TABLE ServiciosBasicos (
    Id SERIAL PRIMARY KEY,
    Descripcion VARCHAR(100),
    DañoParcial BOOLEAN,
    DañoTotal BOOLEAN,
    NecesidadesInmediatas TEXT,
    Observaciones TEXT,
    Formulario_ID INTEGER REFERENCES DatosGenerales (NumeroFormulario)
);

CREATE TABLE Educacion (
    Id SERIAL PRIMARY KEY,
    NombreEstablecimientoEducativo VARCHAR(100),
    Comunidad VARCHAR(100),
    DañoParcial BOOLEAN,
    DañoTotal BOOLEAN,
    SuspensionClases BOOLEAN,
    PerdidaMaterialEducativo BOOLEAN,
    FuncionaComoAlbergue BOOLEAN,
	COD_INE VARCHAR (20) REFERENCES ComunidadesCNPV (COD_INE),
    Formulario_ID INTEGER REFERENCES DatosGenerales (NumeroFormulario)
);

CREATE TABLE AfectacionAlumnosProfesoresAdministrativos (
    Id SERIAL PRIMARY KEY,
    EstablecimientoEducativo VARCHAR(100),
    TotalAfectadosEstudiantes INTEGER,
	TotalAfectadosProfesores INTEGER,
	TotalAfectadosAdministrativos INTEGER,
    Observaciones TEXT,
    Formulario_ID INTEGER REFERENCES DatosGenerales (NumeroFormulario)
);

CREATE TABLE ImpactoVivienda (
    Id SERIAL PRIMARY KEY,
    Comunidad VARCHAR(100),
    NumeroViviendasDañoParcial INTEGER,
    NumeroViviendasDañoTotal INTEGER,
    NecesidadesInmediatas TEXT,
    Observaciones TEXT,
	COD_INE VARCHAR (20) REFERENCES ComunidadesCNPV (COD_INE),
    Formulario_ID INTEGER REFERENCES DatosGenerales (NumeroFormulario)
);

CREATE TABLE ImpactoAgropecuario (
    Id SERIAL PRIMARY KEY,
    TipoCultivo VARCHAR(100),
    HasAfectadas DOUBLE PRECISION,
    HasPerdidas DOUBLE PRECISION,
    NecesidadesInmediatas TEXT,
    Observaciones TEXT,
    Formulario_ID INTEGER REFERENCES DatosGenerales (NumeroFormulario)
);

CREATE TABLE DañosNecesidadesPecuarias (
    Id SERIAL PRIMARY KEY,
    TipoEspecie VARCHAR(100),
    Raza VARCHAR(100),
    NumeroAnimalesAfectados INTEGER,
    NumeroAnimalesMuertos INTEGER,
    NecesidadesInmediatas TEXT,
    Formulario_ID INTEGER REFERENCES DatosGenerales (NumeroFormulario)
);

CREATE TABLE DañosInfraestructuraProductiva (
    Id SERIAL PRIMARY KEY,
    Tipo VARCHAR(100),
    NumeroDañoParcial INTEGER,
    NumeroDañoTotal INTEGER,
    Formulario_ID INTEGER REFERENCES DatosGenerales (NumeroFormulario)
);

CREATE TABLE ImpactoProteccion (
    Id SERIAL PRIMARY KEY,
    PoblacionMayorVulnerabilidad VARCHAR(100),
    NumeroMujeres INTEGER,
    NumeroHombres INTEGER,
    TotalNecesidad INTEGER,
    ApoyoPsicosocial BOOLEAN,
    ReposicionDocIdentidad BOOLEAN,
    Observaciones TEXT,
    Formulario_ID INTEGER REFERENCES DatosGenerales (NumeroFormulario)
);

CREATE TABLE AyudaHumanitaria (
    Id SERIAL PRIMARY KEY,
	AyudaHumanitaria VARCHAR,
    Observaciones TEXT,
    Formulario_ID INTEGER REFERENCES DatosGenerales (NumeroFormulario)
);

CREATE TABLE ComunidadLocalidadAfectada (
    Id SERIAL PRIMARY KEY,
    ComunidadLocalidadBarrio VARCHAR(100),
	COD_INE VARCHAR (20) REFERENCES ComunidadesCNPV (COD_INE),
	Formulario_ID INTEGER REFERENCES DatosGenerales (NumeroFormulario)
);

CREATE TABLE ResponsableFormulario (
    NombreCompletoResponsable VARCHAR(100),
	Cargo VARCHAR (30),
	FonoCelular VARCHAR(20),
	Email VARCHAR (100),
	Formulario_ID INTEGER REFERENCES DatosGenerales (NumeroFormulario)
);