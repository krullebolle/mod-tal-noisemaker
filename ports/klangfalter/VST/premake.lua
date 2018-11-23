
dofile("../../../scripts/make-project.lua")

package = make_juce_vst_project("KlangFalter")

package.files = {
  matchfiles (
    "../source/*.cpp",
    "../source/FFTConvolver/*.cpp",
    "../source/UI/*.cpp",
    "../../../libs/juce-plugin/JucePluginMain.cpp"
  )
}
