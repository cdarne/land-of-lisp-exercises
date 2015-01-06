(defvar *number-was-odd* nil)

(if (oddp 5)
    (progn (setf *number-was-odd* t)
	   'odd-number)
    'even-number)

(when (oddp 5)
  (setf *number-was-odd* t)
  'odd-number)

(unless (oddp 4)
  (setf *number-was-odd* nil)
  'even-number)

(defvar *arch-enemy* nil)

(defun pudding-eater (person)
  (cond ((eq person 'henry) (setf *arch-enemy* 'stupid-lisp-alien)
	 '(curse you lisp alien - you ate my pudding))
	((eq person 'johnny) (setf *arch-enemy* 'useless-old-johnny)
	 '(i hope you choked on my pudding johnny))
	(t '(why you eat mt pudding stranger ?))))

(defun pudding-eater-case (person)
  (case person
    ((henry) (setf *arch-enemy* 'stupid-lisp-alien)
     '(curse you lisp alien - you ate my pudding))
    ((johnny) (setf *arch-enemy* 'useless-old-johnny)
     '(i hope you choked on my pudding johnny))
    (otherwise '(why you eat mt pudding stranger ?))))

(and (oddp 5) (oddp 7) (oddp 9))
(or (oddp 4) (oddp 7) (oddp 8))

(find-if #'oddp '(2 4 5 6))
