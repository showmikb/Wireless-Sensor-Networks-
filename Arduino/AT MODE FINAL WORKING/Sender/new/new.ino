#include <dht.h>
#include <SoftwareSerial.h>

SoftwareSerial xbee(2, 3);

#define dht_dpin A0 //no ; here. Set equal to channel sensor is on
float value;
dht DHT;

void setup(){
  Serial.begin(9600);
  delay(1300);//Let system settle

  Serial.println( "Arduino started sending bytes via XBee" );

  xbee.begin(9600);
}//end "setup()"

void loop(){
  DHT.read11(dht_dpin);
  value = DHT.humidity;
  xbee.write('b');
  xbee.write( value );
    Serial.println( value );
   
  delay(60000);
 
}// end loop()

