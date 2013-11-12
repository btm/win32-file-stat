require 'ffi'

module Windows
  module Stat
    module Constants
      private

      MAX_PATH = 260
      MAXDWORD = 0xFFFFFFFF

      INVALID_HANDLE_VALUE = FFI::Pointer.new(-1).address

      ERROR_FILE_NOT_FOUND = 2
      ERROR_NO_MORE_FILES  = 18
      ERROR_INSUFFICIENT_BUFFER = 122

      FILE_TYPE_UNKNOWN = 0x0000
      FILE_TYPE_DISK    = 0x0001
      FILE_TYPE_CHAR    = 0x0002
      FILE_TYPE_PIPE    = 0x0003
      FILE_TYPE_REMOTE  = 0x8000

      FILE_ATTRIBUTE_READONLY      = 0x00000001
      FILE_ATTRIBUTE_HIDDEN        = 0x00000002
      FILE_ATTRIBUTE_SYSTEM        = 0x00000004
      FILE_ATTRIBUTE_DIRECTORY     = 0x00000010
      FILE_ATTRIBUTE_ARCHIVE       = 0x00000020
      FILE_ATTRIBUTE_ENCRYPTED     = 0x00000040
      FILE_ATTRIBUTE_NORMAL        = 0x00000080
      FILE_ATTRIBUTE_TEMPORARY     = 0x00000100
      FILE_ATTRIBUTE_SPARSE_FILE   = 0x00000200
      FILE_ATTRIBUTE_REPARSE_POINT = 0x00000400
      FILE_ATTRIBUTE_COMPRESSED    = 0x00000800
      FILE_ATTRIBUTE_OFFLINE       = 0x00001000

      FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = 0x00002000

      DRIVE_REMOVABLE   = 2
      DRIVE_CDROM       = 5
      DRIVE_RAMDISK     = 6

      NO_ERROR = 0

      OPEN_EXISTING   = 3
      GENERIC_READ    = 0x80000000
      GENERIC_WRITE   = 0x40000000
      GENERIC_EXECUTE = 0x20000000

      FILE_SHARE_READ = 1

      FILE_FLAG_BACKUP_SEMANTICS   = 0x02000000
      FILE_FLAG_OPEN_REPARSE_POINT = 0x00200000
      IO_REPARSE_TAG_SYMLINK       = 0xA000000C

      OWNER_SECURITY_INFORMATION = 1
      GROUP_SECURITY_INFORMATION = 2
      DACL_SECURITY_INFORMATION  = 4

      SYNCHRONIZE = 0x00100000
      STANDARD_RIGHTS_REQUIRED = 0x000F0000

      FILE_READ_DATA = 0x0001
      FILE_WRITE_DATA = 0x0002
      FILE_APPEND_DATA = 0x0004
      FILE_READ_EA = 0x0008
      FILE_WRITE_EA = 0x0008
      FILE_EXECUTE = 0x0020
      FILE_READ_ATTRIBUTES = 0x0080
      FILE_WRITE_ATTRIBUTES = 0x0100

      READ_CONTROL = 0x00020000
      STANDARD_RIGHTS_READ = READ_CONTROL
      STANDARD_RIGHTS_WRITE = READ_CONTROL
      STANDARD_RIGHTS_EXECUTE = READ_CONTROL

      FILE_GENERIC_READ = (STANDARD_RIGHTS_READ|FILE_READ_DATA|FILE_READ_ATTRIBUTES|FILE_READ_EA|SYNCHRONIZE)
      FILE_GENERIC_WRITE = (STANDARD_RIGHTS_WRITE|FILE_WRITE_DATA|FILE_WRITE_ATTRIBUTES|FILE_WRITE_EA|FILE_APPEND_DATA|SYNCHRONIZE)
      FILE_GENERIC_EXECUTE = (STANDARD_RIGHTS_EXECUTE|FILE_READ_ATTRIBUTES|FILE_EXECUTE|SYNCHRONIZE)
      FILE_ALL_ACCESS = (STANDARD_RIGHTS_REQUIRED|SYNCHRONIZE|0x1FF)

      TOKEN_DUPLICATE = 0x0002
      TOKEN_IMPERSONATE = 0x0004
      TOKEN_QUERY = 0x0008

      SecurityImpersonation = 2

      TokenUser   = 1
      TokenGroups = 2
    end
  end
end
