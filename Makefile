install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
test:
	# python -n pytest -vv --cov=myrepolib tests/*.py
	# python -n pytest --nbval notebook.ipynb
	
lint:
	pylint --disable=R,C DockerTest.py
	
all: install lint test