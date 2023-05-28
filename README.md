# Project_Ex3
Άσκηση 3 για το Project στις Προηγμενες Τεχνικες Προγραμματισμου (2022-2023)

Ένα μικρό πρόγραμμα, γραμμένο σε Python, όπου κάποιος μέσω ενός ΗΤΤP POST μηνύματος στέλνει ένα μικρό κείμενο και αυτό γίνεται publish μέσω MQTT.

Αν δεν γίνει χρήση της εφαρμογής μέσω docker container, θα πρέπει να τρέξει μαζί με έναν MQTT Client, οπως Eclipse Mosquitto, που θα ακούει στο port 1883.

# Πώς να τρέξει σε Docker
Κατεβάστε τα απαραίτητα αρχεία:
```git clone https://github.com/up1072719/Project_Ex3```
Μεταβείτε στο αντίστοιχο Directory:
```cd Project_Ex3/```
Χτίστε και τρέξτε το docker container:
```docker build -t my-python-app .
docker run -p 8080:8080 my-python-app```
