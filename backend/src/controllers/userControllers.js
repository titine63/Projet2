/* eslint-disable prettier/prettier */

const argon2 = require("argon2");

const jwt = require("jsonwebtoken");

const models = require("../models");

const browse = (req, res) => {
  models.users
    .findAll()
    .then(([rows]) => {
      res.send(rows);
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
};

const read = (req, res) => {
  models.users
    .find(req.params.id)
    .then(([rows]) => {
      if (rows[0] == null) {
        res.sendStatus(404);
      } else {
        res.send(rows[0]);
      }
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
};

const readUserByEmail = (req, res) => {
  const { email, password } = req.body;
  models.users.readUserByEmail(email).then(([rows]) => {
    if (rows[0] == null) {
      res.sendStatus(404);
    } else {
      // utiliser argon2
      argon2
        .verify(rows[0].hashedPassword, password)
        .then((verifyPassword) => {
          if (verifyPassword) {
            // générer un token
            const token = jwt.sign({ userId: rows[0].id }, "JWT_SECRET", {
              expiresIn: "24h",
            });
            // envoyer un token dans la réponse
            res.status(200).json({
              message: ` Bonjour ${rows[0].firstname} ${rows[0].lastname}, you are connected !`,
              token,
            });
          } else {
            res.status(401).send("Password incorrect");
          }
        })
        .catch((err) => {
          console.error(err);
          res.sendStatus(500);
        });
    }
  });
};

const edit = (req, res) => {
  const user = req.body;

  // TODO validations (length, format...)

  user.id = parseInt(req.params.id, 10);

  models.users
    .update(user)
    .then(([result]) => {
      if (result.affectedRows === 0) {
        res.sendStatus(404);
      } else {
        res.sendStatus(204);
      }
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
};

const add = (req, res) => {
  const user = req.body;
  // verify if user exists in database
  models.users.readUserByEmail(user.email).then(([rows]) => {
    if (rows[0] == null) {
      // hash le mdp de user
      const hashOptions = {
        type: argon2.argon2id,
        memoryCost: 2 ** 16,
        timeCost: 5,
        parallelism: 1,
      };
      argon2
        .hash(user.password, hashOptions)
        .then((hashedPassword) => {
          // supprimer le mdp de user
          delete req.body.password;
          // ajouter le hashedPassword dans le nouveau user qu'on va stocker dans la bdd
          const newUser = { ...user, hashedPassword };
          // créer le nouveau user dans la bdd
          models.users
            .insert(newUser)
            .then(([result]) => {
              res.location(`/users/${result.insertId}`).sendStatus(201);
            })
            .catch((err) => {
              console.error(err);
              res.status(500).send(err);
            });
        })
        .catch((err) => res.status(401).send(err));
    }
  });
};

const destroy = (req, res) => {
  models.users
    .delete(req.params.id)
    .then(([result]) => {
      if (result.affectedRows === 0) {
        res.sendStatus(404);
      } else {
        res.sendStatus(204);
      }
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
};

module.exports = {
  browse,
  read,
  edit,
  add,
  destroy,
  readUserByEmail,
};
