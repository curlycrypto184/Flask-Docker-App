# Use the official Python image as the base image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy the Python files and requirements.txt to the container
COPY app.py /app
COPY requirements.txt /app

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port on which the Flask app will run
EXPOSE 5000

# Start the Flask application
#CMD ["python", "app.py"]
CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]
