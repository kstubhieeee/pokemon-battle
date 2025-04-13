# Pokémon Battle Simulator

A web-based Pokémon battle simulator that allows users to choose trainers and Pokémon for exciting turn-based battles using real Pokémon data from the PokéAPI.

![Pokémon Battle Simulator](https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png)
![Pokémon Battle Simulator](https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png)
![Pokémon Battle Simulator](https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/4.png)
![Pokémon Battle Simulator](https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/7.png)
![Pokémon Battle Simulator](https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/152.png)
![Pokémon Battle Simulator](https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/155.png)
![Pokémon Battle Simulator](https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/158.png)
![Pokémon Battle Simulator](https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/700.png)

## Features

- **Choose Your Trainer**: Select from a variety of iconic trainers from the Pokémon games
- **Select Your Pokémon**: Choose any Pokémon from the first 151 Pokémon (Gen 1)
- **Random Selection**: Option to randomly select trainers and Pokémon
- **Real-time Battles**: Turn-based battle system with authentic Pokémon mechanics
- **Type Effectiveness**: Implements proper type advantages and weaknesses
- **Move Selection**: Each Pokémon comes with its signature moves
- **Visual Effects**: Animated battle sequences with dialogue boxes
- **Responsive Design**: Works on both desktop and mobile devices

## Technology Stack

- **Frontend**: HTML, CSS, JavaScript
- **Backend**: Python with Flask
- **API**: PokéAPI for Pokémon data
- **Animation**: CSS animations for battle sequences
- **Templating**: Jinja2 templates

## Installation

1. Clone the repository:
```bash
git clone https://github.com/kstubhieeee/pokemon-battle.git
cd pokemon-battle
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Run the application:
```bash
python main.py
```

4. Open your browser and go to:
```
http://localhost:5000
```

## How to Play

1. On the home page, select your trainer and your opponent's trainer
2. Choose your Pokémon and your opponent's Pokémon (or use the random selection buttons)
3. Click "Start Battle" to begin
4. During battle, select moves to attack your opponent
5. The battle continues until one Pokémon faints
6. After the battle ends, you can start a new one

## Project Structure

- `main.py`: Main Flask application with routes and game logic
- `templates/`: HTML templates
  - `index.html`: Home page with trainer and Pokémon selection
  - `battle.html`: Battle interface with game mechanics
- `requirements.txt`: Python dependencies

## Credits

- Pokémon data provided by [PokéAPI](https://pokeapi.co/)
- Trainer sprites from [Pokémon Showdown](https://play.pokemonshowdown.com/)
- Pokémon sprites from [PokeAPI/sprites](https://github.com/PokeAPI/sprites)

## Future Enhancements

- Add more generations of Pokémon
- Implement multiplayer functionality
- Add battle items and abilities
- Create team building functionality
- Implement weather effects and field conditions

## License

This project is for educational purposes only. Pokémon and all related properties are trademarks of Nintendo, Game Freak, and The Pokémon Company.

## Author

Created by [Kaustubh Bane](https://github.com/kstubhieeee)

## Connect

- [GitHub](https://github.com/kstubhieeee)
- [Twitter](https://x.com/kstubhiee)
- [LinkedIn](https://www.linkedin.com/in/kstubhie/)
