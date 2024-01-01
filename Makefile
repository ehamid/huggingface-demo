install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vvv --cov=hello --cov=greeting \
		--covsmath --cov=web tests
	python -m pytest -nbval notebook.ipynb #tests our jupyter notebook
	#python -m pytest -v tests/test_web.py #if we want to test web

debug:
	python -m pytest --v --pdb		# invoke dubugger

one-test:
	python -m pytest -vv tests/test_greeting.py::test_my_name4
