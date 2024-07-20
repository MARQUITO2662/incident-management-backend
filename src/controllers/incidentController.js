import { createIncidencia, deleteIncident, getIncidents, updateIncident } from '../models/IncidentModel.js'; // Asegúrate de que la ruta sea correcta

export async function createIncident(req, res) {
  try {
    const { asunto, tipo, descripcion, imagen, estado } = req.body;

    if (!asunto || !tipo || !descripcion || !estado || !imagen) {
      return res.status(400).json({ error: 'Todos los campos son obligatorios' });
    }

    const incidentId = await createIncidencia(asunto, tipo, descripcion, imagen, estado, req.user.id);
    
    res.status(201).json({ id: incidentId });
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
}


export async function getIncidentsController(req, res) {
  try {
    const filters = req.query; 
    const incidents = await getIncidents(filters);
    res.json(incidents);
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
}

export async function updateIncidentController(req, res) {
  const { id } = req.params;
  const { asunto, tipo, descripcion, imagen, estado } = req.body;

  try {
    const actualization = await updateIncident(id, asunto, tipo, descripcion, imagen, estado);
    
    if (actualization === 0) {
      return res.status(404).json({ message: 'Incidencia no encontrada' });
    }

    res.status(200).json({ message: 'Incidencia actualizada' });
  } catch (error) {
    res.status(500).json({ message: 'Error al actualizar la incidencia', error: error.message });
  }
}


export async function deleteIncidentController(req, res) {
  const { id } = req.params;

  try {
    const affectedRows = await deleteIncident(id);

    if (affectedRows === 0) {
      return res.status(404).json({ error: 'Incidencia no encontrada' });
    }

    res.status(204).json({ message: 'Incidencia eliminada'}); 
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
}