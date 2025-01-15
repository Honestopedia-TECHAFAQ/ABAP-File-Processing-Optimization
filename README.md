# ABAP File Unzipping and Archiving Project

## Project Overview
This ABAP project focuses on handling zipped files from an inbound directory, unzipping them, and archiving the extracted files to a designated archive directory. The goal is to optimize file processing for high throughput with efficient and maintainable code.

## Requirements
- Unzip files from the inbound directory (`/inbound/`).
- Archive unzipped files to the archive directory (`/archive/`).
- Improve existing logic to handle high throughput with efficiency.
- Ensure clean, readable, and maintainable code.
- Error handling and logging for smooth processing.

## Features
- Handles multiple zipped files.
- Optimized for performance and efficiency.
- Batch processing for high throughput.
- Secure file management with error handling.

## Dependencies
- SAP ABAP Development Environment
- `Mkdir` function for directory creation
- `ZCL_ZIP_FILE_READ` class or equivalent function for file extraction
- `MOVE_FILE_TO_DIRECTORY` function or equivalent for archiving files

## Usage
1. Save the ABAP code with a `.ABAP` or `.SAP` extension.
2. Import the code into your SAP system.
3. Execute the code to process and archive files from the inbound directory.

## Error Handling
- The code includes a `TRY...CATCH` block for handling errors during unzipping and file movement.
- Logs are maintained for any issues that occur during file processing.

## Example Execution
- The code reads zipped files from `/inbound/` directory.
- Extracts files and saves them in `/tmp/unzipped/`.
- Archives successfully unzipped files to `/archive/`.

---

## Download
[Download ABAP Project Code](sandbox:/mnt/data/ABAP_Project_Code.ABAP)
# ABAP-File-Processing-Optimization
