//RECEIVER
#include <SoftwareSerial.h>

SoftwareSerial xbee(2, 3); // RX, TX

void setup()
{
    Serial.begin(9600);

    //Serial.println( "Arduino started receiving bytes via XBee" );

    // Set the data rate for the SoftwareSerial port.
    xbee.begin(9600);
}

void loop()  {
  if(xbee.available())
  {
    char letter = xbee.read();
    float temp = xbee.read();

    if (letter == 'a' || letter == 'b')
      {
            if(temp > 0)
            {
             //Serial.print("Character received from :");
             Serial.print(letter);
             Serial.print(",");
             //Serial.print(" Humidity :: ");
             Serial.print(temp); 
             Serial.println();
            }
                 
              
      }
    

    delay(2000);
  }
    
}
