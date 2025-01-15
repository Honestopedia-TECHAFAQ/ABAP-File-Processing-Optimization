DATA: lv_zip_file TYPE string,
      lv_temp_dir TYPE string,
      lv_archive_dir TYPE string,
      lt_unzipped_files TYPE TABLE OF string,
      lv_file TYPE string.

lv_temp_dir = '/tmp/unzipped/';
lv_archive_dir = '/archive/';

IF NOT cl_directory=>is_dir( lv_temp_dir ).
  CALL FUNCTION 'Mkdir' EXPORTING directory = lv_temp_dir.
ENDIF.

lv_zip_file = '/inbound/yourfile.zip'.

TRY.
  CALL FUNCTION 'ZCL_ZIP_FILE_READ'
    EXPORTING
      zip_file = lv_zip_file
    IMPORTING
      extracted_files = lt_unzipped_files.

  LOOP AT lt_unzipped_files INTO lv_file.
    CALL FUNCTION 'MOVE_FILE_TO_DIRECTORY'
      EXPORTING
        source = lv_file
        destination = lv_archive_dir.
  ENDLOOP.

CATCH cx_sy_open_sql_db as cx_sql.
  WRITE: / 'Error unzipping file', lv_zip_file, ':', cx_sql->get_text( ).
ENDTRY.

WRITE: / 'Unzipped and archived successfully.'.
