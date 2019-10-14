# Autogenerated wrapper script for Xorg_libXxf86vm_jll for aarch64-linux-musl
export libXxf86vm

using Xorg_libXext_jll
using Xorg_xf86vidmodeproto_jll
using Xorg_util_macros_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libXxf86vm`
const libXxf86vm_splitpath = ["lib", "libXxf86vm.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libXxf86vm_path = ""

# libXxf86vm-specific global declaration
# This will be filled out by __init__()
libXxf86vm_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libXxf86vm = "libXxf86vm.so.1"


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    append!.(Ref(PATH_list), (Xorg_libXext_jll.PATH_list, Xorg_xf86vidmodeproto_jll.PATH_list, Xorg_util_macros_jll.PATH_list,))
    append!.(Ref(LIBPATH_list), (Xorg_libXext_jll.LIBPATH_list, Xorg_xf86vidmodeproto_jll.LIBPATH_list, Xorg_util_macros_jll.LIBPATH_list,))

    global libXxf86vm_path = abspath(joinpath(artifact"Xorg_libXxf86vm", libXxf86vm_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libXxf86vm_handle = dlopen(libXxf86vm_path)
    push!(LIBPATH_list, dirname(libXxf86vm_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

