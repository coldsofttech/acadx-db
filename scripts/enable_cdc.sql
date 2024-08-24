-- Step 1: Enable CDC on the database
USE [acadx]
GO

EXEC sys.sp_cdc_enable_db;
GO

-- Step 2: Get a list of all user tables and enable CDC on each one
DECLARE @schema_name NVARCHAR(128);
DECLARE @table_name NVARCHAR(128);
DECLARE @sql NVARCHAR(MAX);

DECLARE table_cursor CURSOR FOR
SELECT 
    s.name AS schema_name,
    t.name AS table_name
FROM 
    sys.tables t
INNER JOIN 
    sys.schemas s ON t.schema_id = s.schema_id
WHERE 
    t.is_tracked_by_cdc = 0       -- Only include tables not already tracked by CDC
    AND s.name <> 'cdc'           -- Exclude tables in the CDC schema
    AND t.is_ms_shipped = 0;      -- Exclude system tables

OPEN table_cursor;

FETCH NEXT FROM table_cursor INTO @schema_name, @table_name;

WHILE @@FETCH_STATUS = 0
BEGIN
    -- Construct the SQL statement to enable CDC on the current table
    SET @sql = N'EXEC sys.sp_cdc_enable_table ' +
               N'@source_schema = N''' + @schema_name + N''', ' +
               N'@source_name = N''' + @table_name + N''', ' +
               N'@role_name = NULL, ' +
               N'@supports_net_changes = 1;';

    -- Execute the SQL statement
    EXEC sp_executesql @sql;

    FETCH NEXT FROM table_cursor INTO @schema_name, @table_name;
END

CLOSE table_cursor;
DEALLOCATE table_cursor;

-- Step 3: Configure CDC settings (Retention Period and Auto Cleanup)
EXEC sys.sp_cdc_change_job
    @job_type = N'capture'
GO

EXEC sys.sp_cdc_change_job
    @job_type = N'cleanup', 
    @retention = 43200, -- 43200 minutes = 30 days
    @threshold = 5000; -- Cleanup threshold
GO
