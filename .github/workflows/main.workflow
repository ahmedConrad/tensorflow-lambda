workflow "build and publish" {
  on = "push"
  resolves = ["build"]
}

action "tag" {
  uses = "actions/bin/filter@master"
  args = "tag"
}

action "build" {
  needs = "tag"
  uses = "docker://lambci/lambda:build-nodejs8.10"
  runs = ["./scripts/build.sh"]
}

