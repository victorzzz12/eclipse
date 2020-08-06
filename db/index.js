const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'eclipse',
  port: 5432
});

//ISSUE: IF USERS PASSWORD OF ANOTHER USER, THEY CAN STILL GET IN
const getUser = (request, response) => {
  pool.query('SELECT * FROM users WHERE UPPER(username) = $1 OR password = $2;', [request.query.username, request.query.password], (error, results) => {
    if (error) {
      throw error;
    }
    request.session = { username: results.rows[0].username };
    response.status(200).json(results.rows[0]);
  });
};

const getCookies = (req, res) => {
  return req.session;
};

// for logged in info
const getCurrentUser = (request, response) => {
  if (request.query.id) {
    // console.log("index.js, getCurrentUser", request.query);
    pool.query('SELECT * FROM users WHERE id = $1', [request.query.id], (error, results) => {
      if (error) {
        throw error;
      }
      response.status(200).json(results.rows[0]);
    });
  }
};

const getUsers = (request, response) => {
  // console.log(request.query);
  pool.query('SELECT * FROM users;', (error, results) => {
    if (error) {
      throw error;
    }
    response.status(200).json(results.rows);
  });
};

const getTasks = (request, response) => {
  // console.log(request.params);
  // console.log(request.query);
  pool.query('SELECT * FROM tasks;', (error, results) => {
    if (error) {
      throw error;
    }
    response.status(200).json(results.rows);
  });
};
const getAchievs = (request, response) => {
  // console.log(request.params);
  // console.log(request.query);
  pool.query('SELECT * FROM achievements;', (error, results) => {
    if (error) {
      throw error;
    }
    response.status(200).json(results.rows);
  });
};

const getLevels = (request, response) => {
  pool.query('SELECT * FROM levels;', (error, results) => {
    if (error) {
      throw error;
    }
    response.status(200).json(results.rows);
  });
};

const addUser = function (user) {
  return pool.query(`
  INSERT INTO users (name, email, password) 
  VALUES ($1, $2, $3)
  RETURNING *`, [user.name, user.email, user.password])
    .then(res => res.rows[0] || null);
};

module.exports = {
  getCookies,
  getUser,
  getCurrentUser,
  getUsers,
  getTasks,
  getAchievs,
  getLevels,
  addUser
};