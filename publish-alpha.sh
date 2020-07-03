#!/bin/bash

circleci config pack src > orb.yml
circleci orb publish orb.yml teka23/discord@dev:alpha
rm -rf orb.yml
