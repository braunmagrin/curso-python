SOURCE=primeiros-passos-com-python

${SOURCE}.slides.html: ${SOURCE}.ipynb
	jupyter-nbconvert --to slides ${SOURCE}.ipynb --reveal-prefix=reveal.js
	sed -i -e 's/simple.css/sky.css/' ${SOURCE}.slides.html

serve: ${SOURCE}.slides.html
	python3 -m http.server

clean:
	rm ${SOURCE}.slides.html
