# get file name containing "test" and ends in ".ml"
# grabs the first file and trims off "./"
filename=$(find . -maxdepth 1 -name '*test*.ml' | cat | head -n 1 | cut -b 3-)

# compile ocaml file
ocamlbuild -use-ocamlfind ${filename%.ml}.byte

# run the ocaml file
./${filename%.ml}.byte