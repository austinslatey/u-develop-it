const express = require('express');
const { result } = require('lodash');
const apiRoutes = require('./routes/apiRoutes');

const inputCheck = require('./utils/inputCheck');

const PORT = process.env.PORT || 3001;
const app = express();
const db = require('./db/connection');

// Express middleware
app.use(express.urlencoded({ extended: false }));
app.use(express.json());


app.use('/api', apiRoutes);



// Default response for any other request (Not Found)
app.use((req, res) => {
  res.status(404).end();
});


//start server after db connection
db.connect(err => {
  if (err) throw err;
  console.log('Database connected.');
  app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
  });
});