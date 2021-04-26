void parser(vector<XmlElem> &a, map<string, Routes> &mapRoutes, set<string> &nameRoutes, map<string, int> &ourLocations) {
    pugi::xml_document doc;
    doc.load_file("data1.xml");
    pugi::xml_node data = doc.child("dataset");

    for (pugi::xml_node iter = data.child("transport_station"); iter; iter = iter.next_sibling("transport_station")) {

        //работа с координатами
        string frst, scnd;
        separator(iter.child_value("coordinates"), frst, scnd);
        float firstCoord, secondCoord;
        firstCoord = stof(frst);
        secondCoord = stof(scnd);

        pair<double, double> coordinates;
        coordinates.first = firstCoord;
        coordinates.second = secondCoord;

        //работа с маршрутами
        frst = scnd = "";
        string routesStr = iter.child_value("routes"), segment;
        vector<string> routes;
        stringstream tempRoutStr(routesStr);

        if (count(routesStr.begin(), routesStr.end(), ',')) {
            while (getline(tempRoutStr, segment, ','))
                routes.push_back(segment);
        } else {
            while (getline(tempRoutStr, segment, '.'))
                routes.push_back(segment);
        }

        //работа с локацией
        frst = scnd = "";
        string locationStr = iter.child_value("location");
        vector<string> locations;
        stringstream tempLocStr(locationStr);

        if (count(locationStr.begin(), locationStr.end(), ',') && !locationStr.empty()) {
            while (getline(tempLocStr, segment, ',')) {
                if (segment[0] == ' ')
                    segment.erase(segment.begin());
                locations.push_back(sepLocation(segment));
                ourLocations[sepLocation(segment)] += 1;
            }
        } else if (!locationStr.empty()) {
            locations.push_back(sepLocation(locationStr));
            ourLocations[sepLocation(locationStr)] += 1;
        }

        int numValue = stoi(iter.child_value("number"));
        string type_of_vehicle = iter.child_value("type_of_vehicle");
        string name_stopping = iter.child_value("name_stopping");
        string the_official_name = iter.child_value("the_official_name");
        a.emplace_back(
                XmlElem(numValue, type_of_vehicle, name_stopping, the_official_name, locations, routes,
                        coordinates));


        if (!strcmp(iter.child_value("type_of_vehicle"), "Трамвай")) {
            for (int i = 0; i < routes.size(); ++i) {
                mapRoutes[routes[i]].Tram.emplace_back(XmlElem(numValue, type_of_vehicle, name_stopping, the_official_name, locations, routes,
                                                               coordinates));
                mapRoutes[routes[i]].route = routes[i];
                nameRoutes.insert(routes[i]);
            }
        } else if (!strcmp(iter.child_value("type_of_vehicle"), "Автобус")) {
            for (int i = 0; i < routes.size(); ++i) {
                mapRoutes[routes[i]].Bus.emplace_back(XmlElem(numValue, type_of_vehicle, name_stopping, the_official_name, locations, routes,
                                                              coordinates));
                mapRoutes[routes[i]].route = routes[i];
                nameRoutes.insert(routes[i]);
            }
        } else if (!strcmp(iter.child_value("type_of_vehicle"), "Троллейбус")) {
            for (int i = 0; i < routes.size(); ++i) {
                mapRoutes[routes[i]].Trolleybus.emplace_back(XmlElem(numValue, type_of_vehicle, name_stopping, the_official_name, locations, routes,
                                                                     coordinates));
                mapRoutes[routes[i]].route = routes[i];
                nameRoutes.insert(routes[i]);
            }
        }
    }
}