.PHONY: dataset doc

doc:
	R --vanilla --silent -e "library(rmarkdown); render('main.rmd')"

dataset:
	mkdir -p dataset/iris
	R --vanilla --silent -e "data <- iris; save(data, file='dataset/iris/data.rda')"
	mkdir -p dataset/cars
	R --vanilla --silent -e "data <- cars; save(data, file='dataset/cars/data.rda')"
	mkdir -p dataset/airmiles
	R --vanilla --silent -e "data <- airmiles; save(data, file='dataset/airmiles/data.rda')"
