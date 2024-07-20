import jwt from 'jsonwebtoken';

const authMiddleware = (req, res, next) => {
  const token = req.header('Authorization')?.split(' ')[1]; 

  if (!token) {
    return res.status(401).json({ error: 'Acceso denegado' });
  }

  try {
    const decoded = jwt.verify(token, process.env.SECRET_KEY); 
    req.user = decoded; 
    next();
  } catch (error) {
    res.status(400).json({ error: 'Token no válido' });
  }
};

export default authMiddleware;
