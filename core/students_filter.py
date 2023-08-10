#!/usr/bin/env python

import yaml
from lxml import etree

with open("students_filter_cfg.yaml", "r") as cfg:
    config = yaml.safe_load(cfg)

xml = etree.parse(f'.././{config["files"]["folder_db"]}/{config["files"]["xml"]}')
xslt = etree.parse(f'.././{config["files"]["folder_db"]}/{config["files"]["xslt"]}')

transformer = etree.XSLT(xslt)
report = transformer(xml)

print(report)

with open(f'.././{config["files"]["report"]}/all_students.xml', "w") as printer:
    printer.write(str(report))