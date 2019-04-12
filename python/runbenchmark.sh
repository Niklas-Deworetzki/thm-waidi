#!/bin/sh

py.test benchmark.py --benchmark-warmup-iterations=5 --benchmark-min-rounds=10 --benchmark-autosave
