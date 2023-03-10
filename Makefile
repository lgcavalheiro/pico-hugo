CNT?=
DEVSITE=testSite
FLAGS=-s ${DEVSITE} --themesDir ../../
CONTENT_DIR=${DEVSITE}/content

serve:
	hugo ${FLAGS} -D serve

# using package perl-text-lorem for lorem ipsum generation
new:
	hugo new ${FLAGS} ${CNT}
	lorem -p 64 >> ${CONTENT_DIR}/${CNT}
