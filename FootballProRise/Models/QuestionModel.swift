//
//  QuestionModel.swift
//

import Foundation

struct QMod {
    let question: String
    let answers: [String]
    let rightanswerIndex: Int
}

let strengthQuest: [QMod] = [
    QMod(question: "Which of the following exercises primarily targets leg strength?",
         answers: ["Bench press", "Bicep curls", "Squats", "Lat pulldowns"],
         rightanswerIndex: 2),
    
    QMod(question: "What is the recommended rep range for building strength in weightlifting?",
         answers: ["5-8 reps", "10-12 reps", "15-20 reps", "25-30 reps"],
         rightanswerIndex: 0),
    
    QMod(question: "Which muscle group is crucial for generating power in a football kick?",
         answers: ["Triceps", "Calves", "Quadriceps", "Deltoids"],
         rightanswerIndex: 2),
    
    QMod(question: "What is a key benefit of strength training for football players?",
         answers: ["Increased agility", "Reduced flexibility", "Decreased speed", "Improved injury resistance"],
         rightanswerIndex: 3),
    
    QMod(question: "Which type of training involves lifting a heavy weight for a short duration?",
         answers: ["Endurance training", "Power training", "Plyometric training", "Isometric training"],
         rightanswerIndex: 1),
    
    QMod(question: "What is the recommended frequency of strength training sessions per week for football players?",
         answers: ["1-2 times", "3-4 times", "5-6 times", "Every day"],
         rightanswerIndex: 1),
    
    QMod(question: "Which of the following nutrients is important for muscle recovery and growth?",
         answers: ["Vitamin C", "Calcium", "Protein", "Iron"],
         rightanswerIndex: 2),
    
    QMod(question: "What is the purpose of a warm-up before strength training?",
         answers: ["To decrease blood flow to the muscles", "To increase the risk of injury", "To prepare the muscles and joints for exercise", "To induce fatigue"],
         rightanswerIndex: 2),
    
    QMod(question: "Which exercise is best for developing upper body strength?",
         answers: ["Leg press", "Pull-ups", "Lunges", "Crunches"],
         rightanswerIndex: 1),
    
    QMod(question: "What is the term for the maximum amount of weight a person can lift for a given exercise?",
         answers: ["Maximum load", "One-rep max", "Weight capacity", "Power output"],
         rightanswerIndex: 1),
    
    QMod(question: "Which of the following is NOT a component of a well-rounded strength training program?",
         answers: ["Flexibility training", "Cardiovascular training", "Rest and recovery", "Progressive overload"],
         rightanswerIndex: 1),
    
    QMod(question: "Which type of muscle contraction involves the muscle lengthening while producing force?",
         answers: ["Concentric", "Eccentric", "Isometric", "Isokinetic"],
         rightanswerIndex: 1),
    
    QMod(question: "Which of the following is an example of a compound exercise?",
         answers: ["Bicep curls", "Leg press", "Calf raises", "Tricep extensions"],
         rightanswerIndex: 1),
    
    QMod(question: "What is the recommended rest period between sets during strength training?",
         answers: ["30 seconds", "1 minute", "3 minutes", "5 minutes"],
         rightanswerIndex: 1),
    
    QMod(question: "Which of the following is an indicator of overtraining?",
         answers: ["Decreased appetite", "Increased energy levels", "Improved performance", "Restful sleep"],
         rightanswerIndex: 0),
    
    QMod(question: "What is the term for the gradual increase in resistance over time during strength training?",
         answers: ["Plateau", "Overtraining", "Progressive overload", "Regression"],
         rightanswerIndex: 2),
    
    QMod(question: "Which exercise targets the muscles of the posterior chain, important for sprinting and acceleration?",
         answers: ["Leg curls", "Deadlifts", "Bench press", "Dumbbell flys"],
         rightanswerIndex: 1),
    
    QMod(question: "Which of the following factors can influence an athlete's strength potential?",
         answers: ["Genetics", "Diet", "Sleep", "All of the above"],
         rightanswerIndex: 3),
    
    QMod(question: "Which of the following is NOT a common strength training equipment?",
         answers: ["Dumbbells", "Kettlebells", "Resistance bands", "Treadmill"],
         rightanswerIndex: 3),
    
    QMod(question: "What is the term for the muscle's ability to generate force against an external resistance?",
         answers: ["Power", "Endurance", "Strength", "Flexibility"],
         rightanswerIndex: 2)
]

let speedQuest: [QMod] = [
    QMod(question: "Which of the following exercises is best for improving sprint speed?",
         answers: ["Bench press", "Squats", "Deadlifts", "Sprints"],
         rightanswerIndex: 3),
    
    QMod(question: "What is the recommended distance for sprint intervals to develop speed?",
         answers: ["100 meters", "400 meters", "800 meters", "1 mile"],
         rightanswerIndex: 0),
    
    QMod(question: "Which of the following is a key factor in improving speed for football players?",
         answers: ["Increased flexibility", "Enhanced agility", "Improved stride length", "Reduced cardiovascular endurance"],
         rightanswerIndex: 2),
    
    QMod(question: "What is the term for the ability to change direction quickly while maintaining speed?",
         answers: ["Speed endurance", "Agility", "Power", "Flexibility"],
         rightanswerIndex: 1),
    
    QMod(question: "Which type of training involves short, explosive movements to improve speed and power?",
         answers: ["Plyometric training", "Endurance training", "Strength training", "Flexibility training"],
         rightanswerIndex: 0),
    
    QMod(question: "What is the recommended frequency of speed training sessions per week for football players?",
         answers: ["1-2 times", "3-4 times", "5-6 times", "Every day"],
         rightanswerIndex: 1),
    
    QMod(question: "Which of the following factors can affect a football player's speed?",
         answers: ["Strength", "Technique", "Muscle fiber composition", "All of the above"],
         rightanswerIndex: 3),
    
    QMod(question: "What is the term for the maximum speed a player can reach during a sprint?",
         answers: ["Acceleration", "Top speed", "Stride length", "Anaerobic threshold"],
         rightanswerIndex: 1),
    
    QMod(question: "Which exercise is best for improving acceleration off the mark?",
         answers: ["Lunges", "Box jumps", "Bench press", "Leg press"],
         rightanswerIndex: 1),
    
    QMod(question: "What is the term for the time it takes to reach top speed from a stationary position?",
         answers: ["Acceleration", "Deceleration", "Agility", "Reaction time"],
         rightanswerIndex: 0),
    
    QMod(question: "Which of the following is NOT a component of speed training?",
         answers: ["Hill sprints", "Tempo runs", "Flexibility exercises", "Ladder drills"],
         rightanswerIndex: 2),
    
    QMod(question: "Which type of running involves maintaining a steady pace for an extended period?",
         answers: ["Sprints", "Long-distance running", "Interval training", "Fartlek training"],
         rightanswerIndex: 1),
    
    QMod(question: "What is the term for the ability to maintain high speeds over a prolonged period?",
         answers: ["Speed endurance", "Power", "Flexibility", "Strength"],
         rightanswerIndex: 0),
    
    QMod(question: "What is the recommended rest period between speed training repetitions?",
         answers: ["30 seconds", "1 minute", "3 minutes", "5 minutes"],
         rightanswerIndex: 2),
    
    QMod(question: "Which of the following can help improve speed mechanics?",
         answers: ["Proper arm swing", "Correct foot placement", "Hip mobility", "All of the above"],
         rightanswerIndex: 3),
    
    QMod(question: "Which exercise targets the muscles responsible for propelling the body forward during sprinting?",
         answers: ["Deadlifts", "Lunges", "Plyometric jumps", "Calf raises"],
         rightanswerIndex: 0),
    
    QMod(question: "Which of the following is an example of a speed drill?",
         answers: ["Squats", "Burpees", "40-yard dash", "Leg curls"],
         rightanswerIndex: 2),
    
    QMod(question: "What is the term for the ability to quickly react and change direction in response to a stimulus?",
         answers: ["Acceleration", "Top speed", "Agility", "Power"],
         rightanswerIndex: 2),
    
    QMod(question: "Which of the following is a factor that can affect a player's sprint speed?",
         answers: ["Wind resistance", "Running surface", "Footwear", "All of the above"],
         rightanswerIndex: 3),
    
    QMod(question: "Which exercise primarily targets the muscles of the lower body, important for speed development?",
         answers: ["Pull-ups", "Bench press", "Squats", "Shoulder press"],
         rightanswerIndex: 2)
]

let enduranceQuest: [QMod] = [
    QMod(question: "Which of the following exercises primarily targets cardiovascular endurance?",
         answers: ["Bench press", "Squats", "Running", "Bicep curls"],
         rightanswerIndex: 2),
    
    QMod(question: "What is the recommended duration for a cardiovascular endurance training session?",
         answers: ["10 minutes", "30 minutes", "1 hour", "2 hours"],
         rightanswerIndex: 1),
    
    QMod(question: "Which of the following is a benefit of improving endurance for football players?",
         answers: ["Decreased speed", "Reduced agility", "Enhanced stamina", "Decreased lung capacity"],
         rightanswerIndex: 2),
    
    QMod(question: "What is the term for the body's ability to sustain prolonged physical activity?",
         answers: ["Strength", "Flexibility", "Endurance", "Power"],
         rightanswerIndex: 2),
    
    QMod(question: "Which type of training involves alternating between periods of high-intensity exercise and rest?",
         answers: ["Continuous training", "Interval training", "Fartlek training", "Plyometric training"],
         rightanswerIndex: 1),
    
    QMod(question: "What is the recommended frequency of endurance training sessions per week for football players?",
         answers: ["1-2 times", "3-4 times", "5-6 times", "Every day"],
         rightanswerIndex: 1),
    
    QMod(question: "Which of the following factors can affect a football player's endurance?",
         answers: ["Nutrition", "Sleep", "Hydration", "All of the above"],
         rightanswerIndex: 3),
    
    QMod(question: "What is the term for the maximum amount of oxygen the body can use during exercise?",
         answers: ["VO2 max", "Anaerobic threshold", "Resting heart rate", "Maximum heart rate"],
         rightanswerIndex: 0),
    
    QMod(question: "Which exercise is best for improving cardiovascular endurance?",
         answers: ["Deadlifts", "Swimming", "Bench press", "Bicep curls"],
         rightanswerIndex: 1),
    
    QMod(question: "What is the term for the body's ability to recover quickly after physical exertion?",
         answers: ["Flexibility", "Agility", "Speed", "Fitness"],
         rightanswerIndex: 3),
    
    QMod(question: "Which of the following is NOT a component of a well-rounded endurance training program?",
         answers: ["Strength training", "Flexibility training", "Interval training", "Rest and recovery"],
         rightanswerIndex: 0),
    
    QMod(question: "Which type of running involves varying the pace throughout the workout?",
         answers: ["Sprinting", "Long-distance running", "Fartlek training", "Hill running"],
         rightanswerIndex: 2),
    
    QMod(question: "What is the term for the body's ability to use oxygen efficiently during exercise?",
         answers: ["Aerobic capacity", "Anaerobic capacity", "Resting heart rate", "Maximum heart rate"],
         rightanswerIndex: 0),
    
    QMod(question: "What is the recommended intensity level for steady-state endurance training?",
         answers: ["Low intensity", "Moderate intensity", "High intensity", "Maximum intensity"],
         rightanswerIndex: 1),
    
    QMod(question: "Which of the following is an indicator of improved endurance?",
         answers: ["Lower resting heart rate", "Higher resting heart rate", "Decreased stamina", "Decreased lung capacity"],
         rightanswerIndex: 0),
    
    QMod(question: "Which of the following sports requires high levels of endurance?",
         answers: ["Weightlifting", "Swimming", "Shot put", "Powerlifting"],
         rightanswerIndex: 1),
    
    QMod(question: "Which exercise targets the cardiovascular system while also providing strength benefits?",
         answers: ["Cycling", "Push-ups", "Jumping jacks", "Sit-ups"],
         rightanswerIndex: 0),
    
    QMod(question: "Which of the following can help improve endurance performance?",
         answers: ["Proper hydration", "Balanced nutrition", "Adequate sleep", "All of the above"],
         rightanswerIndex: 3),
    
    QMod(question: "What is the term for the point during exercise when lactate begins to accumulate in the muscles?",
         answers: ["VO2 max", "Anaerobic threshold", "Resting heart rate", "Maximum heart rate"],
         rightanswerIndex: 1),
    
    QMod(question: "Which of the following is an example of a long-duration endurance activity?",
         answers: ["Sprinting", "High-intensity interval training (HIIT)", "Marathon running", "Weightlifting"],
         rightanswerIndex: 2)
]

let footballQuestions: [QMod] = [
    QMod(question: "Who is widely regarded as the greatest football player of all time?",
         answers: ["Lionel Messi", "Cristiano Ronaldo", "Pelé", "Diego Maradona"],
         rightanswerIndex: 2),
    
    QMod(question: "Which country has won the most FIFA World Cup titles?",
         answers: ["Germany", "Brazil", "Argentina", "Italy"],
         rightanswerIndex: 1),
    
    QMod(question: "In which year was the first FIFA World Cup held?",
         answers: ["1926", "1930", "1934", "1950"],
         rightanswerIndex: 1),
    
    QMod(question: "What is the name of the trophy awarded to the winner of the FIFA World Cup?",
         answers: ["Golden Ball", "Golden Boot", "Jules Rimet Trophy", "UEFA Champions League Trophy"],
         rightanswerIndex: 2),
    
    QMod(question: "Which player has won the most Ballon d'Or awards?",
         answers: ["Lionel Messi", "Cristiano Ronaldo", "Michel Platini", "Johan Cruyff"],
         rightanswerIndex: 0),
    
    QMod(question: "What is the maximum number of players allowed on the field per team during a football match?",
         answers: ["9", "10", "11", "12"],
         rightanswerIndex: 2),
    
    QMod(question: "Which football club has won the most UEFA Champions League titles?",
         answers: ["FC Barcelona", "Real Madrid", "Bayern Munich", "Liverpool FC"],
         rightanswerIndex: 1),
    
    QMod(question: "What is the term for a goal scored with the head?",
         answers: ["Header", "Header kick", "Skull shot", "Cranium score"],
         rightanswerIndex: 0),
    
    QMod(question: "What is the duration of a standard football match, excluding stoppage time?",
         answers: ["60 minutes", "75 minutes", "90 minutes", "120 minutes"],
         rightanswerIndex: 2),
    
    QMod(question: "Which player has scored the most goals in a single FIFA World Cup tournament?",
         answers: ["Pelé", "Cristiano Ronaldo", "Just Fontaine", "Gerd Müller"],
         rightanswerIndex: 2),
    
    QMod(question: "What is the term for the area where the goalkeeper is allowed to handle the ball?",
         answers: ["Box", "Penalty area", "D-box", "Goal zone"],
         rightanswerIndex: 1),
    
    QMod(question: "Which of the following is NOT a foul in football?",
         answers: ["Offside", "Handball", "Tackling", "Dangerous play"],
         rightanswerIndex: 2),
    
    QMod(question: "Who is the coach often credited with popularizing the 'Total Football' playing style?",
         answers: ["Johan Cruyff", "Pep Guardiola", "Sir Alex Ferguson", "José Mourinho"],
         rightanswerIndex: 0),
    
    QMod(question: "Which of the following positions is typically responsible for taking corner kicks?",
         answers: ["Striker", "Goalkeeper", "Midfielder", "Defender"],
         rightanswerIndex: 2),
    
    QMod(question: "What is the term for a match played between two national teams?",
         answers: ["Derby", "Friendly", "Classic", "Rivalry"],
         rightanswerIndex: 1),
    
    QMod(question: "Which tournament is considered the most prestigious in European club football?",
         answers: ["FIFA World Cup", "UEFA Champions League", "Copa Libertadores", "FA Cup"],
         rightanswerIndex: 1),
    
    QMod(question: "Which of the following players is known as the 'Hand of God' for a controversial goal scored in the 1986 FIFA World Cup?",
         answers: ["Diego Maradona", "Zinedine Zidane", "Ronaldinho", "Ronaldo Nazário"],
         rightanswerIndex: 0),
    
    QMod(question: "What is the term for a pass that goes between two defenders to reach a teammate?",
         answers: ["Cross", "Through ball", "Chip", "Lob"],
         rightanswerIndex: 1),
    
    QMod(question: "Which country hosted the 2018 FIFA World Cup?",
         answers: ["Germany", "Brazil", "Russia", "France"],
         rightanswerIndex: 2),
    
    QMod(question: "What is the term for a match where both teams have scored an equal number of goals?",
         answers: ["Draw", "Tie", "Even match", "Stalemate"],
         rightanswerIndex: 0)
]
