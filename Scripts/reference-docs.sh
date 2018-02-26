#!/bin/sh

echo "Generating Jazzy Reference Documentation"

bundle exec jazzy \
  --clean \
  --author Contentful \
  --author_url https://www.contentful.com \
  --github_url https://github.com/contentful/contentful.swift \
  --github-file-prefix https://github.com/contentful/contentful.swift/tree/${CONTENTFUL_SDK_VERSION} \
  --xcodebuild-arguments -workspace,Contentful.xcworkspace,-scheme,Contentful_iOS \
  --module-version ${CONTENTFUL_SDK_VERSION} \
  --module Contentful \
  --theme apple

