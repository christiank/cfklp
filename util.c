/*
 * cfklp -- util.c
 * Charlotte Koch <cfkoch@edgebsd.org>
 */

#include "util.h"

float
in(float x)
{
  return x * PPI;
}


char*
bool_to_str(bool b)
{
  return b ? "true" : "false";
}
