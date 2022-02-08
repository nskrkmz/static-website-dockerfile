# Dockerfile for static website

Alpine is a lightweight base image, an alpine-based nginx server will meet your needs for many of your projects.

## Notice

I usually deploy my images on GCR (Google Cloud Run). For this reason, the port under nginx.conf is set to 8080. Don't forget to change the value to run on another port.
  

nginx.conf
```
  server {
        listen 8080;
        .
        .
        .
```

## Build
```
docker build -t gcr.io/your-project-name/foo .
```
## Run
```
docker container run --rm -i -t -p XX:8080 gcr.io/your-project-name/foo
```

## Push to the Google Container Registry
```
docker push gcr.io/your-project-name/foo
```
## Deploy in the Google Cloud Run (Requires Google Cloud SDK)
```
gcloud run deploy --image gcr.io/your-project-name/foo --allow-unauthenticated --platform=managed --region SELECTED-REGION
```
