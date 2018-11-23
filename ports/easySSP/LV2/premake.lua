
dofile("../../../scripts/make-project.lua")

package = make_juce_lv2_project("EasySSP")

package.files = {
  matchfiles (
    "../source/*.cpp",
    "../../../libs/juce-plugin/JucePluginMain.cpp"
  )
}

package.includepaths = {
  package.includepaths,
  "../source/dsp-utility"
}
