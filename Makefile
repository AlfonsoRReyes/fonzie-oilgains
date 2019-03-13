### Build and deploy https://blog.oilgainsanalytics.com

all: serve

serve:
	Rscript -e "blogdown::serve_site()"

build:
	Rscript -e "blogdown::hugo_build()"

sync:
	rsync -zrvce 'ssh -p 2222' public/ oilgainsanalytics:public_html/blog
	or
	rsync -zrvce 'ssh -p 2222' public/ ssh-oilgains-inmotion:public_html/blog

deploy: sync serve
	

clean:
	rm -rf public
	rm -f content/blog/*.html
	rm -f content/portfolio/*.html

