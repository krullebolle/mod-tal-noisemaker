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
  OUTDIR := ../../../bin/lv2/Dexed.lv2
  CPPFLAGS := $(DEPFLAGS) -D "DISTRHO_PLUGIN_TARGET_LV2=1" -D "JucePlugin_Build_AU=0" -D "JucePlugin_Build_LV2=1" -D "JucePlugin_Build_RTAS=0" -D "JucePlugin_Build_VST=0" -D "JucePlugin_Build_Standalone=0" -D "LINUX=1" -D "BINTYPE="Linux-LV2"" -D "NDEBUG=1" -D "CONFIGURATION="Release"" -I "../source" -I "../../../libs/juce/source" -I "../../../libs/juce/source/modules" -I "../../../libs/drowaudio/source" -I "../../../libs/juced/source" -I "../../../libs/juce-plugin"
  CFLAGS += $(CPPFLAGS) $(TARGET_ARCH) -fPIC -O2 -Wall -Werror=deprecated-declarations -pthread -DJUCE_APP_CONFIG_HEADER='<AppConfig.h>' -std=c++0x -O3 -ffast-math -fomit-frame-pointer -fvisibility=hidden -fvisibility-inlines-hidden -mtune=generic -msse -msse2 -mfpmath=sse -fdata-sections -ffunction-sections
  CXXFLAGS += $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -shared -s -pthread -Wl,--no-undefined `pkg-config --libs freetype2 x11 xext` `pkg-config --libs alsa` -fdata-sections -ffunction-sections -Wl,--gc-sections -Wl,--strip-all -L"../../../libs" -ldl -lrt -ljuce
  LDDEPS :=
  RESFLAGS := -D "DISTRHO_PLUGIN_TARGET_LV2=1" -D "JucePlugin_Build_AU=0" -D "JucePlugin_Build_LV2=1" -D "JucePlugin_Build_RTAS=0" -D "JucePlugin_Build_VST=0" -D "JucePlugin_Build_Standalone=0" -D "LINUX=1" -D "BINTYPE="Linux-LV2"" -D "NDEBUG=1" -D "CONFIGURATION="Release"" -I "../source" -I "../../../libs/juce/source" -I "../../../libs/juce/source/modules" -I "../../../libs/drowaudio/source" -I "../../../libs/juced/source" -I "../../../libs/juce-plugin"
  TARGET := Dexed.so
 BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(LDFLAGS) $(RESOURCES) $(TARGET_ARCH)
endif

ifeq ($(CONFIG),Debug)
  BINDIR := ../../../bin/lv2
  LIBDIR := ../../../bin/lv2
  OBJDIR := intermediate/Debug
  OUTDIR := ../../../bin/lv2/Dexed.lv2
  CPPFLAGS := $(DEPFLAGS) -D "DISTRHO_PLUGIN_TARGET_LV2=1" -D "JucePlugin_Build_AU=0" -D "JucePlugin_Build_LV2=1" -D "JucePlugin_Build_RTAS=0" -D "JucePlugin_Build_VST=0" -D "JucePlugin_Build_Standalone=0" -D "LINUX=1" -D "BINTYPE="Linux-LV2"" -D "DEBUG=1" -D "_DEBUG=1" -D "CONFIGURATION="Debug"" -I "../source" -I "../../../libs/juce/source" -I "../../../libs/juce/source/modules" -I "../../../libs/drowaudio/source" -I "../../../libs/juced/source" -I "../../../libs/juce-plugin"
  CFLAGS += $(CPPFLAGS) $(TARGET_ARCH) -fPIC -g -Wall -Werror=deprecated-declarations -pthread -DJUCE_APP_CONFIG_HEADER='<AppConfig.h>' -std=c++0x -O0 -ggdb
  CXXFLAGS += $(CFLAGS)
  LDFLAGS += -L$(BINDIR) -L$(LIBDIR) -shared -pthread -Wl,--no-undefined `pkg-config --libs freetype2 x11 xext` `pkg-config --libs alsa` -L"../../../libs" -ldl -lrt -ljuce_debug
  LDDEPS :=
  RESFLAGS := -D "DISTRHO_PLUGIN_TARGET_LV2=1" -D "JucePlugin_Build_AU=0" -D "JucePlugin_Build_LV2=1" -D "JucePlugin_Build_RTAS=0" -D "JucePlugin_Build_VST=0" -D "JucePlugin_Build_Standalone=0" -D "LINUX=1" -D "BINTYPE="Linux-LV2"" -D "DEBUG=1" -D "_DEBUG=1" -D "CONFIGURATION="Debug"" -I "../source" -I "../../../libs/juce/source" -I "../../../libs/juce/source/modules" -I "../../../libs/drowaudio/source" -I "../../../libs/juced/source" -I "../../../libs/juce-plugin"
  TARGET := Dexed_debug.so
 BLDCMD = $(CXX) -o $(OUTDIR)/$(TARGET) $(OBJECTS) $(LDFLAGS) $(LDFLAGS) $(RESOURCES) $(TARGET_ARCH)
endif

OBJECTS := \
	$(OBJDIR)/BinaryData.o \
	$(OBJDIR)/DXLookNFeel.o \
	$(OBJDIR)/EngineOpl.o \
	$(OBJDIR)/PluginFx.o \
	$(OBJDIR)/SysexComm.o \
	$(OBJDIR)/PluginProcessor.o \
	$(OBJDIR)/AlgoDisplay.o \
	$(OBJDIR)/PluginData.o \
	$(OBJDIR)/PluginEditor.o \
	$(OBJDIR)/ParamDialog.o \
	$(OBJDIR)/OperatorEditor.o \
	$(OBJDIR)/GlobalEditor.o \
	$(OBJDIR)/ProgramListBox.o \
	$(OBJDIR)/EngineMkI.o \
	$(OBJDIR)/DXComponents.o \
	$(OBJDIR)/CartManager.o \
	$(OBJDIR)/PluginParam.o \
	$(OBJDIR)/lfo.o \
	$(OBJDIR)/fm_op_kernel.o \
	$(OBJDIR)/freqlut.o \
	$(OBJDIR)/pitchenv.o \
	$(OBJDIR)/dx7note.o \
	$(OBJDIR)/sin.o \
	$(OBJDIR)/exp2.o \
	$(OBJDIR)/fm_core.o \
	$(OBJDIR)/env.o \
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
	@echo Linking Dexed.lv2/Dexed
	-@$(CMD_MKBINDIR)
	-@$(CMD_MKLIBDIR)
	-@$(CMD_MKOUTDIR)
	@$(BLDCMD)

clean:
	@echo Cleaning Dexed.lv2/Dexed
ifeq ($(MKDIR_TYPE),posix)
	-@rm -f $(OUTDIR)/$(TARGET)
	-@rm -rf $(OBJDIR)
else
	-@if exist $(subst /,\,$(OUTDIR)/$(TARGET)) del /q $(subst /,\,$(OUTDIR)/$(TARGET))
	-@if exist $(subst /,\,$(OBJDIR)) del /q $(subst /,\,$(OBJDIR))
	-@if exist $(subst /,\,$(OBJDIR)) rmdir /s /q $(subst /,\,$(OBJDIR))
endif

$(OBJDIR)/BinaryData.o: ../source/BinaryData.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/DXLookNFeel.o: ../source/DXLookNFeel.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/EngineOpl.o: ../source/EngineOpl.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/PluginFx.o: ../source/PluginFx.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/SysexComm.o: ../source/SysexComm.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/PluginProcessor.o: ../source/PluginProcessor.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/AlgoDisplay.o: ../source/AlgoDisplay.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/PluginData.o: ../source/PluginData.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/PluginEditor.o: ../source/PluginEditor.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/ParamDialog.o: ../source/ParamDialog.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/OperatorEditor.o: ../source/OperatorEditor.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/GlobalEditor.o: ../source/GlobalEditor.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/ProgramListBox.o: ../source/ProgramListBox.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/EngineMkI.o: ../source/EngineMkI.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/DXComponents.o: ../source/DXComponents.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/CartManager.o: ../source/CartManager.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/PluginParam.o: ../source/PluginParam.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/lfo.o: ../source/msfa/lfo.cc
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/fm_op_kernel.o: ../source/msfa/fm_op_kernel.cc
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/freqlut.o: ../source/msfa/freqlut.cc
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/pitchenv.o: ../source/msfa/pitchenv.cc
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/dx7note.o: ../source/msfa/dx7note.cc
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/sin.o: ../source/msfa/sin.cc
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/exp2.o: ../source/msfa/exp2.cc
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/fm_core.o: ../source/msfa/fm_core.cc
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/env.o: ../source/msfa/env.cc
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

$(OBJDIR)/JucePluginMain.o: ../../../libs/juce-plugin/JucePluginMain.cpp
	-@$(CMD_MKOBJDIR)
	@echo $(notdir $<)
	@$(CXX) $(CXXFLAGS) -o "$@" -c "$<"

-include $(OBJECTS:%.o=%.d)

