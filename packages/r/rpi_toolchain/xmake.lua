package("rpi_toolchain")

    set_kind("toolchain")
    set_homepage("https://github.com/raspberrypi/tools")
    set_description("raspberrypi toolchain")

    if is_host("linux") then
        set_urls("https://github.com/raspberrypi/tools.git")
        add_versions("2021.11", "439b6198a9b340de5998dd14a26a0d9d38a6bcac")
    end

    on_install("@linux", function (package)
        os.cp("arm-bcm2708/arm-linux-gnueabihf/*", package:installdir())
    end)

    on_test(function (package)
        local gcc = "arm-linux-gnueabihf-gcc"
        os.exec("pwd")
        os.vrunv(gcc, {"--version"})
    end)

