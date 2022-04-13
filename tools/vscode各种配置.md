vscode js 单步调试配置 

```json
// open configuration -> launch.json
{
    // Use IntelliSense to learn about possible attributes.
    // Hover to view descriptions of existing attributes.
    // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Launch Egg",
            "type": "node",
            "request": "launch",
            "cwd": "${workspaceRoot}",
            "runtimeExecutable": "npm",
            "windows": {
              "runtimeExecutable": "npm.cmd"
            },
            "runtimeArgs": [
              // 第四个参数指定需要调试的勒
              "run", "test", "--","test/app/controller/settings.test.ts", "--debug"
            ],
            "port": 5858
          }
    ]
}
```





设置代码自动保存

```json
// settings.json
{
    // 保存自动格式化
    "editor.formatOnSave": false,
    // 保存时自动纠错
    "editor.codeActionsOnSave": {
        "source.fixAll.eslint": true
    },
}
```



关闭分号检测

```js
// ${workspace}/.prettierrc.json
{
    // false-结尾不显示分号 true-结尾显示分号
    "semi": false, 
    // true-强制单引号引用字符串
    "singleQuote": false, 
}


//  ${workspace}/.eslintrc.js
module.exports = {
  'rules': {
    // 结尾分号不报错
    'prettier.semi': false,
  }
}
```




