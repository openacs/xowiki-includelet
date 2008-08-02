ad_page_contract {

    Remove an element from a given pageset

    @author Gustaf Neumann (gustaf.neumann@wu-wien.ac.at)
    @author Don Baccus
    @creation-date 2008-07-31
    @cvs-id $Id$

} {
    element_id:integer,notnull
    referer:notnull
}

layout::element::delete -element_id $element_id
# redirect and abort
ad_returnredirect $referer
ad_script_abort

