 import "bootstrap";

const fetching = () => {
fetch('https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=7522ff79b2ce460c78e068e593355180&units=metric')
.then(data => data.json())
.then((data) => {
  const weather1 = data.weather[0]["main"]
  const weather2 = data.weather[0]["description"]
  const main = data.main["temp"]
  console.log("weather:" , weather1, "main:", main,"description:", weather2)
})
};


fetching();
