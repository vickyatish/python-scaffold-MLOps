.PHONY : install lint format test clean

install:
	pip install -r requirements.txt

lint:
	flake8 src tests

format:
	black src tests

test:
	pytest -v

clean:
	rm -rf __pycache__ .pytest_cache