const paths = {
	jokes: 'assets/jokes/',
	memes: 'assets/memes/'
};

const elements = {
	jokeButton: document.querySelector('#show-joke'),
	memeButton: document.querySelector('#show-meme'),
	result: document.querySelector('#result')
};

function pickRandom(items) {
	return items[Math.floor(Math.random() * items.length)];
}

function showMessage(text) {
	elements.result.replaceChildren();
	elements.result.classList.remove('is-empty');

	const message = document.createElement('p');
	message.className = 'message';
	message.textContent = text;

	elements.result.append(message);
}

async function loadManifest(directory) {
	const response = await fetch(`${directory}manifest.json`, { cache: 'no-store' });

	if (!response.ok) {
		throw new Error(`Could not load ${directory}manifest.json`);
	}

	const manifest = await response.json();

	if (!Array.isArray(manifest.files)) {
		throw new Error(`Manifest at ${directory}manifest.json has no files array`);
	}

	return manifest.files;
}

async function showRandomJoke() {
	try {
		const files = await loadManifest(paths.jokes);

		if (files.length === 0) {
			showMessage('No jokes are listed yet.');
			return;
		}

		const file = pickRandom(files);
		const response = await fetch(`${paths.jokes}${encodeURIComponent(file)}`, { cache: 'no-store' });

		if (!response.ok) {
			throw new Error(`Could not load joke file ${file}`);
		}

		const jokeText = await response.text();
		const joke = document.createElement('p');
		joke.className = 'joke';
		joke.textContent = jokeText.trim() || 'This joke file is empty.';

		elements.result.replaceChildren(joke);
		elements.result.classList.remove('is-empty');
	} catch (error) {
		showMessage('The joke could not be loaded. Please check the jokes folder and manifest.');
	}
}

async function showRandomMeme() {
	try {
		const files = await loadManifest(paths.memes);

		if (files.length === 0) {
			showMessage('No memes are listed yet.');
			return;
		}

		const file = pickRandom(files);
		const image = document.createElement('img');
		image.className = 'meme';
		image.src = `${paths.memes}${encodeURIComponent(file)}`;
		image.alt = 'Random meme';

		image.addEventListener('error', () => {
			showMessage('The meme could not be loaded. Please check the memes folder and manifest.');
		}, { once: true });

		elements.result.replaceChildren(image);
		elements.result.classList.remove('is-empty');
	} catch (error) {
		showMessage('The meme list could not be loaded. Please check the memes folder and manifest.');
	}
}

elements.jokeButton.addEventListener('click', showRandomJoke);
elements.memeButton.addEventListener('click', showRandomMeme);
