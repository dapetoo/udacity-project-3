export BACKEND_IP=0.0.0.0
export API_URL="http://${BACKEND_IP}:3000"
echo "API URL: ${API_URL}"
echo "Wait for backend to become available..."
sleep 5s
echo "Attempting to reach backend..."
if curl "${API_URL}/explore/" 
then
  echo "Backend status OK"
  exit 0
else
  echo "Backend status NOT OK"
  exit 1
fi