import { Sequelize, DataTypes } from 'sequelize';
import { DB_DATABASE, DB_HOST, DB_PASSWORD, DB_PORT, DB_USER } from '../config/config.js';

const sequelize = new Sequelize(DB_DATABASE, DB_USER, DB_PASSWORD, {
  host: DB_HOST,
  dialect: 'mysql',
  port: DB_PORT,
});

const User = sequelize.define('User', {
  nombre: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true,
  },
  password: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  piso: {
    type: DataTypes.STRING,
  },
  apartamento: {
    type: DataTypes.STRING,
  },
  rol: {
    type: DataTypes.ENUM('residente', 'administrador'),
  },
  telefono: {
    type: DataTypes.STRING,
  },
}, {
  tableName: 'usuarios', // Nombre de la tabla en la base de datos
  timestamps: false, // Desactiva los timestamps
});

export default User;
