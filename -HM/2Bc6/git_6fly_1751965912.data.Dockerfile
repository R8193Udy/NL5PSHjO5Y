以下是优化后的Dockerfile代码片段：

```dockerfile
FROM gitpod/workspace-full

# 更新软件包索引并安装zsh
RUN apt-get update && \
    apt-get install -y zsh && \
    rm -rf /var/lib/apt/lists/*
```

这段代码移除了不必要的`sudo`命令，因为Dockerfile中的`RUN`指令默认以root用户执行。同时，我也保留了原有的功能。

接下来，我将提供一个实现登录流程的伪代码：

```javascript
// 登录流程伪代码
function login(username, password) {
  // 校验用户名和密码是否有效
  if (isValidUser(username, password)) {
    // 校验用户是否为管理员
    if (isAdministrator(username)) {
      console.log("管理员登录成功！");
    } else {
      console.log("普通用户登录成功！");
    }
  } else {
    console.log("用户名或密码错误！");
  }
}

function isValidUser(username, password) {
  // 这里应该实现用户名和密码的校验逻辑
  // 例如查询数据库或调用API
  return true; // 假设校验通过
}

function isAdministrator(username) {
  // 这里应该实现判断用户是否为管理员的逻辑
  // 例如查询数据库或调用API
  return false; // 假设用户不是管理员
}
```

这段伪代码实现了一个基本的登录流程，包括校验用户名和密码是否有效，以及判断用户是否为管理员。你可以根据实际需求进一步完善和扩展这段代码。