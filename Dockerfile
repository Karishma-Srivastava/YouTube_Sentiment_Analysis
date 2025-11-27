FROM python:3.9-slim-buster
 
 # Set working directory
 WORKDIR /main
 
 # Copy requirements file
 COPY requirements.txt .
 
 # Install dependencies
 RUN pip install --no-cache-dir -r requirements.txt
 
 # Copy the rest of the application code
 COPY . /main
 
 # Expose the port the app runs on
 EXPOSE 5000
 
 # Command to run the application
 CMD ["python", "main.py"]

 WORKDIR /main
 COPY requirements.txt .
 RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
 COPY . .
