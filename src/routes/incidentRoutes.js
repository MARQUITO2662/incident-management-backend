import express from 'express';
import { createIncident, deleteIncidentController, getIncidentsController, updateIncidentController } from '../controllers/incidentController.js';
import authMiddleware from '../middlewares/authMiddleware.js';


const router = express.Router();

router.post('/', authMiddleware, createIncident);
router.get('/', authMiddleware ,getIncidentsController);
router.put('/:id', updateIncidentController);
router.delete('/:id', deleteIncidentController );

export default router;
