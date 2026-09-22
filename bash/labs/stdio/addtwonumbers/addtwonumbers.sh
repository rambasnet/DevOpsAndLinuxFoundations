#! /usr/bin/env bash

# -r treats the input as raw string including \
read -r a b
echo $((a+b))
