#!/usr/bin/env python3
"""Write a Python function that changes all topics of a
school document based on the name:

Prototype: def update_topics(mongo_collection, name, topics):
mongo_collection will be the pymongo collection object
name (string) will be the school name to update
"""


import pymongo


def update_topics(mongo_collection, name, topics):
    """changes all topics of a school document"""
    return mongo_collection.update_many({"name": name},
                                        {"$set": {"topics": topics}})
