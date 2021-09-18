build-3-0:
	docker build -t aws-glue:v3-0 -f docker/Dockerfile-aws-glue-3-0 .

run-3-0:
	docker run -itd aws-glue:v3-0

build-3-0-spark-direct:
	docker build -t aws-glue-spark-direct:v3-0 -f docker/Dockerfile-aws-glue-3-0-spark-direct .

run-3-0-spark-direct:
	docker run -itd aws-glue-spark-direct:v3-0
	# comment out this line from the bin/glue-setup.sh
	# before running the gluepyspark or gluesparksubmit commands else the jars will be re-downloaded
	# mvn -f $ROOT_DIR/pom.xml -DoutputDirectory=$ROOT_DIR/jarsv1 dependency:copy-dependencies

