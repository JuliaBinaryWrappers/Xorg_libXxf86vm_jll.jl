# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule Xorg_libXxf86vm_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("Xorg_libXxf86vm")
JLLWrappers.@generate_main_file("Xorg_libXxf86vm", Base.UUID("186ad0d3-3857-58f7-82ba-12edabe58aab"))
end  # module Xorg_libXxf86vm_jll
