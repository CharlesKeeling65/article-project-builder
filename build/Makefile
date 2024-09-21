out: article-build_v1.0.tar.gz

article-build_v1.0.tar.gz: ../bin/article-build
	tar -czf article-build_v1.0.tar.gz ../bin/article-build ../config

../bin/article-build: ../src/article-build
	shc -v -r -f ../src/article-build -o ../bin/article-build
	rm -f ../src/article-build.x.c
