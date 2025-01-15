FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the app files
COPY . .

# Expose the port
EXPOSE 5001

# Run the application
CMD ["flask", "run", "--host=0.0.0.0", "--port=5001"]
