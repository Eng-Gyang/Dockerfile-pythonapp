# I use the official python image as base
FROM python:3.9-slim

# set the working directory
WORKDIR /app 

# copy the requirements file (this is optional)
COPY requirements.txt .

# intall dependencies
RUN pip install -r requirements.txt

# copy the application src
COPY . .

# run the command to start the development server
CMD ["python", "main.py"]
