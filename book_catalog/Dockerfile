# Dockerfile for book_catalog microservice


# Use Python environment for ARM64 architecture(Mac)
FROM --platform=linux/amd64 python:3.11-alpine

# Set the working directory inside the container to /app
WORKDIR /app

# Copy the dependency list into the container
COPY requirements.txt .

# Install the dependencies listed in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the source code of the book_catalog microservice into contaniner
COPY . .

# Define the command to run the application using uvicorn
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]