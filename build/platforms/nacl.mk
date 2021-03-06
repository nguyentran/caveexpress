SO_EXT                    = so
SO_LDFLAGS                = -shared
SO_CFLAGS                 = -fpic
SO_LIBS                  :=

EXE_EXT                   = .pexe

NACL_CFG                 ?= $(NACL_SDK_ROOT)/tools/nacl_config.py
NACL_CFLAGS              := $(shell $(NACL_CFG) -t pnacl --cflags)
NACL_LDFLAGS             := $(shell $(NACL_CFG) -t pnacl --lib)

CFLAGS                   += -D_GNU_SOURCE -D_BSD_SOURCE -D_XOPEN_SOURCE -DSQLITE_OMIT_LOAD_EXTENSION -DSDL_VIDEO_DRIVER_NACL=1 -DSDL_AUDIO_DRIVER_NACL=1 -DSDL_FILESYSTEM_NACL=1 -DHAVE_POW=1 -DHAVE_OPENGLES2=1 -DSDL_VIDEO_OPENGL_ES2=1 -DSDL_VIDEO_RENDER_OGL_ES2=1 -DHAVE_MALLOC=1 -DHAVE_STDIO_H=1 $(NACL_CFLAGS)

LDFLAGS                  += $(NACL_LDFLAGS)/pnacl/Release -lppapi_simple -lnacl_io -lppapi_cpp -lppapi -lpthread -lppapi_gles2
OPENGL_LIBS               =

MAKEFILEPATH   = $(CURDIR)/$(lastword $(MAKEFILE_LIST))
NACL_VERSION  ?= 35
NACL_LIB      ?= newlib
NACL_SDK_ROOT ?= $(realpath $(dir $(MAKEFILEPATH))/../nacl_sdk/pepper_$(NACL_VERSION))
CHROME_BIN    ?= google-chrome
# the integrated runtime path
ifeq ($(TARGET_ARCH),i386)
CHROME_NACL_IRT ?= /opt/google/chrome/nacl_irt_x86_32.nexe
else
CHROME_NACL_IRT ?= /opt/google/chrome/nacl_irt_x86_64.nexe
endif
NACL_TOOLCHAIN_ROOT ?= $(NACL_SDK_ROOT)/toolchain/$(HOST_OS)_pnacl
