install:
	npm ci

publish:
	npm publish --dry-run

link:
	npm link

lint:
	npx eslint .

fix:
	eslint . --fix

build:
	rm -rf dist
	npm run build

test:
	npm test

test-coverage:
	npm test -- --coverage

help:
	npx babel-node ./src/bin/gendiff.js -h

plain:
	npx babel-node ./src/bin/gendiff.js --format plain ./__fixtures__/before.json ./__fixtures__/after.json

json:
	npx babel-node ./src/bin/gendiff.js ./__fixtures__/before.json ./__fixtures__/after.json