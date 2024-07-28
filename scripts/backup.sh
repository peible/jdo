#!/bin/bash
backupFiles="file"
backupPath="."

tar -czf $backupPath/bookapp_$(date +"%Y%m%d_%H%M").tar $backupFiles