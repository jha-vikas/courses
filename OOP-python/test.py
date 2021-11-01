from os import name
import sys


def warnings_filter(infilename):
    with open(infilename) as infile:
        yield from (
            l.replace('\tWARNING', '')
            for l in infile if 'WARNING' in l
        )


if __name__ == "__main__":
    inname, outname = sys.argv[1:3]
    filter = warnings_filter(inname)
    with open(outname, "w") as outfile:
        for l in filter:
            outfile.write(l)