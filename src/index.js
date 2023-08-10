
const express = require('express');
const { Pool } = require('pg');
const cors = require('cors');

const app = express();
const port = 3000;

app.use(cors());
// Configuración de la conexión a la base de datos
const pool = new Pool({
user:'postgres',
  host: 'localhost',
  database: 'desastres-database',
  password: 'sql123',
  port: 5432,
});

app.get('/comunidades', async (req, res) => {
  try {
    const result = await pool.query('SELECT * FROM ComunidadesCNPV');
    res.json(result.rows);
  } catch (error) {
    console.error('Error en la consulta:', error);
    res.status(500).json({ error: 'Error en el servidor' });
  }
});

  app.get('/datosgenerales', async (req, res) => {
    try {
      const result = await pool.query('SELECT * FROM DatosGenerales');
      res.json(result.rows);
    } catch (error) {
      console.error('Error en la consulta:', error);
      res.status(500).json({ error: 'Error en el servidor' });
    }
  });
  
  app.get('/informacionpoblacionafectada', async (req, res) => {
    try {
      const result = await pool.query('SELECT * FROM InformacionPoblacionAfectada');
      res.json(result.rows);
    } catch (error) {
      console.error('Error en la consulta:', error);
      res.status(500).json({ error: 'Error en el servidor' });
    }
  });
// ... (código anterior)

app.get('/tipoeventoadverso', async (req, res) => {
    try {
      const result = await pool.query('SELECT * FROM TipoEventoAdverso');
      res.json(result.rows);
    } catch (error) {
      console.error('Error en la consulta:', error);
      res.status(500).json({ error: 'Error en el servidor' });
    }
  });
  
  app.get('/impactopoblacion', async (req, res) => {
    try {
      const result = await pool.query('SELECT * FROM ImpactoPoblacion');
      res.json(result.rows);
    } catch (error) {
      console.error('Error en la consulta:', error);
      res.status(500).json({ error: 'Error en el servidor' });
    }
  });
  
  app.get('/necesidadprimerarespuesta', async (req, res) => {
    try {
      const result = await pool.query('SELECT * FROM NecesidadPrimeraRespuesta');
      res.json(result.rows);
    } catch (error) {
      console.error('Error en la consulta:', error);
      res.status(500).json({ error: 'Error en el servidor' });
    }
  });
// ... (código anterior)

app.get('/salud', async (req, res) => {
    try {
      const result = await pool.query('SELECT * FROM Salud');
      res.json(result.rows);
    } catch (error) {
      console.error('Error en la consulta:', error);
      res.status(500).json({ error: 'Error en el servidor' });
    }
  });
  
  app.get('/necesidadessalud', async (req, res) => {
    try {
      const result = await pool.query('SELECT * FROM NecesidadesSalud');
      res.json(result.rows);
    } catch (error) {
      console.error('Error en la consulta:', error);
      res.status(500).json({ error: 'Error en el servidor' });
    }
  });
  
  app.get('/infraestructuravial', async (req, res) => {
    try {
      const result = await pool.query('SELECT * FROM InfraestructuraVial');
      res.json(result.rows);
    } catch (error) {
      console.error('Error en la consulta:', error);
      res.status(500).json({ error: 'Error en el servidor' });
    }
  });
  // ... (código anterior)

app.get('/educacion', async (req, res) => {
    try {
      const result = await pool.query('SELECT * FROM Educacion');
      res.json(result.rows);
    } catch (error) {
      console.error('Error en la consulta:', error);
      res.status(500).json({ error: 'Error en el servidor' });
    }
  });
  
  app.get('/afectacionalumnosprofesoresadministrativos', async (req, res) => {
    try {
      const result = await pool.query('SELECT * FROM AfectacionAlumnosProfesoresAdministrativos');
      res.json(result.rows);
    } catch (error) {
      console.error('Error en la consulta:', error);
      res.status(500).json({ error: 'Error en el servidor' });
    }
  });
  
  app.get('/impactovivienda', async (req, res) => {
    try {
      const result = await pool.query('SELECT * FROM ImpactoVivienda');
      res.json(result.rows);
    } catch (error) {
      console.error('Error en la consulta:', error);
      res.status(500).json({ error: 'Error en el servidor' });
    }
  });
// ... (código anterior)

app.get('/impactoagropecuario', async (req, res) => {
    try {
      const result = await pool.query('SELECT * FROM ImpactoAgropecuario');
      res.json(result.rows);
    } catch (error) {
      console.error('Error en la consulta:', error);
      res.status(500).json({ error: 'Error en el servidor' });
    }
  });
  
  app.get('/dañosnecesidadespecuarias', async (req, res) => {
    try {
      const result = await pool.query('SELECT * FROM DañosNecesidadesPecuarias');
      res.json(result.rows);
    } catch (error) {
      console.error('Error en la consulta:', error);
      res.status(500).json({ error: 'Error en el servidor' });
    }
  });
  
  app.get('/dañosinfraestructuraproductiva', async (req, res) => {
    try {
      const result = await pool.query('SELECT * FROM DañosInfraestructuraProductiva');
      res.json(result.rows);
    } catch (error) {
      console.error('Error en la consulta:', error);
      res.status(500).json({ error: 'Error en el servidor' });
    }
  });
  
  app.get('/impactoproteccion', async (req, res) => {
    try {
      const result = await pool.query('SELECT * FROM ImpactoProteccion');
      res.json(result.rows);
    } catch (error) {
      console.error('Error en la consulta:', error);
      res.status(500).json({ error: 'Error en el servidor' });
    }
  });
  
  app.get('/ayudahumanitaria', async (req, res) => {
    try {
      const result = await pool.query('SELECT * FROM AyudaHumanitaria');
      res.json(result.rows);
    } catch (error) {
      console.error('Error en la consulta:', error);
      res.status(500).json({ error: 'Error en el servidor' });
    }
  });
  
  app.get('/comunidadlocalidadafectada', async (req, res) => {
    try {
      const result = await pool.query('SELECT * FROM ComunidadLocalidadAfectada');
      res.json(result.rows);
    } catch (error) {
      console.error('Error en la consulta:', error);
      res.status(500).json({ error: 'Error en el servidor' });
    }
  });
  
  app.get('/responsableformulario', async (req, res) => {
    try {
      const result = await pool.query('SELECT * FROM ResponsableFormulario');
      res.json(result.rows);
    } catch (error) {
      console.error('Error en la consulta:', error);
      res.status(500).json({ error: 'Error en el servidor' });
    }
  });

app.listen(port, () => {
  console.log(`Servidor en funcionamiento en http://localhost:${port}`);
});
