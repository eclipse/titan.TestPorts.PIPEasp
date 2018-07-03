#!/bin/sh
# SCCSID: %Z%%M% %I% %G%
#/******************************************************************************
#* Copyright (c) 2005, 2014  Ericsson AB
#* All rights reserved. This program and the accompanying materials
#* are made available under the terms of the Eclipse Public License v2.0
#* which accompanies this distribution, and is available at
#* https://www.eclipse.org/org/documents/epl-2.0/EPL-2.0.html
#*
#* Contributors:
#*  Jozsef Gyurusi - initial implementation and initial documentation
#*  Adam Delic
#*  Antal Wuh.Hen.Chang
#*  Attila Balasko
#*  Gabor Szalai
#*  Istvan Sandor
#*  Peter Kremer
#*  Zoltan Jasz
#******************************************************************************/
#

head -1 > /tmp/$$.input
if xterm -title "Question from TTCN" -e sh -c "echo ''; cat /tmp/$$.input; echo ''; echo 'Give the Answer and Press RETURN'; head -1 > /tmp/$$.output"
  then
    cat /tmp/$$.output
    /bin/rm -f /tmp/$$.input
    /bin/rm -f /tmp/$$.output
    exit 0
  else
    /bin/rm -f /tmp/$$.input
    /bin/rm -f /tmp/$$.output
    exit 1
fi
