# C++ Shared Library Makefile autogenerated by premake
# Don't edit this file! Instead edit `premake.lua` then rerun `make`

ifndef CONFIG
  CONFIG=Release
endif

# if multiple archs are defined turn off automated dependency generation
DEPFLAGS := $(if $(word 2, $(TARGET_ARCH)), , -MMD)

ifeq ($(CONFIG),Release)
  BINDIR := ../../../bin/vst
  LIBDIR := ../../../bin/vst
  OBJDIR := intermediate/Release
  OUTDIR := ../../../bin/vst
  CPPFLAGS := $(DEPFLAGS) -D "DISTRHO_PLUGIN_TARGET_VST=1" -D "JucePlugin_Build_AU=0" -D "JucePlugin_Build_LV2=0" -D "JucePlugin_Build_RTAS=0" -D "JucePlugin_Build_VST=1" -D "JucePlugin_Build_Standalone=0" -D "LINUX=1" -D "BINTYPE="Linux-VST"" -D "NDEBUG=1" -D "CONFIGURATION="Release"" -I "../source" -I "../../../libs/juce/source" -I "../../../libs/juce/source/modules" -I "../../../libs/drowaudio/source" -I "../../../libs/juced/source" -I "../../../libs/juce-plugin" -I "../../../sdks/vstsdk2.4" -I "../source/Engine" -I "." -I "./intermediate" -I "./intermediate/Release" -I "./intermediate/Debug"
  CFLAGS += $(CPPFLAGS) $(TARGET_ARCH) -fPIC -O2 -Wall -Werror=deprecated-declarations -pthread -DJUCE_APP_CONFIG_HEADER='<AppConfig.h>' -std=c++0x -Wno-multichar -Wno-write-strings -O3 -ffast-math -fomit-frame-pointer -fvisibility=hidden -fvisibility-inlines-hidden -mtune=generic -msse -msse2 -mfpmath=sse -fdata-sections -ffunction-sections
  CXXFLAGS += $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -shared -s -pthread -Wl,--no-undefined `pkg-config --libs freetype2 x11 xext` -fdata-sections -ffunction-sections -Wl,--gc-sections -Wl,--strip-all -L"../../../libs" -ldl -lrt -ljuce
  LDDEPS :=
  RESFLAGS := -D "DISTRHO_PLUGIN_TARGET_VST=1" -D "JucePlugin_Build_AU=0" -D "JucePlugin_Build_LV2=0" -D "JucePlugin_Build_RTAS=0" -D "JucePlugin_Build_VST=1" -D "JucePlugin_Build_Standalone=0" -D "LINUX=1" -D "BINTYPE="Linux-VST"" -D "NDEBUG=1" -D "CONFIGURATION="Release"" -I "../source" -I "../../../libs/juce/source" -I "../../../libs/juce/source/modules" -I "../../../libs/drowaudio/source" -I "../../../libs/juced/source" -I "../../../libs/juce-plugin" -I "../../../sdks/vstsdk2.4" -I "../source/Engine" -I "." -I "./intermediate" -I "./intermediate/Release" -I "./intermediate/Debug"
  TARGET := TAL-NoiseMaker.so
 BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(LDFLAGS) $(RESOURCES) $(TARGET_ARCH)
endif

ifeq ($(CONFIG),Debug)
  BINDIR := ../../../bin/vst
  LIBDIR := ../../../bin/vst
  OBJDIR := intermediate/Debug
  OUTDIR := ../../../bin/vst
  CPPFLAGS := $(DEPFLAGS) -D "DISTRHO_PLUGIN_TARGET_VST=1" -D "JucePlugin_Build_AU=0" -D "JucePlugin_Build_LV2=0" -D "JucePlugin_Build_RTAS=0" -D "JucePlugin_Build_VST=1" -D "JucePlugin_Build_Standalone=0" -D "LINUX=1" -D "BINTYPE="Linux-VST"" -D "DEBUG=1" -D "_DEBUG=1" -D "CONFIGURATION="Debug"" -I "../source" -I "../../../libs/juce/source" -I "../../../libs/juce/source/modules" -I "../../../libs/drowaudio/source" -I "../../../libs/juced/source" -I "../../../libs/juce-plugin" -I "../../../sdks/vstsdk2.4" -I "../source/Engine" -I "." -I "./intermediate" -I "./intermediate/Release" -I "./intermediate/Debug"
  CFLAGS += $(CPPFLAGS) $(TARGET_ARCH) -fPIC -g -Wall -Werror=deprecated-declarations -pthread -DJUCE_APP_CONFIG_HEADER='<AppConfig.h>' -std=c++0x -Wno-multichar -Wno-write-strings -O0 -ggdb
  CXXFLAGS += $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -shared -pthread -Wl,--no-undefined `pkg-config --libs freetype2 x11 xext` `pkg-config --libs alsa` -L"../../../libs" -ldl -lrt -ljuce_debug
  LDDEPS :=
  RESFLAGS := -D "DISTRHO_PLUGIN_TARGET_VST=1" -D "JucePlugin_Build_AU=0" -D "JucePlugin_Build_LV2=0" -D "JucePlugin_Build_RTAS=0" -D "JucePlugin_Build_VST=1" -D "JucePlugin_Build_Standalone=0" -D "LINUX=1" -D "BINTYPE="Linux-VST"" -D "DEBUG=1" -D "_DEBUG=1" -D "CONFIGURATION="Debug"" -I "../source" -I "../../../libs/juce/source" -I "../../../libs/juce/source/modules" -I "../../../libs/drowaudio/source" -I "../../../libs/juced/source" -I "../../../libs/juce-plugin" -I "../../../sdks/vstsdk2.4" -I "../source/Engine" -I "." -I "./intermediate" -I "./intermediate/Release" -I "./intermediate/Debug"
  TARGET := TAL-NoiseMaker_debug.so
 BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(LDFLAGS) $(RESOURCES) $(TARGET_ARCH)
endif

OBJECTS := \
	$(OBJDIR)/TalComponent.o \
	$(OBJDIR)/TalCore.o \
	$(OBJDIR)/Lfo.o \
	$(OBJDIR)/JucePluginMain.o \

MKDIR_TYPE := msdos
CMD := $(subst \,\\,$(ComSpec)$(COMSPEC))
ifeq (,$(CMD))
  MKDIR_TYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  MKDIR_TYPE := posix
endif
ifeq ($(MKDIR_TYPE),posix)
  CMD_MKBINDIR := mkdir -p $(BINDIR)
  CMD_MKLIBDIR := mkdir -p $(LIBDIR)
  CMD_MKOUTDIR := mkdir -p $(OUTDIR)
  CMD_MKOBJDIR := mkdir -p $(OBJDIR)
else
  CMD_MKBINDIR := $(CMD) /c if not exist $(subst /,\\,$(BINDIR)) mkdir $(subst /,\\,$(BINDIR))
  CMD_MKLIBDIR := $(CMD) /c if not exist $(subst /,\\,$(LIBDIR)) mkdir $(subst /,\\,$(LIBDIR))
  CMD_MKOUTDIR := $(CMD) /c if not exist $(subst /,\\,$(OUTDIR)) mkdir $(subst /,\\,$(OUTDIR))
  CMD_MKOBJDIR := $(CMD) /c if not exist $(subst /,\\,$(OBJDIR)) mkdir $(subst /,\\,$(OBJDIR))
endif

.PHONY: clean

$(OUTDIR)/$(TARGET): $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking TAL-NoiseMaker
	-@$(CMD_MKBINDIR)
	-@$(CMD_MKLIBDIR)
	-@$(CMD_MKOUTDIR)
	@$(BLDCMD)

clean:
	@echo Cleaning TAL-NoiseMaker
ifeq ($(MKDIR_TYPE),posix)
	-@rm -f $(OUTDIR)/$(TARGET)
	-@rm -rf $(OBJDIR)
else
	-@if exist $(subst /,\,$(OUTDIR)/$(TARGET)) del /q $(subst /,\,$(OUTDIR)/$(TARGET))
	-@if exist $(subst /,\,$(OBJDIR)) del /q $(subst /,\,$(OBJDIR))
	-@if exist $(subst /,\,$(OBJDIR)) rmdir /s /q $(subst /,\,$(OBJDIR))
endif

$(OBJDIR)/TalComponent.o: ../source/TalComponent.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/TalCore.o: ../source/TalCore.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/Lfo.o: ../source/Engine/Lfo.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/JucePluginMain.o: ../../../libs/juce-plugin/JucePluginMain.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)

