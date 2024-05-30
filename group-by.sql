-- 1. Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(`enrolment_date`) AS `year_enrolment`, COUNT(`id`) AS `students_count`
FROM `students`
GROUP BY YEAR(`enrolment_date`)
ORDER BY `year_enrolment`;

-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT `office_address`, COUNT(`id`) AS `teachers_number`
FROM `teachers` 
GROUP BY `teachers`.`office_address`
ORDER BY `teachers_number` DESC;

-- 3. Calcolare la media dei voti di ogni appello d'esame
SELECT `exam_id`, AVG(`vote`) AS `average_vote`
FROM `exam_student`
GROUP BY `exam_id`;

-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento