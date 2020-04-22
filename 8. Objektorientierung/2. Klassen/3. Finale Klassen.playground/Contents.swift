// Von finalen Klassen kann man nicht erben
// Finale Klassen sind für Software-Architekturen sehr wichtig


class AudioPlayer {
    var volume: Int
    var onButtonTapped: Bool
    
    init(volume: Int, onButtonTapped: Bool) {
        self.volume = volume
        self.onButtonTapped = onButtonTapped
    }
    
}

final class CDPlayer: AudioPlayer {
    
}

final class MP3Player: AudioPlayer {
    
}


// Würde Fehlermeldung erzeugen, da die Klasse CDPlayer final ist
/*
class DiskMan: CDPlayer{
    
}
 */
