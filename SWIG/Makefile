TOP        = ..
SWIGEXE    = $(TOP)/../swigwin-4.4.0
SWIG_LIB_DIR = $(TOP)/../$(TOP_BUILDDIR_TO_TOP_SRCDIR)Lib
CXXSRCS    = $(TOP)/FOF_DLL
TARGET     = example
INTERFACE  = swig.i
SWIGOPT    =
CSHARPSRCS = *.cs
CSHARPFLAGS= -nologo -debug+ -out:runme.exe

check: build
	$(MAKE) -f $(TOP)/Makefile SRCDIR='$(SRCDIR)' csharp_run

build:
	$(MAKE) -f $(TOP)/Makefile SRCDIR='$(SRCDIR)' CXXSRCS='$(CXXSRCS)' \
	SWIG_LIB_DIR='$(SWIG_LIB_DIR)' SWIGEXE='$(SWIGEXE)' \
	SWIGOPT='$(SWIGOPT)' TARGET='$(TARGET)' INTERFACE='$(INTERFACE)' csharp_cpp
	$(MAKE) -f $(TOP)/Makefile SRCDIR='$(SRCDIR)' CSHARPSRCS='$(CSHARPSRCS)' CSHARPFLAGS='$(CSHARPFLAGS)' csharp_compile

clean:
	$(MAKE) -f $(TOP)/Makefile SRCDIR='$(SRCDIR)' csharp_clean