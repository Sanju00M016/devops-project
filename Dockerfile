FROM python:3.12-slim

#SET THE WORKING DIRECTORY
WORKDIR /usr/app

# Copy requirements.txt before installing dependencies
COPY requirements.txt /usr/app/

# Install dependencies
RUN pip install -r requirements.txt

#COPY THE MAIN.py and ENV
COPY main.py /usr/app/
COPY .env /usr/app/

#COPY THE ENTRYPOINT.SH AND PROVIDE THE PERMISSIOn
COPY entrypoint.sh /usr/app/
RUN chmod +x entrypoint.sh

#RUN THE COMMAND and EXPOSE THE PORT
EXPOSE 8000

#ENTRYPOINT
ENTRYPOINT ["./entrypoint.sh"]

#CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]  