# Use the official Python base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire app directory into the container
COPY . .

# Expose the port your Flask app is running on
EXPOSE 8080

# Run the Flask app
CMD ["python", "app.py"]
