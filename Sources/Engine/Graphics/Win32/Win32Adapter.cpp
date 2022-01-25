/* Copyright (c) 2002-2012 Croteam Ltd. All rights reserved. */

#ifdef PLATFORM_WIN32

#include <windows.h>

ULONG DetermineDesktopWidth(void)
{
  return((ULONG) ::GetSystemMetrics(SM_CXSCREEN));
}

#endif
