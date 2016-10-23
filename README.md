     KeyStroke Dynamic : KD is someone's physic behavioural attribute of typing, which is recently considered as one the the biometrics techniques to recognise the user. It has two factors :
          Latency: How long has a key been pressed?
          Duration : How much time it takes to move from one key to the other key?

touch hit release?
     - push peak = touch + hit
     - release

KeyStroke Sample Collection:
     The same finger
     several times
     have a content of 24 alphabet.

Key Detection:
      Use a threshold to determine a peak in the key press, in this way we can define the area around one peak as a key press region.(around 20ms) and then the next "peak area" who follows the peak area as a key release region(approximately 88ms)

Recognition Technique:

- FFT features along with neural network for keystroke recognition: Asonov and Agrawal
- Inter-Key Timing: latency - measures the time duration between consecutive keystrokes. (Monrose et al. Bergadano et al. Lau)
- Keystroke Energy.
- Cepstrum features MFCC: Zhuang et al.(Question: Est-ce que c'est la meme chose que : Frequency Features and Neural Networks newpnn()function for creating the neural network)
- Cross correlation between signals for identifying keystrokes (Berger et al): Cross-Correlation (X-Corr): The X-Corr was calculated for the press and release regins and the mean value of both was used.
- Time-frequency classification method: Halevi and Saxena(Time-Freq): a combination of correlation calculation and the frequency based calculation to choose the best-mathing letter.
- DTW: Dynamic Time Warping is an algorithm which measures similarities between sequences, we used the simple distance measure between each two elements in the signal vectors to calculate the difference between each two recordings.
- Frequency-based Distance Measure(Freq-Dist): Compute the frequency-based distance between each two signals by calculating the Euclidean difference between the feqtures for the press and release parts and average them to get a distance measure.
