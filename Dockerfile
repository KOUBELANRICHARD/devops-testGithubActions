# Use a python image so image base
FROM python:3.12.3-slim

# Define a work directory in a container
WORKDIR /app

# Copy a requirements.txt file in the work directory in a container
COPY requirements.txt .

# Install python dependances
RUN pip install --no-cache-dir -r requirements.txt

# Copy all files of application in work directory
COPY . .

# Expose the port for the application to use
EXPOSE 5000

# Define the command to execute when the container start
CMD ["python", "app/test.py"]
