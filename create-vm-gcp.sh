#!/bin/bash

# Set the name of your project
export PROJECT_NAME="elegant-azimuth-350713"

# Set the name of the VM instance you want to create
export VM_NAME="vm-demo-via-bash"

# Set the zone where you want to create the VM
export ZONE="us-central1-a"

# Set the machine type of the VM
export MACHINE_TYPE="e2-micro"

# Set the image to use for the VM
export IMAGE_FAMILY="ubuntu-2004-lts"
export IMAGE_PROJECT="ubuntu-os-cloud"

# Authenticate with your Google Cloud account
# gcloud auth login

# Authenticate with your Google Cloud account using a service account
# gcloud auth activate-service-account --key-file=$(pwd)/service-key.json
# Set the service account key as an environment variable
export GOOGLE_APPLICATION_CREDENTIALS=$(cat <<EOF
{
  "type": "service_account",
  "project_id": "elegant-azimuth-350713",
  "private_key_id": "af7ab1db3f6fb04f42591a19d78eb0d66d10d588",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQDnME4YQzhWHidW\nDyklk55rfHPx8jYrBbGfDlULVs5D0AOsiQmZZ9gye+DjD2wi1sAoKJIUTW65bCTD\nUz79QNEx17Wz7zIi4fkGfZqSo5HapPic4RxGwyd7lFT7dwmurB/jpBSJZBTfq5BA\nZCbjwbq5yN84siBuQkRuceKQZRtmDPkfTdKEUOPn2oGiR68LBizzz4xf8+8nZ6Lu\nW4bKk7DSxJHhxjuc3pNLpoYv75F4o9nMUvHa0poGpcEA6roOQgETmXbXu1PVIqvZ\n0mL/ySJPrJZmwz1FGS0tboPElNP36nUtu+O7oyzVUFcM1wSIi8a61CbPBQwSedtV\n/1SqH92rAgMBAAECggEAcB1G4hFHMswwu1Vi2Ow7uViDSePyTO7X8pCawYL5SH2K\nKpPSaeioOeNFbhe+ky6dxVvXa60ZcyZ0tZybQWm7iXZYkcgAAlaf03v6B/727pdu\nUXYBpndhoFaQ19okgebLGDQsGWzFiqrCq9dl3LHIgexeBDqt64qLcRwdiXTe0p+v\n38+rjFHu3uz+herizvFsgJZbvEZEttHK6DsBodBssBlmapDcwRPue8zClRNrzDYP\n+R3kYzU8NVrEFp5yspREHmQ/D7/3985NJCzowaE6ImKdvcbNpHB+Y7xRFyxPe+NM\n0w5n7CRHr9Ebw6HHKIZEIwX8NWzQ+yxNn5YvnIB1EQKBgQD7wLJ52Iir9EcAdcyV\npBUgGXTuWmsQGOLGrUAvY15WaC/rRLYkdGkAgwgNMgR+l9K9D0qKrUCoB2kmINMj\nUft9zv5vkGqkpmCO9h9qeqV28Gh6njxV/+IKaATfknyL90DIF1FYkJvbkGXtk6Pl\nzVzGrx1qvcvGDTRp7wNmlteq1QKBgQDrFssRkAuYlkDl8vEMiCRU/ge2wtcbv937\nUFCqcTpseJyOezz6SjQjnMpeXSB4c/8i5iE/jias2Wc4QaYBJe53pcbRspTpTvWf\nyx1/PdZ1Eb1p9fO6u6c0ZLM9e+ofHUyzdtK3rMZdRSrB+XP81XaWKX/vem2gfjaA\nuTnUgOymfwKBgHpSN6XSWx3JtBH6KqxurEELfXAuiKSqos1L8srTqkurldTnbuSp\nlzdDc08OBXcJB8EKw/o7khXSe/mlq1EXDW4kfCXy8o4LtRDhb4RKEUmIKAukBMb4\nbHkH744927waJ+TQx5qTsNbvA0d7HACVVsXG4jEyBOe3FMd/9ZQMKL/9AoGAGabI\nC6eLDGBAvpaOpM5qIHgDgXarIBUEdLqjwqVOOa3Db2yVD75vB//AuSEyPNJzYWx4\n7kVlhPDH6YSIR5HK/nUxR4pT401BUelI06x8rRN9doVmzdZR/U6LnEbcGf8Jcn+h\nqHcKwfydGMNOW6UzJllq40eZlKyQ5+TOIZjbuaMCgYBdI7G6tao+os8scRV7f9p2\nwM/Z5LwJOdtdr2galERPSMaiO+oyWdFkC+Eo7tAuBkf3orI/Yyyqhy6FRihWpNQN\nfV0HFJjLcuK0Z2oHdo261oi0mIbti44pWEfqWvjTga7qg5JKpF91psEApf9KSg7P\nfq/ZT1PLQ42GGR3fmGgTlQ==\n-----END PRIVATE KEY-----\n",
  "client_email": "gcp-execute@elegant-azimuth-350713.iam.gserviceaccount.com",
  "client_id": "101291671287498485716",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/gcp-execute%40elegant-azimuth-350713.iam.gserviceaccount.com"
}

EOF
)


# Set your project as the default project
gcloud config set project $PROJECT_NAME

# Create a new VM instance
gcloud compute instances create $VM_NAME \
  --zone=$ZONE \
  --machine-type=$MACHINE_TYPE \
  --image-family=$IMAGE_FAMILY \
  --image-project=$IMAGE_PROJECT
