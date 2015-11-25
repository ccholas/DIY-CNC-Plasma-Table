
int MS1 = LOW;
int MS2 = LOW;
int STEPS = 1000;

int X_STEPPER_DIR = 48;
int X_STEPPER_STEP = 37;
int X_STEPPER_EN = 29;
int X_STEPPER_MS1 = 40;
int X_STEPPER_MS2 = 41;
int X_STEPPER_MIN_PIN = 12;
int X_STEPPER_MAX_PIN = 24;

int Y_STEPPER_DIR = 49;
int Y_STEPPER_STEP =36;
int Y_STEPPER_EN = 28;
int Y_STEPPER_MS1 = A15;
int Y_STEPPER_MS2 = 39;
int Y_STEPPER_MIN_PIN = 11;
int Y_STEPPER_MAX_PIN = 23;

int Z_STEPPER_DIR = 47;
int Z_STEPPER_STEP =35;
int Z_STEPPER_EN = 27;
int Z_STEPPER_MS1 = 68;
int Z_STEPPER_MS2 = 67;
int Z_STEPPER_MIN_PIN = 10;
int Z_STEPPER_MAX_PIN = 30;

int E0_STEPPER_DIR = 43;
int E0_STEPPER_STEP =34;
int E0_STEPPER_EN = 26;
int E0_STEPPER_MS1 = 65;
int E0_STEPPER_MS2 = 66;

int E1_STEPPER_DIR = 42;
int E1_STEPPER_STEP =33;
int E1_STEPPER_EN = 25;
int E1_STEPPER_MS1 = 63;
int E1_STEPPER_MS2 = 64;

int HEATER_BED_PIN  = 3;
//int TEMP_BED_PIN = 2;

int HEATER_0_PIN = 9;
int TEMP_0_PIN = A0;//0;
int HEATER_1_PIN = 7;
int TEMP_1_PIN = A1;//3;
int TEMP_2_PIN = A2;//3;
int TEMP_3_PIN = A3;//3;


int SDSS = 53;
int LED_PIN = 13;
int FAN_PIN = 8;
int FAN1_PIN = 6;
int FAN2_PIN = 2;
int PS_ON_PIN = A5;//4; Output for LED

long previousMillis = 0;
long interval = 10;
int pinRead;

void setup(){
  pinMode(X_STEPPER_DIR, OUTPUT);
  pinMode(X_STEPPER_STEP, OUTPUT); 
  pinMode(X_STEPPER_EN, OUTPUT);
  pinMode(X_STEPPER_MS1, OUTPUT); 
  pinMode(X_STEPPER_MS2, OUTPUT);
  pinMode(Y_STEPPER_DIR, OUTPUT);
  pinMode(Y_STEPPER_STEP, OUTPUT); 
  pinMode(Y_STEPPER_EN, OUTPUT);
  pinMode(Y_STEPPER_MS1, OUTPUT); 
  pinMode(Y_STEPPER_MS2, OUTPUT);
  pinMode(Z_STEPPER_DIR, OUTPUT);
  pinMode(Z_STEPPER_STEP, OUTPUT); 
  pinMode(Z_STEPPER_EN, OUTPUT);
  pinMode(Z_STEPPER_MS1, OUTPUT); 
  pinMode(Z_STEPPER_MS2, OUTPUT);
  
  pinMode(E0_STEPPER_DIR, OUTPUT);
  pinMode(E0_STEPPER_STEP, OUTPUT); 
  pinMode(E0_STEPPER_EN, OUTPUT);
  pinMode(E0_STEPPER_MS1, OUTPUT); 
  pinMode(E0_STEPPER_MS2, OUTPUT);
  
  pinMode(E1_STEPPER_DIR, OUTPUT);
  pinMode(E1_STEPPER_STEP, OUTPUT); 
  pinMode(E1_STEPPER_EN, OUTPUT);
  pinMode(E1_STEPPER_MS1, OUTPUT); 
  pinMode(E1_STEPPER_MS2, OUTPUT);
  
  pinMode(LED_PIN, OUTPUT);
  pinMode(FAN_PIN, OUTPUT);
  pinMode(FAN2_PIN, OUTPUT);
  
  pinMode(X_STEPPER_MIN_PIN, INPUT_PULLUP);
  pinMode(X_STEPPER_MAX_PIN, INPUT_PULLUP);
  pinMode(Y_STEPPER_MIN_PIN, INPUT_PULLUP);
  pinMode(Y_STEPPER_MAX_PIN, INPUT_PULLUP);
  pinMode(Z_STEPPER_MIN_PIN, INPUT_PULLUP);
  pinMode(Z_STEPPER_MAX_PIN, INPUT_PULLUP);

 Serial.begin(115200); 
 
 digitalWrite(X_STEPPER_MS1, MS1);
 digitalWrite(X_STEPPER_MS2, MS2);
 digitalWrite(X_STEPPER_STEP, LOW);
 
 digitalWrite(Y_STEPPER_MS1, MS1);
 digitalWrite(Y_STEPPER_MS2, MS2);
 digitalWrite(Y_STEPPER_STEP, LOW);
 
 digitalWrite(Z_STEPPER_MS1, MS1);
 digitalWrite(Z_STEPPER_MS2, MS2);
 digitalWrite(Z_STEPPER_STEP, LOW);
 
 digitalWrite(E0_STEPPER_MS1, MS1);
 digitalWrite(E0_STEPPER_MS2, MS2);
 digitalWrite(E0_STEPPER_STEP, LOW);
 
 digitalWrite(E1_STEPPER_MS1, MS1);
 digitalWrite(E1_STEPPER_MS2, MS2);
 digitalWrite(E1_STEPPER_STEP, LOW);
 
 digitalWrite(LED_PIN, LOW);
 digitalWrite(FAN_PIN, LOW);
 digitalWrite(FAN2_PIN, LOW);

 delayMicroseconds(800);
    
 Serial.println("SETUP COMPLETE");
}

void loop(){
  int i;
  unsigned long currentMillis = millis() *1000;
  
  if( currentMillis - previousMillis > interval){
    previousMillis = currentMillis;
 
  //Set Direction
  Serial.println("SET MOTOR DIRECTION LOW");
  digitalWrite( X_STEPPER_DIR, LOW);
  digitalWrite( Y_STEPPER_DIR, LOW);
  digitalWrite( Z_STEPPER_DIR, LOW);
  digitalWrite( E0_STEPPER_DIR, LOW);
  digitalWrite( E1_STEPPER_DIR, LOW);
  
  //Enable motor
  Serial.println("ENABLE MOTOR LOW");
  digitalWrite(X_STEPPER_EN, LOW);
  digitalWrite(Y_STEPPER_EN, LOW);
  digitalWrite(Z_STEPPER_EN, LOW);
  digitalWrite(E0_STEPPER_EN, LOW);
  digitalWrite(E1_STEPPER_EN, LOW);
  delay(100);
  
 digitalWrite(LED_PIN, HIGH);
 digitalWrite(FAN_PIN, HIGH);
  digitalWrite(FAN2_PIN, HIGH);
 
  for(i=0; i<STEPS; i++){
    digitalWrite(X_STEPPER_STEP, HIGH);
    digitalWrite(Y_STEPPER_STEP, HIGH);
    digitalWrite(Z_STEPPER_STEP, HIGH);
    digitalWrite(E0_STEPPER_STEP, HIGH);
    digitalWrite(E1_STEPPER_STEP, HIGH);
    delayMicroseconds(800);
    digitalWrite(X_STEPPER_STEP, LOW);
    digitalWrite(Y_STEPPER_STEP, LOW);
    digitalWrite(Z_STEPPER_STEP, LOW);
    digitalWrite(E0_STEPPER_STEP, LOW);
    digitalWrite(E1_STEPPER_STEP, LOW);
    delayMicroseconds(800);
    
    pinRead = digitalRead(X_STEPPER_MIN_PIN);
    //Serial.println(pinRead);
    if(pinRead != HIGH){
      Serial.println("X MIN SWITCH DETECTED");
    }
    
    pinRead = digitalRead(Y_STEPPER_MIN_PIN);
    //Serial.println(pinRead);
     if(pinRead != HIGH){
      Serial.println("Y MIN SWITCH DETECTED");
    }
    
    pinRead = digitalRead(Z_STEPPER_MIN_PIN);
    //Serial.println(pinRead);
     if(pinRead != HIGH){
      Serial.println("Z MIN SWITCH DETECTED");
    }
    
     pinRead = digitalRead(X_STEPPER_MAX_PIN);
    //Serial.println(pinRead);
    if(pinRead != HIGH){
      Serial.println("X MAX SWITCH DETECTED");
    }
    
    pinRead = digitalRead(Y_STEPPER_MAX_PIN);
    //Serial.println(pinRead);
     if(pinRead != HIGH){
      Serial.println("Y MAX SWITCH DETECTED");
    }
    
    pinRead = digitalRead(Z_STEPPER_MAX_PIN);
    //Serial.println(pinRead);
     if(pinRead != HIGH){
      Serial.println("Z MAX SWITCH DETECTED");
    }
  }
   
  //Set Direction
  Serial.println("SET MOTOR DIRECTION HIGH");
  digitalWrite( X_STEPPER_DIR, HIGH);
  digitalWrite( Y_STEPPER_DIR, HIGH);
  digitalWrite( Z_STEPPER_DIR, HIGH);
  digitalWrite( E0_STEPPER_DIR, HIGH);
  digitalWrite( E1_STEPPER_DIR, HIGH);
  delay(100);

  digitalWrite(LED_PIN, LOW);
  digitalWrite(FAN_PIN, LOW);
  digitalWrite(FAN2_PIN, LOW);
  
  for(i=0; i<STEPS; i++){
   digitalWrite(X_STEPPER_STEP, HIGH);
    digitalWrite(Y_STEPPER_STEP, HIGH);
    digitalWrite(Z_STEPPER_STEP, HIGH);
    digitalWrite(E0_STEPPER_STEP, HIGH);
    digitalWrite(E1_STEPPER_STEP, HIGH);
    delayMicroseconds(800);
    digitalWrite(X_STEPPER_STEP, LOW);
    digitalWrite(Y_STEPPER_STEP, LOW);
    digitalWrite(Z_STEPPER_STEP, LOW);
    digitalWrite(E0_STEPPER_STEP, LOW);
    digitalWrite(E1_STEPPER_STEP, LOW);
    delayMicroseconds(800);
    
    pinRead = digitalRead(X_STEPPER_MIN_PIN);
    //Serial.println(pinRead);
    if(pinRead != HIGH){
      Serial.println("X MIN SWITCH DETECTED");
    }
    
    pinRead = digitalRead(Y_STEPPER_MIN_PIN);
    //Serial.println(pinRead);
     if(pinRead != HIGH){
      Serial.println("Y MIN SWITCH DETECTED");
    }
    
    pinRead = digitalRead(Z_STEPPER_MIN_PIN);
    //Serial.println(pinRead);
     if(pinRead != HIGH){
      Serial.println("Z MIN SWITCH DETECTED");
    }
    
     pinRead = digitalRead(X_STEPPER_MAX_PIN);
    //Serial.println(pinRead);
    if(pinRead != HIGH){
      Serial.println("X MAX SWITCH DETECTED");
    }
    
    pinRead = digitalRead(Y_STEPPER_MAX_PIN);
    //Serial.println(pinRead);
     if(pinRead != HIGH){
      Serial.println("Y MAX SWITCH DETECTED");
    }
    
    pinRead = digitalRead(Z_STEPPER_MAX_PIN);
    //Serial.println(pinRead);
     if(pinRead != HIGH){
      Serial.println("Z MAX SWITCH DETECTED");
    }
  }
  
  digitalWrite(LED_PIN, HIGH);
  digitalWrite(FAN_PIN, HIGH);
  digitalWrite(FAN2_PIN, HIGH);    
  //Disable motor
  Serial.println("DISABLE MOTOR HIGH");
  digitalWrite(X_STEPPER_EN, HIGH);
  digitalWrite(Y_STEPPER_EN, HIGH);
  digitalWrite(Z_STEPPER_EN, HIGH);
  digitalWrite(E0_STEPPER_EN, HIGH);
  digitalWrite(E1_STEPPER_EN, HIGH);
  
  }
  

}

