module LibBaseTsd

using CEnum

const UINT_PTR = Culonglong

const INT_PTR = Clonglong

const ULONG_PTR = Culonglong

const LONG_PTR = Clonglong

const UHALF_PTR = Cuint

const HALF_PTR = Cint

const POINTER_64_INT = Culong

const INT8 = Int8

const PINT8 = Ptr{Int8}

const INT16 = Cshort

const PINT16 = Ptr{Cshort}

const INT32 = Cint

const PINT32 = Ptr{Cint}

const INT64 = Clonglong

const PINT64 = Ptr{Clonglong}

const UINT8 = Cuchar

const PUINT8 = Ptr{Cuchar}

const UINT16 = Cushort

const PUINT16 = Ptr{Cushort}

const UINT32 = Cuint

const PUINT32 = Ptr{Cuint}

const UINT64 = Culonglong

const PUINT64 = Ptr{Culonglong}

const LONG32 = Cint

const PLONG32 = Ptr{Cint}

const ULONG32 = Cuint

const PULONG32 = Ptr{Cuint}

const DWORD32 = Cuint

const PDWORD32 = Ptr{Cuint}

const PINT_PTR = Ptr{Clonglong}

const PUINT_PTR = Ptr{Culonglong}

const PLONG_PTR = Ptr{Clonglong}

const PULONG_PTR = Ptr{Culonglong}

const HANDLE64 = Ptr{Cvoid}

const PHANDLE64 = Ptr{HANDLE64}

const SHANDLE_PTR = Clonglong

const HANDLE_PTR = Culonglong

const PUHALF_PTR = Ptr{Cuint}

const PHALF_PTR = Ptr{Cint}

const SIZE_T = ULONG_PTR

const PSIZE_T = Ptr{ULONG_PTR}

const SSIZE_T = LONG_PTR

const PSSIZE_T = Ptr{LONG_PTR}

const DWORD_PTR = ULONG_PTR

const PDWORD_PTR = Ptr{ULONG_PTR}

const LONG64 = Clonglong

const PLONG64 = Ptr{Clonglong}

const ULONG64 = Culonglong

const PULONG64 = Ptr{Culonglong}

const DWORD64 = Culonglong

const PDWORD64 = Ptr{Culonglong}

const KAFFINITY = ULONG_PTR

const PKAFFINITY = Ptr{KAFFINITY}

const WINVER = 0x0501

const _WIN32_WINNT = 0x0501

const __int64 = Clonglong

const __int3264 = __int64

# Skipping MacroDefinition: ADDRESS_TAG_BIT 0x40000000000UI64

const MAXUINT_PTR = ~(UINT_PTR(0))

const MAXINT_PTR = INT_PTR(MAXUINT_PTR >> 1)

const MININT_PTR = ~MAXINT_PTR

const MAXULONG_PTR = ~(ULONG_PTR(0))

const MAXLONG_PTR = LONG_PTR(MAXULONG_PTR >> 1)

const MINLONG_PTR = ~MAXLONG_PTR

end # module
