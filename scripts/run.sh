#!/bin/bash
docker run -it --name test_api01 -p 3000:3000 -rm lamendozar/api_cdk_sep:$1

