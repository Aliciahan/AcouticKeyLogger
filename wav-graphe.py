import matplotlib.pyplot as plt
from scipy.fftpack import fft
from scipy.io import wavfile # get the api
import sys

def getWaveFftGraphe (fileName):
    fs, data = wavfile.read(fileName)
    a = data.T[0] # get the first track
    b = [(ele/2**16)*2-1 for ele in a] #for 16bit brack b is now normalized on [-1,1)
    c = fft(b) #calculate fft
    d = len(c)/2 # half of the fft list (signal symmetry)
    plt.plot(abs(c[:(d-1)]),'r')
    plt.show()


if __name__ == '__main__':
    getWaveFftGraphe(sys.argv[1])
