// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//write a smart contract that implements the require(), assert() and revert() statements.

contract StudentProjects {
    address public student;
    uint256 public projectCount = 0;

    struct Project {
        uint256 id;
        string name;
        string description;
    }

    mapping(uint256 => Project) public projects;

    function addProject(string memory name, string memory description) public {
        projectCount++;
        projects[projectCount] = Project(projectCount, name, description);
    }

    function deleteProject(uint256 id) public {
        require(projects[id].id != 0, "Project does not exist");
        delete projects[id];
    }

    function getProject(uint256 id) public view returns (Project memory) {
        Project memory project = projects[id];
        if (project.id == 0) {
            revert("Project does not exist");
        }

        return project;
    }

    function transferOwnership(address newStudent) public {
        assert(newStudent != address(0)); // Ensure the new address is not the zero address
        student = newStudent;
    }
}
