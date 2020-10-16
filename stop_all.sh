#!/bin/bash
kill $(ps aux | grep open5gs | grep build | awk '{print $2}')
