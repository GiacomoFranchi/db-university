--1. Contare quanti iscritti ci sono stati ogni anno
SELECT year(`enrolment_date`) AS `anno_iscrizione`, COUNT(*) AS `numero_iscritti`
FROM `students`
GROUP BY year(`enrolment_date`);

--2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(*) as `num_teacher`, `office_address`
FROM `teachers`
GROUP BY `office_address`;

--3. Calcolare la media dei voti di ogni appello d'esame
SELECT AVG(`vote`) AS `media_voti`, `exam_id`
FROM `exam_student`
GROUP BY `exam_id`

--4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT COUNT(`name`) AS `numero_corsi`, `department_id` 
FROM `degrees`
GROUP BY `department_id`