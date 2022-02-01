FROM python:3.9.10-slim-buster


RUN pip install --upgrade pip && pip install mkdocs \
mkdocs-techdocs-core


WORKDIR /docs
COPY . .
# Expose MkDocs development server port
EXPOSE 8000

# Start development server by default
ENTRYPOINT ["mkdocs"]
CMD ["serve", "--dev-addr=0.0.0.0:8000"]