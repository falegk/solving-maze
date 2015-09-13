# Solving Maze

This program was created for an interview.

## Usage

Run to the command line:

    $ ruby maze.rb [matrix json file]

Example

    $ ruby maze.rb examples/maze1.json

## Maze Matrix

The program reads json files, which create the maze.
This file must contain:

* **start {x,y}** : The starting point
* **goal {x,y}** : The ending point
* **dimensions {x,y}** : Dimensions of the maze (Only until it arrives. All start from 1x1)
* **wall [[x,y],[x,y]...]** : The walls of the maze

see an example in the examples folder. eg. **examples/maze1.json**
## References

The basic algorithm of solving the problem owned by Robert I. Pitts of the Boston University Computer Science <br/>
 [Boston University Computer Science BU CAS CS](http://www.bu.edu/cs/) - [Recursion: Solving a Maze by Robert I. Pitts](https://www.cs.bu.edu/teaching/alg/maze).
