job "hello-devops" {
  datacenters = ["dc1"]
  type        = "service"

  group "hello" {
    count = 1

    task "hello" {
      driver = "docker"


      config {
        # 保持你原来的镜像名不变
        image = "devops-intern-test-yq:latest"

        # 新增：定义日志驱动与目标地址
        logging {
          type = "loki"
          config {
            loki-url = "http://host.docker.internal:3100/loki/api/v1/push"
            loki-external-labels = "job=nomad-hello-app"
          }
        }
      }
      resources {
        cpu    = 100
        memory = 128
      }
    }
  }
}
