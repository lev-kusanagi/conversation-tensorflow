#-*- coding: utf-8 -*-

import argparse
import os
import sys

from hbconfig import Config
import numpy as np
import tensorflow as tf

import data_loader
from model import Conversation
import utils


def main():
    vocab = data_loader.load_vocab("vocab")
    Config.data.vocab_size = len(vocab)

    sentence = ' '.join(sys.argv[1:])
    ids = data_loader.sentence2id(vocab, sentence)
    ids += [Config.data.START_ID]

    if len(ids) > Config.data.max_seq_length:
        print(f"Max length I can handle is: {Config.data.max_seq_length}. Please try again.")
        return

    answer = chat(ids, vocab)
    print(answer)
if __name__ == '__main__':
    main()
