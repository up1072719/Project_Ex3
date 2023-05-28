from flask import Flask, request
import paho.mqtt.client as mqtt

app = Flask(__name__)
broker = "localhost"
topic = "mytopic"

@app.route('/', methods=['POST'])
def handle_post():
    text = request.get_data(as_text=True)

    # Publish data via MQTT
    client = mqtt.Client()
    client.connect(broker, 1883)
    client.publish(topic, text)
    client.disconnect()

    return "Text published via MQTT: " + text

@app.route('/', methods=['GET'])
def handle_get():
    return "This route only accepts POST requests."

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
