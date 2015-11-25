//This is the pinout for the gShield V5 board that is attached
const int SPINDLE_DIRECTION_PIN A13;
const int SPINDLE_ENABLE_PIN A12;
const int Z_LIMIT_PIN A11;
const int Y_LIMIT_PIN A10;
const int X_LIMIT_PIN A9;
const int STEPPER_ENABLE_PIN A8;
const int Z_DIRECTION_PIN A7;
const int Y_DIRECTION_PIN A6;
const int X_DIRECTION_PIN A5;
const int Z_STEP_PIN A7;
const int Y_STEP_PIN A6;
const int X_STEP_PIN A5;

const int RESET_ABORT_PIN A0;
const int FEED_HOLD_PIN A1;
const int CYCLESTART_RESUME_PIN A2;
const int COOLANT_ENABLE A3;
const int PROBE A5;




void setup() {
  // put your setup code here, to run once:
  pinMode(X_STEPPER_DIR, OUTPUT);
  pinMode(X_STEPPER_STEP, OUTPUT); 
  pinMode(X_STEPPER_EN, OUTPUT);
  pinMode(X_STEPPER_MIN_PIN, INPUT_PULLUP);

  Serial.begin(115200); 

  delayMicroseconds(800);
    
  Serial.println("SETUP COMPLETE");
}

void loop() {
  // put your main code here, to run repeatedly:
    int i;
  unsigned long currentMillis = millis() *1000;

  Serial.println("SET MOTOR DIRECTION LOW");
  digitalWrite( X_STEPPER_DIR, LOW);

  //Enable motor
  Serial.println("ENABLE MOTOR LOW");
  digitalWrite(X_STEPPER_EN, LOW);
  
  if( currentMillis - previousMillis > interval){
    previousMillis = currentMillis;
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
   
  }

  

}
