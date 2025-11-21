/* File : fofem_csharp.i 

create bindings by running:
swig -c++ -csharp -namespace FOFEMcore fofem_csharp.i
*/

%module FOFEM

%{
	#include "..\FOF_UNIX\FOF_CI.H"
	#include "..\FOF_UNIX\FOF_CO.H"
	#include "..\FOF_UNIX\FOF_SH.H"
	#include "..\FOF_UNIX\FOF_NES.H"
	#include "..\FOF_UNIX\FOF_SGV.H"
	#include "..\FOF_UNIX\FOF_CM.H"
%}

%rename (ConsumeDataInput) d_CI;
%rename (ConsumeDataOutput) d_CO;
%rename (SoilDataInput) d_SI;
%rename (SoilDataOutput) d_SO;
%rename (ConsumeManager) CM_Mngr;

/*https://www.swig.org/Doc4.4/Library.html#Library_carrays*/
%include "carrays.i"
%array_functions(int, intArray);
%array_functions(float, floatArray);

/* Let's just grab the original header file here */
%include "..\FOF_UNIX\FOF_CI.H"
%include "..\FOF_UNIX\FOF_CO.H"
%include "..\FOF_UNIX\FOF_SH.H"
%include "..\FOF_UNIX\FOF_NES.H"
%include "..\FOF_UNIX\FOF_SGV.H"
%include "..\FOF_UNIX\FOF_CM.H"