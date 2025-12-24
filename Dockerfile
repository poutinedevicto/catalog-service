# Use an official Python runtime as a base image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt .

# Install any dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the consumer application code into the container at /app
# LOCAVORA TODO .dockerignore or selective copy to avoid copying unnecessary files
COPY . .

# Run the consumer application
CMD ["python", "main.py"]
