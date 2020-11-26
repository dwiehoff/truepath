
    RadarChart.defaultConfig.color = function() {};
    RadarChart.defaultConfig.radius = 3;

    var data = [
      {
        className: 'Skills', // optional can be used for styling
        axes: [
          {axis: "strength", value: 13}, 
          {axis: "intelligence", value: 6}, 
          {axis: "charisma", value: 5},  
          {axis: "dexterity", value: 9},  
          {axis: "luck", value: 2}
        ]
      },
    ];
    function randomDataset() {
      return data.map(function(d) {
        return {
          className: d.className,
          axes: d.axes.map(function(axis) {
            return {axis: axis.axis, value: Math.ceil(Math.random() * 10)&rbrace,
          },
        },
      }),
    };