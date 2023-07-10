/* eslint-disable prettier/prettier */
const jwt = require("jsonwebtoken");
const argon2 = require("argon2");
const models = require("../models");

const jwtSecret = "secretKeyJwt";
const jwtExpiration = "1h";

const getAllUsers = (req, res) => {
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

const getUserById = (req, res) => {
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

const editUser = (req, res) => {
  const users = req.body;

  users.id = parseInt(req.params.id, 10);

  models.users
    .update(users)
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

const addUser = (req, res) => {
  const users = req.body;
  // verify if User exist in DB
  models.users.readUsersByEmail(users.email).then(([rows]) => {
    if (rows[0] == null) {
      // hash password in req.body
      const hashOptions = {
        type: argon2.argon2id,
        memoryCost: 2 ** 16,
        timeCost: 5,
        parallelism: 1,
      };
      argon2
        .hash(users.password, hashOptions)
        .then((hashedPassword) => {
          // supprimer le mot de passe de user
          delete req.body.password;

          // ajouter le hashedPassword dans le noveau user qu'on va stocker dans la bdd
          const newUser = { ...users, hashedPassword };

          // créer le noveau user dans la bdd
          models.users
            .insert(newUser)
            .then(([result]) => {
              console.info("result", result);
              res.status(200).send("user created");
            })
            .catch((err) => {
              res.status(500).send(err);
            });
        })
        .catch((err) => {
          res.status(401).send(err);
        });
    }
  });
};

const getUsersByEmail = (req, res) => {
  const { email, password } = req.body;

  models.users
    .readUsersByEmail(email)
    .then(([rows]) => {
      if (rows[0] == null) {
        res.sendStatus(400);
      } else {
        const passwordVerify = argon2.verify(rows[0].hashedPassword, password);

        if (passwordVerify) {
          const token = jwt.sign({ userId: rows[0].id }, jwtSecret, {
            expiresIn: jwtExpiration,
          });
          res.status(200).json({
            message: `Bonjour ${rows[0].firstname} ${rows[0].lastname} vous êtes connecté`,
            token,
          });
        } else {
          res.status(401).send("mot de passe incorrect");
        }
      }
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
};

const deleteUser = (req, res) => {
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
  getAllUsers,
  getUserById,
  editUser,
  addUser,
  deleteUser,
  getUsersByEmail,
};
