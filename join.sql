-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.`name` AS `students_name`, 
`degrees`.`id` AS `degrees_id`
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` = "Corso di Laurea in Economia"

-- 2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT `degrees`.`id` AS `degree_id`,
`departments`.`name` AS `department_name`
FROM `degrees` 
INNER JOIN `departments`
ON `degrees`.`department_id` = `departments`.`id`
WHERE `departments`.`name` = 'Dipartimento di Neuroscienze' AND `degrees`.`level` = 'Magistrale';

-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `courses`.`id` AS `course_id`, 
`courses`.`name` AS `course_name`,
`teachers`.`name` AS `teachers_name`,
`teachers`.`surname` AS `teachers_surname`
FROM `courses`
INNER JOIN `course_teacher` ON `courses`.`id` = `course_teacher`.`course_id`
INNER JOIN `teachers` ON `course_teacher`.`teacher_id` = `teachers`.`id`
WHERE `course_teacher`.`teacher_id` = 44;

-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome

-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
-- 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
-- 7. BONUS: Selezionare per ogni studente quanti tentativi d’esame ha sostenuto per
-- superare ciascuno dei suoi esam