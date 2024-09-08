
<details> 
  <summary>  Bad sitting posture detection and alerting system </summary> 
  Long sitting hours has caused a lot of health problems. This solution will constantly measure the distance between the chair and a persons head and back. Based on the measured distance, if it is found that the person is not sitting straight, then it will set the buzzer and the led high. A potentiometer is also added so that the user can define the timeout after which each measurement happens.
</details>
  <details> 
  <summary>  Block Diagram   </summary> 
 <img width="526" alt="image" src=https://github.com/user-attachments/assets/6f436052-3a84-4857-8e6e-a06ceec7bf42>
  </details>
  <details> 
  <summary>  Functionality </summary> 
     
  1. Set the timeout value using a potentiometer.
    
  2. The trigger pin is set to high for ultrasonic sensor1(used for measuring the head distance). When the trigger pin is pulled high, 
     then sound waves are sent from the sensor. Pull the trigger pin to low after waiting for 12msec.
     
  3. The echo pin output from the sensor1 goes high and the time for which the echo pin goes high is noted. Distance is calculated for 
     sensor1.
     
  4. Repeat steps 2 to 3 for sensor2.
     
  5. The distance received from both the sensors are compared, and if its greater than a hard coded value(value decided based on a 
     straight posture),then go to step6, else goto step7.
     
  6. Pull the led and buzzer output pin high.
     
  7. Wait for the user defined timeout value and go to step2.
     </details>
<details> 
  <summary>  GPIO Mapping </summary> 
      <img width="526" alt="image" src=https://github.com/user-attachments/assets/7fd95719-615c-46a8-b79d-e9a34e67bcfc>
</details>
<details>
  <summary> C Program </summary>
  
  [Sitting_posture_detection.c](./Sitting_posture_detection.c) 
  
   </details>

   <details> 
  <summary>  C code compilation output </summary> 
      <img width="526" alt="image" src=https://github.com/user-attachments/assets/4ce0a4d7-da0e-4df7-be44-229ee3cfcb45>
    <img width="526" alt="image" src=https://github.com/user-attachments/assets/a53c4b7c-2b8a-4944-a1fd-9ac8ff9bd01c>

</details>

