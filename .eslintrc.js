module.exports = {

  plugins: [
    "coffeescript"
  ],
    "env": {
        "browser": true,
        "commonjs": true,
        "es6": true,
      node: true
    },
    "extends": "eslint:recommended",
    "globals": {
        "Atomics": "readonly",
        "SharedArrayBuffer": "readonly"
    },
      "parser": "eslint-plugin-coffeescript",
  "parserOptions": { 
    "parser": "babel-eslint", // original parser goes here (you must specify one to use this option).
      exclude: [
    "*.css",
    "*.js",
    "*.html"
  ],
    "ecmaVersion": 6
  },
    "rules": {
      semi: "error"
    }
};