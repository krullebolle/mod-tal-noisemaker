
dofile("../../../scripts/make-project.lua")

package = make_juce_lv2_project("drowaudio-tremolo")

package.config["Release"].links = { package.config["Release"].links, "drowaudio" }
package.config["Debug"].links   = { package.config["Debug"].links, "drowaudio_debug" }

package.defines = { package.defines, "USE_DROWAUDIO=1" }

package.includepaths = {
  package.includepaths,
  "../../drowaudio-common"
}

if (os.getenv("LINUX_EMBED")) then
package.files = {
  matchfiles (
    "../source/PluginProcessor.cpp",
    "../../../libs/juce-plugin/JucePluginMain.cpp"
  )
}
else
package.files = {
  matchfiles (
    "../source/*.cpp",
    "../../../libs/juce-plugin/JucePluginMain.cpp"
  )
}
end
