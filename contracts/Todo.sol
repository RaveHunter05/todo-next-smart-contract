// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Todo1 {
  uint256 totalTasks = 0;

  struct Task {
    uint256 id;
    string name;
    bool completed;
  }

  mapping(uint256 => Task) public tasks;

  constructor() public {
    addTask("what's up bruh");
  }

  function addTask(string memory _name) {
    totalTasks++;
    tasks[totalTasks] = Task(totalTask, _name, false);
  }
}
