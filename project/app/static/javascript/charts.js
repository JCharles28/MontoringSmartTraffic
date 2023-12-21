/*

labels correspond to the x-axis
datasets correspond to the y-axis

*/ 

window.onload = function () {
  let ctx1 = document.getElementById("canvas1").getContext("2d");
  new Chart(ctx1, {
    type: "line",
    data: {
      labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun"],
      datasets: [
        {
          label: "My First dataset",
          backgroundColor: "rgb(255, 99, 132)",
          borderColor: "rgb(255, 99, 132)",
          data: [0, 10, 5, 2, 20, 30],
        },
      ],
    },
    options: {
      responsive: true,
      title: {
        display: true,
        text: "Chart.js Line Chart",
      },
    },
    });
};