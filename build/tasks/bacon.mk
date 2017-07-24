#
# Copyright (C) 2017 TripNDroid Mobile Engineering
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TRIPNDROID_TARGET_PACKAGE := $(PRODUCT_OUT)/tripndroid-$(TRIPNDROID_VERSION).zip

.PHONY: bacon
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(TRIPNDROID_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(TRIPNDROID_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(TRIPNDROID_TARGET_PACKAGE).md5sum
	@echo "Package Complete: $(TRIPNDROID_TARGET_PACKAGE)" >&2