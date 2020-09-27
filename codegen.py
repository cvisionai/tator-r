#!/usr/bin/env python3
import sys
import yaml
import os

class NoAliasDumper(yaml.Dumper):
    def ignore_aliases(self, data):
        return True

def remove_oneof(data):
    """ Removes oneOf key from a dict and recursively calls this
        function on other dict values.
    """
    if 'oneOf' in data:
        del data['oneOf']
    for key in data:
        if isinstance(data[key], dict):
            remove_oneof(data[key])
    return data

filepath = sys.argv[1]
if not os.path.exists(filepath):
    print("No file")

def remove_non_json_apis(data):
    """ The R openapi generator does not handle non-json responses
    """
    blacklist = [
        "/rest/GetFrame/{id}",
        "/rest/StateGraphic/{id}"
    ]
    paths = data['paths']
    for key in blacklist:
        del paths[key]
    return data


with open(filepath, 'r') as f:
    schema = yaml.load(f, Loader=yaml.FullLoader)
    schema = remove_oneof(schema)
    schema = remove_non_json_apis(schema)
with open(filepath, 'w') as f:
    yaml.dump(schema, f, Dumper=NoAliasDumper)
