Complex Adaptive Systems (CAS) Coursework

This repository contains coursework from the Complex Adaptive Systems class, focusing on foundational concepts in linear algebra and various neural network architectures. The assignments are implemented primarily in MATLAB, but 1-7 are in Python.​

Structure:
Assignments 1–7: PDF documents of Python script detailing theoretical concepts and problem sets.
Assignments 8–10: MATLAB .m files implementing neural network models and simulations.​

Neural Network Models Covered:

Feedforward Neural Network (FNN): A multi-layer network where connections do not form cycles.

Self-Organizing Map (SOM): An unsupervised learning model for dimensionality reduction.

Hopfield Neural Network (HNN): A recurrent network used for associative memory.

Spiking Neural Network (SNN): A model that incorporates time into neuron activation.

Scale-Free Network: A network whose degree distribution follows a power law.​

Getting Started -

Prerequisites

PYTHON installed,
MATLAB installed 


Assignments Overview - 

ASSIGNMENT1.pdf – This Python script for the first 2 graphs exemplifies the way that we can implement basic linear algerbra into our code - a foundational aspect to learn for creating all sourts of simulations. Starting with vectors, I first created them and plotted them with random integers, and secondly tried using a loop to create incrementally increasing elements. The third graph is known as an 'attractor network', which demonstrates the normalizing of the graph towards point attractors. The final graph is a very simple feedforward neural network - it has untrained random weights, meaning it cannot accomplish predictive, unsupervised, or weight/bias adjustment tasks (but we will get to those soon).

ASSIGNMENT2.pdf - Once again in Python, assignment 2 has 2 parts - the first is made to demonstrate the infamous Gambler's Fallacy! This small probabilistic simulation tells Python to flip a coin... 10,000 times, and check the likelihood of the 5th coin flip being heads after flipping heads 4 times in a row. Obviously, it returns about 50%; but many people would fall for the fallacy and assume they'd be more likely to land heads after 4 in a row! The 2nd part of the assignment aims re-prove the famous French mathematician Jean Le Rond D'Alembert WRONG!! We do this by demonstrating that the likelihood of flipping heads twice in a row is NOT indeed 1/3, like he proposed, and is actually 1/4. 

ASSIGNMENT3.pdf - In assignment 3 we find ourselves once again messing around with probabilities. This assignment explores different types of probabilistic reasoning and simulations, combining logic puzzles and computational modeling. It’s broken into 2 parts:
Same-Birthday Probability Simulation
This section models the probability of two people in a group sharing a birthday (the Birthday Paradox). A simple loop simulates how the probability of a shared birthday increases as you sequentially add more people to the group. The simulation was run for group sizes of 40, 30, and 20 to see where the probability gets closest to 50%.
Next, the Monty Hall Problem – Monte Carlo Simulation
This part uses a Monte Carlo simulation to explore the classic Monty Hall problem. It compares two strategies — staying with the initial choice vs. switching after the host reveals a goat. Each strategy is simulated over 10,000 trials to determine which gives a better chance of winning the car. Results highlight the counterintuitive power of probabilistic reasoning. 

ASSIGNMENT4.pdf - My Python script for Assignment 4 demonstrates some notable emergent properties of plotted data aggregation! The first block demonstrates CENTRAL LIMIT THEOREM - the theory that even the original uniform data (aka flat), when averaged adds structure — extreme values get "diluted," while mid-range values accumulate, forming the familiar bell curve. The second block demonstrates that when we start with a bimodal distribution, and average across pairs, a flat distribution emerges! Moreover, the use of exactly 30 samples as a threshold, amplifies this effect. And for the final block, even with strange, chaotic starting data, aggregation washes away the weirdness. As long as the mean and independence conditions are met, the average always gravitates toward a normal distribution.

ASSIGNMENT5.pdf - Now it starts to get a bit more interesting - Lorenz Attractor - 
In this this surprisingly small block, when plotted, we see one of the most famous examples of chaotic behavior emerging from deterministic systems. For those unfimiliar with determinism, it suggests that everything that exists and will exist, is already set in stone and 'determined'. A deterministic system, is one that is scripted to behave in a mathematically tangible and predictable way. On paper, the formula for the Lorenz Attractor does not at all imply chaotic behavior, that chaos just sort of happens. The reason for this, is that when feedback loops are introduced to nonlinearity, small changes in values are greatly amplified; this in turn creates what we call fractality - a recurring shape with uniformity at different scales and different values. 

ASSIGNMENT6.pdf - The Logistic Map - 
This system in the python script demonstrates another example of fractal and chaotic behavior. When we take equation for the logistic map, and integrate it into python code, the simple, nonlinear equation that models population growth can present bifurcation - aka chaotic splitting in 2s. As the growth rate increases, the system transitions from stability to oscillation to full-blown chaos—demonstrating how complex behavior can arise from very simple rules.

ASSIGNMENT7.pdf - The Mandelbrot Set
What makes it remarkable is how it reveals the boundary between stability and chaos. For values of c inside the set, the iteration remains bounded, but just outside the boundary, it quickly diverges—creating a highly intricate and infinitely detailed fractal pattern. The set is self-similar at different scales, meaning zooming in reveals smaller versions of itself over and over. This fractal behavior has made the Mandelbrot Set a symbol of chaos theory and nonlinear dynamics, with implications in fields as diverse as physics, biology, economics, and cognitive science. It serves as a powerful visual and conceptual demonstration of how feedback and recursion can lead to emergent complexity—key principles in understanding natural and computational systems.

ASSIGNMENT8.m(including pts1-4) - A coding exercise to switch languages into MATLAB! This is the same as ASSIGNMENT1.pdf but translated.

ASSIGNMENT9.m - Conway's Game of Life
In ASSIGNMENT9.m, I implemented a MATLAB simulation of Conway’s Game of Life to explore emergent behavior in complex systems. The script initializes a 50x50 grid where each cell has a 60% chance of being active (represented by 1) and 40% chance of being inactive (0). To simulate a toroidal (wrap-around) universe, two indexing vectors —incr and decr— are used to manage neighbor calculations across the grid's edges. The program iteratively updates the grid over 1000 cycles by computing the number of active neighbors each cell has, using matrix operations to account for all eight surrounding cells. The evolution of the system is governed by a concise logical rule: a cell becomes active if it has exactly three neighbors, or if it is already active and has exactly two neighbors. The grid is visualized dynamically using grayscale imaging to reflect real-time changes. This assignment demonstrates how simple rules can lead to rich, complex patterns over time—a key principle in complex adaptive systems and an illustrative example of self-organization in artificial life.

ASSIGNMENT10.m - Scale Free Network
In ASSIGNMENT10.m, I developed a MATLAB simulation that constructs and analyzes a scale-free network—a type of network where some nodes (hubs) naturally emerge with far more connections than others, often following a power-law distribution. The assignment begins by creating a 100-node adjacency matrix initialized with zeros, then connecting each node to a random peer to ensure basic connectivity. Additional random links are seeded to break initial uniformity, introducing early “wealth” differences. The core of the simulation lies in a preferential attachment mechanism: nodes with more existing connections have a higher probability of acquiring new links, simulating real-world processes such as social network growth or web link formation. This is achieved using a biased probability distribution that favors already-connected nodes. The algorithm continues until the network reaches 500 total links. Finally, the network is cleaned of any self-connections and made strictly undirected. To visualize the structure, three plots are generated: a histogram of node degrees, a log-log plot showing the power-law distribution of connections, and a circular graph layout of the entire network. This assignment demonstrates the emergence of scale-free properties through simple rules and bias, modeling real-world systems where inequality in connectivity naturally arises.

Learning Objectives:

Understand and apply linear algebra concepts in the context of neural networks.

Implement various neural network architectures and analyze their behaviors.

Explore the dynamics of complex adaptive systems through simulation.​

Author: Liam McMurray

Institution: University of California, Merced

Course: Cognitive Science – Complex Adaptive Systems​

Contact: For questions or collaboration inquiries, please contact lmcmurray185@gmail.com
