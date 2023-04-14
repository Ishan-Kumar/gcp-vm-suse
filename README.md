# gcp-vm-suse

This script uses the gcloud command-line tool, which is part of the Google Cloud SDK, to create a new VM instance on Google Cloud Platform.

Before running the script, you will need to set the following environment variables:

PROJECT_NAME: The name of your Google Cloud project.
VM_NAME: The name you want to give to the new VM instance.
ZONE: The Google Cloud zone where you want to create the VM.
MACHINE_TYPE: The machine type you want to use for the VM.
IMAGE_FAMILY: The name of the image family you want to use for the VM.
IMAGE_PROJECT: The name of the Google Cloud project that provides the image you want to use.

Once you have set these variables, you can run the script to create a new VM instance. The gcloud compute instances create command creates a new VM instance with the specified name, machine type, and image family and project. The VM is created in the specified Google Cloud zone.

Note: I have set the key directly in the shell file (not recommended) so that no manual intervention is needed.

## Run result
run cmd
```
% sh create-vm-gcp.sh                             
Updated property [core/project].
Created [https://www.googleapis.com/compute/v1/projects/elegant-azimuth-350713/zones/us-central1-a/instances/vm-demo-via-basch].
NAME               ZONE           MACHINE_TYPE  PREEMPTIBLE  INTERNAL_IP  EXTERNAL_IP   STATUS
vm-demo-via-basch  us-central1-a  e2-micro                   10.128.0.3   34.134.58.69  RUNNING
```

