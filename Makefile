#Setting up enviroment
env : environment.yml
	conda env create -f environment.yml

#Running all notebooks
run :
	jupyter nbconvert --ExecutePreprocessor.timeout=3600 --to notebook --execute state_of_the_union_analysis-p1.ipynb
	jupyter nbconvert --ExecutePreprocessor.timeout=3600 --to notebook --execute state_of_the_union_analysis-p2.ipynb
	#jupyter nbconvert --ExecutePreprocessor.timeout=3600 --to notebook --execute state_of_the_union_analysis-p3.ipynb
	#jupyter nbconvert --ExecutePreprocessor.timeout=3600 --to notebook --execute state_of_the_union_analysis-p4.ipynb
	#jupyter nbconvert --ExecutePreprocessor.timeout=3600 --to notebook --execute state_of_the_union_analysis-p5.ipynb


.PHONY : clean

clean:
	rm -f fig/*.png
	rm -f results/*.h5
	rm -f results/*.db