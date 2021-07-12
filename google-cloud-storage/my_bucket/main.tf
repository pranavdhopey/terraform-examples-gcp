/**
 * Copyright 2020 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

module "my_bucket" {
  source          = "../modules/gcs_bucket"
  name            = var.my_bucket["name"]
  project_id      = var.project_id
  location        = var.my_bucket["location"]
  versioning      = var.my_bucket["versioning"]
  labels          = var.my_bucket["labels"]
  force_destroy   = false
  iam_members     = var.my_bucket["iam_members"]
  lifecycle_rules = var.my_bucket["lifecycle_rules"]
}

