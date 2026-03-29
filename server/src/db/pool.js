import mysql from 'mysql2/promise';
import 'dotenv/config';

const pool = mysql.createPool({
  host: process.env.DB_HOST || 'localhost',
  port: parseInt(process.env.DB_PORT || '3306'),
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || '',
  database: process.env.DB_NAME || 'drenas_rentacar',
  waitForConnections: true,
  connectionLimit: 20,
  queueLimit: 0,
  multipleStatements: true,
});

// Helper that mimics pg-style { rows } return and converts $N placeholders to ?
export async function query(sql, params = []) {
  let mysqlSql = sql;
  // Remove PostgreSQL-specific type casts like ::car_category, ::numeric, ::fuel_type, etc.
  mysqlSql = mysqlSql.replace(/::\w+/g, '');

  // Convert $N placeholders to ? and expand params for duplicate placeholders
  // e.g. "WHERE a = $1 OR b = $1" with params ['x'] → "WHERE a = ? OR b = ?" with params ['x', 'x']
  const expandedParams = [];
  mysqlSql = mysqlSql.replace(/\$(\d+)/g, (_, num) => {
    expandedParams.push(params[parseInt(num) - 1]);
    return '?';
  });

  const [rows] = await pool.query(mysqlSql, expandedParams);
  return { rows };
}

export async function getConnection() {
  return pool.getConnection();
}

export default pool;
