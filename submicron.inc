* $Id: submicron.inc,v 1.2 2014/06/25 13:35:38 john_doty Exp $
*
*   Copyright (C) 2010 John P. Doty            	 *
*                                                                        *
*   This program is free software; you can redistribute it and/or modify *
*   it under the terms of the GNU General Public License as published by *
*   the Free Software Foundation; either version 2 of the License, or    *
*   (at your option) any later version.                                  *
*                                                                        *
*   This program is distributed in the hope that it will be useful,      *
*   but WITHOUT ANY WARRANTY; without even the implied warranty of       *
*   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the        *
*   GNU General Public License for more details.                         *
*                                                                        *
*   You should have received a copy of the GNU General Public License    *
*   along with this program; if not, write to the                        *
*   Free Software Foundation, Inc.,                                      *
*   59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.            *
*
* Rough model parameters for getting representive results 
* from ngspice using openIP
*
.model nch nmos ( 
+level=6 
+vto=0.5 
+tox=8n 
+gamma=0.5
+cgso=300p
+cgdo=300p
+cgbo=300p
+rsh=0.1
+cj=1m
+cjsw=400p
+nsub=1e17
+uo=400 )
.model pch pmos ( 
+level=6 
+vto=-0.8 
+tox=8n 
+gamma=0.5
+cgso=300p
+cgdo=300p
+cgbo=300p
+rsh=20
+cj=1m
+cjsw=400p
+nsub=1e17
+uo=200 )
* $Log: submicron.inc,v $
* Revision 1.2  2014/06/25 13:35:38  john_doty
* Better MOSFET model.
*
* Revision 1.1  2010/05/03 01:33:10  john_doty
* Open-IP models.
*

***************************************************
*http://research.kek.jp/people/ikeda/openIP/openIP_3.pdf
***** digital inverter ****************************

.SUBCKT inv1 A Y
M1 Y A Vss Vss nch L=1.2u W=3u M=1
M2 Y A Vdd Vdd pch L=0.4u W=3u M=1
.ENDS
