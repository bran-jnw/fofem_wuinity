/* File : swig.i */
%module FOFEM

%{
	#include "..\FOF_DLL\FOF_CI.H"
	#include "..\FOF_DLL\FOF_CO.H"
	#include "..\FOF_DLL\FOF_SH.H"
	#include "..\FOF_DLL\FOF_NES.H"
%}

/* Let's just grab the original header file here */
%include "..\FOF_DLL\FOF_CI.H"
%include "..\FOF_DLL\FOF_CO.H"
%include "..\FOF_DLL\FOF_SH.H"
%include "..\FOF_DLL\FOF_NES.H"