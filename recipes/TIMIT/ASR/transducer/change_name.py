# coding=utf8

import os
import argparse
import shutil


def _get_files(in_dir, exclude=None):
    raw_list  = os.listdir(in_dir)
    raw_list = [os.path.join(in_dir, x) for x in raw_list]
    if exclude is not None:
        raw_list = [x for x in raw_list if exclude not in x]
    return raw_list

def _convert_name(cur_name):
    par, base = os.path.split(cur_name)
    return os.path.join(par, base.lower())

def main(in_dir, exclude):
    raw_list = _get_files(in_dir, exclude)
    while len(raw_list) > 0:
        f = raw_list.pop()
        low_name = _convert_name(f)
        if os.path.isdir(f):
            shutil.move(f, low_name)
            raw_list.extend(_get_files(low_name))
        else:
            shutil.move(f, low_name)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-i', '--input', type=str, help='the path to the directory')
    parser.add_argument('-e', '--exclude', type=str, default=None, help='the path to exclude in the directory')
    args = parser.parse_args()
    main(args.input, args.exclude)
