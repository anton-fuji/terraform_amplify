import './App.css';
import Asciitext from './ascii/AsciiText'

function App() {
  return (
    <div>
      <Asciitext
        text='やっほ〜!'
        enableWaves={true}
        asciiFontSize={10}
        />
    </div>
  );
}

export default App;