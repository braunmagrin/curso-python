SOURCE=primeiros-passos-com-python
NOTEBOOK=.ipynb
HTML=.slides.html

slides: ${SOURCE}${NOTEBOOK}
	jupyter-nbconvert --to slides ${SOURCE}${NOTEBOOK} --reveal-prefix=reveal.js
	sed -i -e 's/simple.css/sky.css/' ${SOURCE}${HTML}

serve: slides
	python3 -m http.server

clean:
	rm ${SOURCE}${HTML}
