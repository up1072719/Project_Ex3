# Use the official Python base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Install Mosquitto MQTT broker
RUN apt-get update && apt-get install -y mosquitto

# Copy the entire app directory into the container
COPY . .

# Expose the ports for Flask and Mosquitto
EXPOSE 8080 1883

# Run the Flask app and start the Mosquitto broker
CMD ["bash", "-c", "mosquitto & python app.py"]
