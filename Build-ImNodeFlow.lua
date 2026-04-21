project "ImNodeFlow"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"
	warnings "off"

targetdir (ThirdPartyBinDir)
objdir (ThirdPartyIntDir)

defines {
	"IMGUI_DEFINE_MATH_OPERATORS",
}

files
{
	"src/ImNodeFlow.cpp",
	"include/ImNodeFlow.h",
	"src/ImNodeFlow.inl",
	"src/imgui_bezier_math.h",
	"src/imgui_bezier_math.inl",
	"src/imgui_extra_math.h",
	"src/imgui_extra_math.inl",
	"src/context_wrapper.h",
}

includedirs
{
	"include",
	"src",
	"%{IncludeDir.ImGui}",
}

filter "system:windows"
	systemversion "latest"
	defines { "_CRT_SECURE_NO_WARNINGS" }

filter "configurations:Debug"
	runtime "Debug"
	symbols "on"

filter "configurations:Release"
	runtime "Release"
	optimize "on"

filter "configurations:Dist"
	runtime "Release"
	optimize "on"
