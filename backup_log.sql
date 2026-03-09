DECLARE @DatabaseName NVARCHAR(100)
DECLARE @BackupPath NVARCHAR(500)
DECLARE @FileName NVARCHAR(500)

SET @DatabaseName = 'SeuBanco'
SET @BackupPath = 'C:\Backup\Logs\'

SET @FileName = @BackupPath + @DatabaseName + '_' +
CONVERT(VARCHAR, GETDATE(), 112) + '.trn'

BACKUP LOG @DatabaseName
TO DISK = @FileName
