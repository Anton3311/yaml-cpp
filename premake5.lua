project "yaml-cpp"
    kind "StaticLib"
	language "C++"
    cppdialect "C++17"
	staticruntime "off"

    files
    {
        "src/**.h",
        "src/**.cpp",

		"include/**.h"
    }

    includedirs
	{
		"include/",
	}

	defines
	{
		"YAML_CPP_STATIC_DEFINE"
	}

	targetdir("%{wks.location}/bin/" .. OUTPUT_DIRECTORY .. "/%{prj.name}")
	objdir("%{wks.location}/bin-int/" .. OUTPUT_DIRECTORY .. "/%{prj.name}")

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		runtime "Release"
		optimize "on"

