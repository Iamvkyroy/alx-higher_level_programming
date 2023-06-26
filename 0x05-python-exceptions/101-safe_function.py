#!/usr/bin/python3

import sys
import logging

def safe_function(fct, *args):
"""Executes a function safely.

Args:
fct: The function to execute.
args: Arguments for fct.

Returns:
If an error occurs - None.
Otherwise - the result of the call to fct.
"""
try:
result = fct(*args)
return result
except Exception as e:
logging.error("Exception occurred: %s", e)
return None
