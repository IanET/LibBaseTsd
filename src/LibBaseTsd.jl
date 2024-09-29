module LibBaseTsd

using CEnum

const WORD = Cushort

const BYTE = Cuchar

const ULONG_PTR = Culonglong

const DWORD_PTR = ULONG_PTR

const LONG = Clong

const DWORD = Culong

const HFILE = Cint

const PVOID = Ptr{Cvoid}

const HANDLE = PVOID

const DPI_AWARENESS_CONTEXT = HANDLE

const wchar_t = Cushort

const CHAR = Cchar

const SHORT = Cshort

const INT = Cint

const WCHAR = wchar_t

const PCHAR = Ptr{CHAR}

const LPCH = Ptr{CHAR}

const PCH = Ptr{CHAR}

const LPCCH = Ptr{CHAR}

const PCCH = Ptr{CHAR}

const NPSTR = Ptr{CHAR}

const LPSTR = Ptr{CHAR}

const PSTR = Ptr{CHAR}

const PZPSTR = Ptr{PSTR}

const PCZPSTR = Ptr{PSTR}

const LPCSTR = Ptr{CHAR}

const PCSTR = Ptr{CHAR}

const PZPCSTR = Ptr{PCSTR}

const PCZPCSTR = Ptr{PCSTR}

const LPWSTR = Ptr{WCHAR}

const LPCWSTR = Ptr{WCHAR}

const PZZSTR = Ptr{CHAR}

const PCZZSTR = Ptr{CHAR}

const PNZCH = Ptr{CHAR}

const PCNZCH = Ptr{CHAR}

const TCHAR = WCHAR

const PTCHAR = Ptr{WCHAR}

const TBYTE = WCHAR

const PTBYTE = Ptr{WCHAR}

const PTSTR = LPWSTR

const LPTSTR = LPWSTR

const PCTSTR = LPCWSTR

const LPCTSTR = LPCWSTR

const UINT_PTR = Culonglong

const LONG_PTR = Clonglong

const LONGLONG = Clonglong

const SIZE_T = ULONG_PTR

const SSIZE_T = LONG_PTR

const PSIZE_T = Ptr{SIZE_T}

const PSSIZE_T = Ptr{SSIZE_T}

const ULONG = Culong

const PULONG = Ptr{ULONG}

const USHORT = Cushort

const PUSHORT = Ptr{USHORT}

const UCHAR = Cuchar

const PUCHAR = Ptr{UCHAR}

const PSZ = Ptr{Cchar}

const BOOL = Cint

const FLOAT = Cfloat

const PFLOAT = Ptr{FLOAT}

const PBOOL = Ptr{BOOL}

const LPBOOL = Ptr{BOOL}

const PBYTE = Ptr{BYTE}

const LPBYTE = Ptr{BYTE}

const PINT = Ptr{Cint}

const LPINT = Ptr{Cint}

const PWORD = Ptr{WORD}

const LPWORD = Ptr{WORD}

const LPLONG = Ptr{Clong}

const PDWORD = Ptr{DWORD}

const LPDWORD = Ptr{DWORD}

const LPVOID = Ptr{Cvoid}

const LPCVOID = Ptr{Cvoid}

const UINT = Cuint

const PUINT = Ptr{Cuint}

const WPARAM = UINT_PTR

const LPARAM = LONG_PTR

const LRESULT = LONG_PTR

const SPHANDLE = Ptr{HANDLE}

const LPHANDLE = Ptr{HANDLE}

const HGLOBAL = HANDLE

const HLOCAL = HANDLE

const GLOBALHANDLE = HANDLE

const LOCALHANDLE = HANDLE

# typedef INT_PTR ( FAR WINAPI * FARPROC ) ( )
const FARPROC = Ptr{Cvoid}

# typedef INT_PTR ( NEAR WINAPI * NEARPROC ) ( )
const NEARPROC = Ptr{Cvoid}

# typedef INT_PTR ( WINAPI * PROC ) ( )
const PROC = Ptr{Cvoid}

const ATOM = WORD

const HKEY = HANDLE

const PHKEY = Ptr{HKEY}

const HMETAFILE = HANDLE

const HINSTANCE = HANDLE

const HMODULE = HINSTANCE

const HRGN = HANDLE

const HRSRC = HANDLE

const HSPRITE = HANDLE

const HLSURF = HANDLE

const HSTR = HANDLE

const HTASK = HANDLE

const HWINSTA = HANDLE

const HKL = HANDLE

struct _FILETIME
    dwLowDateTime::DWORD
    dwHighDateTime::DWORD
end

const FILETIME = _FILETIME

const PFILETIME = Ptr{_FILETIME}

const LPFILETIME = Ptr{_FILETIME}

const HWND = HANDLE

const HHOOK = HANDLE

const HGDIOBJ = HANDLE

const HACCEL = HANDLE

const HBITMAP = HANDLE

const HBRUSH = HANDLE

const HCOLORSPACE = HANDLE

const HDC = HANDLE

const HGLRC = HANDLE

const HDESK = HANDLE

const HENHMETAFILE = HANDLE

const HFONT = HANDLE

const HICON = HANDLE

const HMENU = HANDLE

const HPALETTE = HANDLE

const HPEN = HANDLE

const HWINEVENTHOOK = HANDLE

const HMONITOR = HANDLE

const HUMPD = HANDLE

const HCURSOR = HICON

const COLORREF = DWORD

const LPCOLORREF = Ptr{DWORD}

struct tagRECT
    left::LONG
    top::LONG
    right::LONG
    bottom::LONG
end

const RECT = tagRECT

const PRECT = Ptr{tagRECT}

const NPRECT = Ptr{tagRECT}

const LPRECT = Ptr{tagRECT}

const LPCRECT = Ptr{RECT}

struct _RECTL
    left::LONG
    top::LONG
    right::LONG
    bottom::LONG
end

const RECTL = _RECTL

const PRECTL = Ptr{_RECTL}

const LPRECTL = Ptr{_RECTL}

const LPCRECTL = Ptr{RECTL}

struct tagPOINT
    x::LONG
    y::LONG
end

const POINT = tagPOINT

const PPOINT = Ptr{tagPOINT}

const NPPOINT = Ptr{tagPOINT}

const LPPOINT = Ptr{tagPOINT}

struct _POINTL
    x::LONG
    y::LONG
end

const POINTL = _POINTL

const PPOINTL = Ptr{_POINTL}

struct tagSIZE
    cx::LONG
    cy::LONG
end

const SIZE = tagSIZE

const PSIZE = Ptr{tagSIZE}

const LPSIZE = Ptr{tagSIZE}

const SIZEL = SIZE

const PSIZEL = Ptr{SIZE}

const LPSIZEL = Ptr{SIZE}

struct tagPOINTS
    x::SHORT
    y::SHORT
end

const POINTS = tagPOINTS

const PPOINTS = Ptr{tagPOINTS}

const LPPOINTS = Ptr{tagPOINTS}

struct APP_LOCAL_DEVICE_ID
    value::NTuple{32, BYTE}
end

@cenum DPI_AWARENESS::Int32 begin
    DPI_AWARENESS_INVALID = -1
    DPI_AWARENESS_UNAWARE = 0
    DPI_AWARENESS_SYSTEM_AWARE = 1
    DPI_AWARENESS_PER_MONITOR_AWARE = 2
end

@cenum DPI_HOSTING_BEHAVIOR::Int32 begin
    DPI_HOSTING_BEHAVIOR_INVALID = -1
    DPI_HOSTING_BEHAVIOR_DEFAULT = 0
    DPI_HOSTING_BEHAVIOR_MIXED = 1
end

const WINVER = 0x0501

const _WIN32_WINNT = 0x0501

const __int64 = Clonglong

const MAX_PATH = 260

# Skipping MacroDefinition: NULL ( ( void * ) 0 )

const FALSE = 0

const TRUE = 1

const HFILE_ERROR = HFILE(-1)

const APP_LOCAL_DEVICE_ID_SIZE = 32

const DM_UPDATE = 1

const DM_COPY = 2

const DM_PROMPT = 4

const DM_MODIFY = 8

const DM_IN_BUFFER = DM_MODIFY

const DM_IN_PROMPT = DM_PROMPT

const DM_OUT_BUFFER = DM_COPY

const DM_OUT_DEFAULT = DM_UPDATE

const DC_FIELDS = 1

const DC_PAPERS = 2

const DC_PAPERSIZE = 3

const DC_MINEXTENT = 4

const DC_MAXEXTENT = 5

const DC_BINS = 6

const DC_DUPLEX = 7

const DC_SIZE = 8

const DC_EXTRA = 9

const DC_VERSION = 10

const DC_DRIVER = 11

const DC_BINNAMES = 12

const DC_ENUMRESOLUTIONS = 13

const DC_FILEDEPENDENCIES = 14

const DC_TRUETYPE = 15

const DC_PAPERNAMES = 16

const DC_ORIENTATION = 17

const DC_COPIES = 18

const DPI_AWARENESS_CONTEXT_UNAWARE = DPI_AWARENESS_CONTEXT(-1)

const DPI_AWARENESS_CONTEXT_SYSTEM_AWARE = DPI_AWARENESS_CONTEXT(-2)

const DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE = DPI_AWARENESS_CONTEXT(-3)

const DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2 = DPI_AWARENESS_CONTEXT(-4)

const DPI_AWARENESS_CONTEXT_UNAWARE_GDISCALED = DPI_AWARENESS_CONTEXT(-5)

macro L_str(s) Base.cconvert(Cwstring, s) end

for name in names(@__MODULE__; all=true)
    if name in [:eval, :include]
        continue
    end
    @eval export $name
end

end # module
