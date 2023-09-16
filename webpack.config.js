const path = require("path"),
  settings = require("./settings");

module.exports = {
  entry: {
    App: "c:/Users/Istvan/Local Sites/unlockwpvideo/app/public/wp-content/themes/unlock-wp-theme/js/scripts.js",
  },
  output: {
    path: path.resolve(
      "c:/Users/Istvan/Local Sites/unlockwpvideo/app/public/wp-content/themes/unlock-wp-theme/js/"
    ),
    filename: "scripts-bundled.js",
  },
  module: {
    rules: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        use: {
          loader: "babel-loader",
          options: {
            presets: ["@babel/preset-env"],
          },
        },
      },
    ],
  },
  module: {
    rules: [
      {
        test: /\.css$/,
        exclude: /node_modules/,
        use: {
          loader: "raw-loader",
        },
      },
    ],
  },
  mode: "development",
};
