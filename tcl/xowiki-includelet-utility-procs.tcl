ad_library {

    Initialize an instance of the xowiki includelet

    @author Don Baccus (dhogaza@pacifier.com)
    @cvs-id $Id$

}

namespace eval xowiki_includelet_utilities {}

ad_proc xowiki_includelet_utilities::configure_admin_includelet {
    element_id
} {
    Mount the friggin' package if necessary.  Called by the admin includelet.

    @param element_id The xowiki includelet

} {
    set node_id [site_node::get_node_id_from_object_id \
                    -object_id [layout::element::get_column_value \
                                    -element_id $element_id \
                                    -column package_id]]
    if { [site_node::get_children -node_id $node_id -package_key xowiki-includelet] eq "" } {
        subsite::auto_mount_application -node_id $node_id xowiki-includelet
    }
}
