const express = require("express")
const logicTasks = express.Router()

const {getTasks, getTask, createTask} = require("../controllers/Tasks")

logicTasks.get("/:pid", getTasks);
logicTasks.get("/:pid/:tid", getTask);
logicTasks.post("/", createTask);



module.exports = {logicTasks};