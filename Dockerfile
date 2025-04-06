# Use the official KrakenD image
FROM devopsfaith/krakend:latest

# Copy your KrakenD configuration file into the container
COPY krakend.json /etc/krakend/krakend.json

# Expose the port KrakenD will run on
EXPOSE 8081

# Start the KrakenD server
CMD ["krakend", "run", "-c", "/etc/krakend/krakend.json"]
