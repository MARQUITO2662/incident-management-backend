import express from 'express';
import cors from 'cors';
import authRoutes from './routes/authRoutes.js';
import incidentRoutes from './routes/incidentRoutes.js'; 
import { PORT } from './config/config.js';

const app = express();
app.use(express.json());
app.use(cors());



app.use('/api/auth', authRoutes);
app.use('/api/incidents', incidentRoutes);




  app.listen(PORT, () => console.log(`Server is running on http//localhost:${PORT}`));

