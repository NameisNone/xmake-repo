package("tboox.tbox")

    set_homepage("http://www.tboox.org")
    set_description("A glib-like multi-platform c library")

    add_urls("https://github.com/tboox/tbox/archive/$(version).tar.gz")
    add_urls("https://github.com/tboox/tbox.git")
    add_urls("https://gitee.com/tboox/tbox.git")

    set_versions("v1.6.2")
    add_sha256s("v1.6.2", "26ede7fd61e33c3635bf2d6657ae4040a4a75c82a5da88855fd965db2f834025")

    on_build(function (package)
        os.vrun("xmake f -p $(plat) -a $(arch) -m $(mode) --demo=n -c")
        os.vrun("xmake")
    end)

