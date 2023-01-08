//SPDX-License-Identifier: MIT

pragma solidity ^0.8.9;

contract TodoList {
    
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    // function used to create todos.
    function create(string calldata _text) external {
        todos.push(Todo({
            text: _text,
            completed: false
        }));
    }
    // function used to update todos.
    function updateText(uint _index, string calldata _text) external {
        todos[_index].text = _text;
    }
    // function used to see todo with index number.
    function get(uint _index) external view returns(string memory, bool) {
        Todo memory todo = todos[_index];
        return (todo.text, todo.completed);
    }
    // Function used to change the completion state of todo.
    function toggleCompleted(uint _index) external {
        todos[_index].completed = !todos[_index].completed;
    }
}