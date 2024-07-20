import bcrypt from 'bcryptjs';
import jwt from 'jsonwebtoken';
import User from '../models/user.js';


export async function register(req, res) {
  try {
    const { nombre, email, password, piso, apartamento, rol, telefono } = req.body;

    // Verificar si el correo electrónico ya está registrado
    const existingUser = await User.findOne({ where: { email } });
    if (existingUser) {
      return res.status(400).json({ error: 'Email already in use' });
    }

    const hashedPassword = await bcrypt.hash(password, 10);
    const user = await User.create({ nombre, email, password: hashedPassword, piso, apartamento, rol, telefono });
    res.status(201).json(user);
  } catch (error) {
    console.error('Error during registration:', error);
    res.status(400).json({ error: error.errors ? error.errors.map(e => e.message) : error.message });
  }
}

export async function login(req, res) {
  try {
    const { email, password } = req.body;
    const user = await User.findOne({ where: { email } });
    if (!user || !(await bcrypt.compare(password, user.password))) {
      return res.status(401).json({ error: 'Invalid credentials' });
    }
    const token = jwt.sign({ id: user.id, email: user.email }, process.env.SECRET_KEY, {
      expiresIn: '3h',
    });
    res.json({ token });
  } catch (error) {
    res.status(400).json({ error: error.message });
  }
}
