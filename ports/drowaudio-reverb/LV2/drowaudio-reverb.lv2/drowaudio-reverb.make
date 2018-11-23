# C++ Shared Library Makefile autogenerated by premake
# Don't edit this file! Instead edit `premake.lua` then rerun `make`

ifndef CONFIG
  CONFIG=Release
endif

# if multiple archs are defined turn off automated dependency generation
DEPFLAGS := $(if $(word 2, $(TARGET_ARCH)), , -MMD)

ifeq ($(CONFIG),Release)
  BINDIR := ../../../bin/lv2
  LIBDIR := ../../../bin/lv2
  OBJDIR := intermediate/Release
  OUTDIR := ../../../bin/lv2/drowaudio-reverb.lv2
  CPPFLAGS := $(DEPFLAGS) -D "DISTRHO_PLUGIN_TARGET_LV2=1" -D "JucePlugin_Build_AU=0" -D "JucePlugin_Build_LV2=1" -D "JucePlugin_Build_RTAS=0" -D "JucePlugin_Build_VST=0" -D "JucePlugin_Build_Standalone=0" -D "LINUX=1" -D "BINTYPE="Linux-LV2"" -D "USE_DROWAUDIO=1" -D "NDEBUG=1" -D "CONFIGURATION="Release"" -I "../source" -I "../../../libs/juce/source" -I "../../../libs/juce/source/modules" -I "../../../libs/drowaudio/source" -I "../../../libs/juced/source" -I "../../../libs/juce-plugin" -I "../../drowaudio-common"
  CFLAGS += $(CPPFLAGS) $(TARGET_ARCH) -fPIC -O2 -Wall -Werror=deprecated-declarations -pthread -DJUCE_APP_CONFIG_HEADER='<AppConfig.h>' -std=c++0x -O3 -ffast-math -fomit-frame-pointer -fvisibility=hidden -fvisibility-inlines-hidden -mtune=generic -msse -msse2 -mfpmath=sse -fdata-sections -ffunction-sections
  CXXFLAGS += $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -shared -s -pthread -Wl,--no-undefined `pkg-config --libs freetype2 x11 xext` -fdata-sections -ffunction-sections -Wl,--gc-sections -Wl,--strip-all -L"../../../libs" -ldl -lrt -ljuce -ldrowaudio
  LDDEPS :=
  RESFLAGS := -D "DISTRHO_PLUGIN_TARGET_LV2=1" -D "JucePlugin_Build_AU=0" -D "JucePlugin_Build_LV2=1" -D "JucePlugin_Build_RTAS=0" -D "JucePlugin_Build_VST=0" -D "JucePlugin_Build_Standalone=0" -D "LINUX=1" -D "BINTYPE="Linux-LV2"" -D "USE_DROWAUDIO=1" -D "NDEBUG=1" -D "CONFIGURATION="Release"" -I "../source" -I "../../../libs/juce/source" -I "../../../libs/juce/source/modules" -I "../../../libs/drowaudio/source" -I "../../../libs/juced/source" -I "../../../libs/juce-plugin" -I "../../drowaudio-common"
  TARGET := drowaudio-reverb.so
 BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(LDFLAGS) $(RESOURCES) $(TARGET_ARCH)
endif

ifeq ($(CONFIG),Debug)
  BINDIR := ../../../bin/lv2
  LIBDIR := ../../../bin/lv2
  OBJDIR := intermediate/Debug
  OUTDIR := ../../../bin/lv2/drowaudio-reverb.lv2
  CPPFLAGS := $(DEPFLAGS) -D "DISTRHO_PLUGIN_TARGET_LV2=1" -D "JucePlugin_Build_AU=0" -D "JucePlugin_Build_LV2=1" -D "JucePlugin_Build_RTAS=0" -D "JucePlugin_Build_VST=0" -D "JucePlugin_Build_Standalone=0" -D "LINUX=1" -D "BINTYPE="Linux-LV2"" -D "USE_DROWAUDIO=1" -D "DEBUG=1" -D "_DEBUG=1" -D "CONFIGURATION="Debug"" -I "../source" -I "../../../libs/juce/source" -I "../../../libs/juce/source/modules" -I "../../../libs/drowaudio/source" -I "../../../libs/juced/source" -I "../../../libs/juce-plugin" -I "../../drowaudio-common"
  CFLAGS += $(CPPFLAGS) $(TARGET_ARCH) -fPIC -g -Wall -Werror=deprecated-declarations -pthread -DJUCE_APP_CONFIG_HEADER='<AppConfig.h>' -std=c++0x -O0 -ggdb
  CXXFLAGS += $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -shared -pthread -Wl,--no-undefined `pkg-config --libs freetype2 x11 xext` `pkg-config --libs alsa` -L"../../../libs" -ldl -lrt -ljuce_debug -ldrowaudio_debug
  LDDEPS :=
  RESFLAGS := -D "DISTRHO_PLUGIN_TARGET_LV2=1" -D "JucePlugin_Build_AU=0" -D "JucePlugin_Build_LV2=1" -D "JucePlugin_Build_RTAS=0" -D "JucePlugin_Build_VST=0" -D "JucePlugin_Build_Standalone=0" -D "LINUX=1" -D "BINTYPE="Linux-LV2"" -D "USE_DROWAUDIO=1" -D "DEBUG=1" -D "_DEBUG=1" -D "CONFIGURATION="Debug"" -I "../source" -I "../../../libs/juce/source" -I "../../../libs/juce/source/modules" -I "../../../libs/drowaudio/source" -I "../../../libs/juced/source" -I "../../../libs/juce-plugin" -I "../../drowaudio-common"
  TARGET := drowaudio-reverb_debug.so
 BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(LDFLAGS) $(RESOURCES) $(TARGET_ARCH)
endif

OBJECTS := \
	$(OBJDIR)/DRowAudioFilter.o \
	$(OBJDIR)/DRowAudioEditorComponent.o \
	$(OBJDIR)/dRowAudio_AllpassFilter.o \
	$(OBJDIR)/dRowAudio_DelayRegister.o \
	$(OBJDIR)/dRowAudio_LBCF.o \
	$(OBJDIR)/dRowAudio_PluginLookAndFeel.o \
	$(OBJDIR)/dRowAudio_TappedDelayLine.o \
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
	@echo Linking drowaudio-reverb.lv2/drowaudio-reverb
	-@$(CMD_MKBINDIR)
	-@$(CMD_MKLIBDIR)
	-@$(CMD_MKOUTDIR)
	@$(BLDCMD)

clean:
	@echo Cleaning drowaudio-reverb.lv2/drowaudio-reverb
ifeq ($(MKDIR_TYPE),posix)
	-@rm -f $(OUTDIR)/$(TARGET)
	-@rm -rf $(OBJDIR)
else
	-@if exist $(subst /,\,$(OUTDIR)/$(TARGET)) del /q $(subst /,\,$(OUTDIR)/$(TARGET))
	-@if exist $(subst /,\,$(OBJDIR)) del /q $(subst /,\,$(OBJDIR))
	-@if exist $(subst /,\,$(OBJDIR)) rmdir /s /q $(subst /,\,$(OBJDIR))
endif

$(OBJDIR)/DRowAudioFilter.o: ../source/DRowAudioFilter.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/DRowAudioEditorComponent.o: ../source/DRowAudioEditorComponent.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/dRowAudio_AllpassFilter.o: ../../drowaudio-common/dRowAudio_AllpassFilter.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/dRowAudio_DelayRegister.o: ../../drowaudio-common/dRowAudio_DelayRegister.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/dRowAudio_LBCF.o: ../../drowaudio-common/dRowAudio_LBCF.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/dRowAudio_PluginLookAndFeel.o: ../../drowaudio-common/dRowAudio_PluginLookAndFeel.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/dRowAudio_TappedDelayLine.o: ../../drowaudio-common/dRowAudio_TappedDelayLine.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/JucePluginMain.o: ../../../libs/juce-plugin/JucePluginMain.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)

