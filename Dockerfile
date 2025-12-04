FROM python:3.11-slim-buster

# Set working directory
WORKDIR /app

# Copy requirements
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all project files into the container
COPY . .

# Expose the port your app runs on
EXPOSE 5000

# Run your actual application
CMD ["python", "main.py"]
