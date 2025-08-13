# Use the official R Shiny image
FROM rocker/shiny:latest

# Copy app.R to the Shiny server directory
COPY app.R /srv/shiny-server/app.R

# Expose the default Shiny port
EXPOSE 3838

# Set permissions (optional, for Windows compatibility)
RUN chown -R shiny:shiny /srv/shiny-server

# Run the Shiny server
CMD ["/usr/bin/shiny-server"]
