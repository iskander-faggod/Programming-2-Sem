#define PUGIXML_HEADER_ONLY
#define pugi pugih

#include "test.hpp"

// Check header guards
#include "../../cmake-build-debug/pugixml.hpp"
#include "../../cmake-build-debug/pugixml.hpp"

using namespace pugi;

TEST(header_only_1)
{
	xml_document doc;
	CHECK(doc.load_string(STR("<node/>")));
	CHECK_STRING(doc.first_child().name(), STR("node"));

#ifndef PUGIXML_NO_XPATH
	CHECK(doc.first_child() == doc.select_node(STR("//*")).node());
#endif
}
