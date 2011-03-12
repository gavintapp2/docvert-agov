# -*- coding: utf-8 -*-
import os
import pipeline_item

class Serialize(pipeline_item.pipeline_stage):
    def stage(self, pipeline_value):
        self.storage[self.attributes['toFile']] = str(pipeline_value)
        return pipeline_value


