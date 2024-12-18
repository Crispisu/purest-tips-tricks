install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=hello --cov=greeting tests
	python -m pytest --nbval notebook.ipynb

debug:
	python -m pytest -vv --pdb #debugger is invoked

debugthree:
	python -m pytest -vv --pdb --maxfail=3 #drop to pdb for first 3 failures

format:
	black *.py

lint:
	pylint --disable=R,C hello.py

all: install lint test format