import { pool } from "../config/db.js";

export const createIncidencia = async (asunto, tipo, descripcion, imagen, estado, id_usuario) => {
  const [result] = await pool.query(
    'INSERT INTO Incidencias (asunto, tipo, descripcion, imagen, estado, fecha_de_creacion, id_usuario) VALUES (?, ?, ?, ?, ?, NOW(), ?)',
    [asunto, tipo, descripcion, imagen, estado, id_usuario]
  );
  return result.insertId;
};


export const getIncidents = async (filters = {}) => {
  let query = 'SELECT * FROM Incidencias WHERE 1=1';
  const params = [];

  if (filters.tipo) {
    query += ' AND tipo = ?';
    params.push(filters.tipo);
  }
  if (filters.estado) {
    query += ' AND estado = ?';
    params.push(filters.estado);
  }
  if (filters.id_usuario) {
    query += ' AND id_usuario = ?';
    params.push(filters.id_usuario);
  }
  if (filters.fecha_de_creacion) {
    query += ' AND DATE(fecha_de_creacion) = ?';
    params.push(filters.fecha_de_creacion);
  }

  const [rows] = await pool.query(query, params);
  return rows;
};


export const updateIncident = async (id, asunto, tipo, descripcion, imagen, estado) => {
  const [result] = await pool.query(
    'UPDATE Incidencias SET asunto = ?, tipo = ?, descripcion = ?, imagen = ?, estado = ?, fecha_de_actualizacion = NOW() WHERE id = ?',
    [asunto, tipo, descripcion, imagen, estado, id]
  );
  return result.affectedRows;
};


export const deleteIncident = async (id) => {
  const [result] = await pool.query(
    'DELETE FROM Incidencias WHERE id = ?',
    [id]
  );
  return result.affectedRows;
};


