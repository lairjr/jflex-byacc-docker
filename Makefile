FOLDER_PATH = ~/My_Projects/pucrs

image:
	docker build -t containerjflexbyacc .

jflex:
	docker run -v $(FOLDER_PATH):/app -w /app -it containerjflexbyacc jflex $(flex)

byacc:
	docker run -v $(FOLDER_PATH):/app -w /app -it containerjflexbyacc byacc $(y)
