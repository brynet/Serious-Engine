/* Copyright (c) 2002-2012 Croteam Ltd. All rights reserved. */

/* rcg10072001 Moved stuff into this file. */

#ifdef PLATFORM_WIN32

#include <Engine/Engine.h>
#include <Engine/Base/Timer.h>

void CTimer::Sleep(DWORD milliseconds)
{
    ::Sleep(milliseconds);
}

#endif //PLATFORM_WIN32

// end of Win32Timer.cpp ...


