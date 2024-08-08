# paths
src_dir := src
pdf_dir :=
aux_dir := aux
aux_dirs := $(aux_dir) $(addprefix $(aux_dir), $(src_dir))

# project
project_name := grid_spec
project := $(pdf_dir)$(project_name).pdf

# sources
sources := $(wildcard $(src_dir)/*.tex $(src_dir)/**/*.tex)

# compiler
compiler := latexmk
flags := -no-shell-escape -pdf -auxdir=$(aux_dir) -jobname=$(project_name)

.PHONY: all clean
all: $(project)
clean:
	-rm -rf $(aux_dir) $(project)

$(project): $(aux_dirs) $(sources)
	$(compiler) $(flags) $(src_dir)/main.tex

$(aux_dirs):
	-mkdir $@
