DECLARE @DeleteDate DATETIME;
SET @DeleteDate = DATEADD(day, -30, GETDATE());

-- Para os arquivos na pasta BACKUP
EXEC master.dbo.xp_delete_file 
    0,                      
    N'Disco de locação do backup',     
    N'bak',                 
    @DeleteDate, 
    1;                      

