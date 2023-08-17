const presets = [
    [
      "@babel/env",
      {
        targets: {
          chrome: "72",
        },
        useBuiltIns: "usage",
        corejs: 3,
      },
    ],
  ];
  
  module.exports = { presets };