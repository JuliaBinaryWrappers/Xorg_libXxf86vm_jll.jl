# Autogenerated wrapper script for Xorg_libXxf86vm_jll for aarch64-linux-musl
export libXxf86vm

using Xorg_libXext_jll
JLLWrappers.@generate_wrapper_header("Xorg_libXxf86vm")
JLLWrappers.@declare_library_product(libXxf86vm, "libXxf86vm.so.1")
function __init__()
    JLLWrappers.@generate_init_header(Xorg_libXext_jll)
    JLLWrappers.@init_library_product(
        libXxf86vm,
        "lib/libXxf86vm.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
