(in-package "SB!IMPL")

(define-unibyte-mapper koi8-r->code-mapper code->koi8-r-mapper
  (#x80 #x2500) ; BOX DRAWINGS LIGHT HORIZONTAL
  (#x81 #x2502) ; BOX DRAWINGS LIGHT VERTICAL
  (#x82 #x250C) ; BOX DRAWINGS LIGHT DOWN AND RIGHT
  (#x83 #x2510) ; BOX DRAWINGS LIGHT DOWN AND LEFT
  (#x84 #x2514) ; BOX DRAWINGS LIGHT UP AND RIGHT
  (#x85 #x2518) ; BOX DRAWINGS LIGHT UP AND LEFT
  (#x86 #x251C) ; BOX DRAWINGS LIGHT VERTICAL AND RIGHT
  (#x87 #x2524) ; BOX DRAWINGS LIGHT VERTICAL AND LEFT
  (#x88 #x252C) ; BOX DRAWINGS LIGHT DOWN AND HORIZONTAL
  (#x89 #x2534) ; BOX DRAWINGS LIGHT UP AND HORIZONTAL
  (#x8A #x253C) ; BOX DRAWINGS LIGHT VERTICAL AND HORIZONTAL
  (#x8B #x2580) ; UPPER HALF BLOCK
  (#x8C #x2584) ; LOWER HALF BLOCK
  (#x8D #x2588) ; FULL BLOCK
  (#x8E #x258C) ; LEFT HALF BLOCK
  (#x8F #x2590) ; RIGHT HALF BLOCK
  (#x90 #x2591) ; LIGHT SHADE
  (#x91 #x2592) ; MEDIUM SHADE
  (#x92 #x2593) ; DARK SHADE
  (#x93 #x2320) ; UPPER HALF OF INTEGRAL
  (#x94 #x25A0) ; BLACK SQUARE
  (#x95 #x2219) ; BULLET OPERATOR
  (#x96 #x221A) ; SQUARE ROOT
  (#x97 #x2248) ; ALMOST EQUAL TO
  (#x98 #x2264) ; LESS-THAN OR EQUAL TO
  (#x99 #x2265) ; GREATER-THAN OR EQUAL TO
  (#x9A #x00A0) ; NO-BREAK SPACE
  (#x9B #x2321) ; LOWER HALF OF INTEGRAL
  (#x9C #x00B0) ; DEGREE SIGN
  (#x9D #x00B2) ; SUPERSCRIPT TWO
  (#x9E #x00B7) ; MIDDLE DOT
  (#x9F #x00F7) ; DIVISION SIGN
  (#xA0 #x2550) ; BOX DRAWINGS DOUBLE HORIZONTAL
  (#xA1 #x2551) ; BOX DRAWINGS DOUBLE VERTICAL
  (#xA2 #x2552) ; BOX DRAWINGS DOWN SINGLE AND RIGHT DOUBLE
  (#xA3 #x0451) ; CYRILLIC SMALL LETTER IO
  (#xA4 #x2553) ; BOX DRAWINGS DOWN DOUBLE AND RIGHT SINGLE
  (#xA5 #x2554) ; BOX DRAWINGS DOUBLE DOWN AND RIGHT
  (#xA6 #x2555) ; BOX DRAWINGS DOWN SINGLE AND LEFT DOUBLE
  (#xA7 #x2556) ; BOX DRAWINGS DOWN DOUBLE AND LEFT SINGLE
  (#xA8 #x2557) ; BOX DRAWINGS DOUBLE DOWN AND LEFT
  (#xA9 #x2558) ; BOX DRAWINGS UP SINGLE AND RIGHT DOUBLE
  (#xAA #x2559) ; BOX DRAWINGS UP DOUBLE AND RIGHT SINGLE
  (#xAB #x255A) ; BOX DRAWINGS DOUBLE UP AND RIGHT
  (#xAC #x255B) ; BOX DRAWINGS UP SINGLE AND LEFT DOUBLE
  (#xAD #x255C) ; BOX DRAWINGS UP DOUBLE AND LEFT SINGLE
  (#xAE #x255D) ; BOX DRAWINGS DOUBLE UP AND LEFT
  (#xAF #x255E) ; BOX DRAWINGS VERTICAL SINGLE AND RIGHT DOUBLE
  (#xB0 #x255F) ; BOX DRAWINGS VERTICAL DOUBLE AND RIGHT SINGLE
  (#xB1 #x2560) ; BOX DRAWINGS DOUBLE VERTICAL AND RIGHT
  (#xB2 #x2561) ; BOX DRAWINGS VERTICAL SINGLE AND LEFT DOUBLE
  (#xB3 #x0401) ; CYRILLIC CAPITAL LETTER IO
  (#xB4 #x2562) ; BOX DRAWINGS VERTICAL DOUBLE AND LEFT SINGLE
  (#xB5 #x2563) ; BOX DRAWINGS DOUBLE VERTICAL AND LEFT
  (#xB6 #x2564) ; BOX DRAWINGS DOWN SINGLE AND HORIZONTAL DOUBLE
  (#xB7 #x2565) ; BOX DRAWINGS DOWN DOUBLE AND HORIZONTAL SINGLE
  (#xB8 #x2566) ; BOX DRAWINGS DOUBLE DOWN AND HORIZONTAL
  (#xB9 #x2567) ; BOX DRAWINGS UP SINGLE AND HORIZONTAL DOUBLE
  (#xBA #x2568) ; BOX DRAWINGS UP DOUBLE AND HORIZONTAL SINGLE
  (#xBB #x2569) ; BOX DRAWINGS DOUBLE UP AND HORIZONTAL
  (#xBC #x256A) ; BOX DRAWINGS VERTICAL SINGLE AND HORIZONTAL DOUBLE
  (#xBD #x256B) ; BOX DRAWINGS VERTICAL DOUBLE AND HORIZONTAL SINGLE
  (#xBE #x256C) ; BOX DRAWINGS DOUBLE VERTICAL AND HORIZONTAL
  (#xBF #x00A9) ; COPYRIGHT SIGN
  (#xC0 #x044E) ; CYRILLIC SMALL LETTER YU
  (#xC1 #x0430) ; CYRILLIC SMALL LETTER A
  (#xC2 #x0431) ; CYRILLIC SMALL LETTER BE
  (#xC3 #x0446) ; CYRILLIC SMALL LETTER TSE
  (#xC4 #x0434) ; CYRILLIC SMALL LETTER DE
  (#xC5 #x0435) ; CYRILLIC SMALL LETTER IE
  (#xC6 #x0444) ; CYRILLIC SMALL LETTER EF
  (#xC7 #x0433) ; CYRILLIC SMALL LETTER GHE
  (#xC8 #x0445) ; CYRILLIC SMALL LETTER HA
  (#xC9 #x0438) ; CYRILLIC SMALL LETTER I
  (#xCA #x0439) ; CYRILLIC SMALL LETTER SHORT I
  (#xCB #x043A) ; CYRILLIC SMALL LETTER KA
  (#xCC #x043B) ; CYRILLIC SMALL LETTER EL
  (#xCD #x043C) ; CYRILLIC SMALL LETTER EM
  (#xCE #x043D) ; CYRILLIC SMALL LETTER EN
  (#xCF #x043E) ; CYRILLIC SMALL LETTER O
  (#xD0 #x043F) ; CYRILLIC SMALL LETTER PE
  (#xD1 #x044F) ; CYRILLIC SMALL LETTER YA
  (#xD2 #x0440) ; CYRILLIC SMALL LETTER ER
  (#xD3 #x0441) ; CYRILLIC SMALL LETTER ES
  (#xD4 #x0442) ; CYRILLIC SMALL LETTER TE
  (#xD5 #x0443) ; CYRILLIC SMALL LETTER U
  (#xD6 #x0436) ; CYRILLIC SMALL LETTER ZHE
  (#xD7 #x0432) ; CYRILLIC SMALL LETTER VE
  (#xD8 #x044C) ; CYRILLIC SMALL LETTER SOFT SIGN
  (#xD9 #x044B) ; CYRILLIC SMALL LETTER YERU
  (#xDA #x0437) ; CYRILLIC SMALL LETTER ZE
  (#xDB #x0448) ; CYRILLIC SMALL LETTER SHA
  (#xDC #x044D) ; CYRILLIC SMALL LETTER E
  (#xDD #x0449) ; CYRILLIC SMALL LETTER SHCHA
  (#xDE #x0447) ; CYRILLIC SMALL LETTER CHE
  (#xDF #x044A) ; CYRILLIC SMALL LETTER HARD SIGN
  (#xE0 #x042E) ; CYRILLIC CAPITAL LETTER YU
  (#xE1 #x0410) ; CYRILLIC CAPITAL LETTER A
  (#xE2 #x0411) ; CYRILLIC CAPITAL LETTER BE
  (#xE3 #x0426) ; CYRILLIC CAPITAL LETTER TSE
  (#xE4 #x0414) ; CYRILLIC CAPITAL LETTER DE
  (#xE5 #x0415) ; CYRILLIC CAPITAL LETTER IE
  (#xE6 #x0424) ; CYRILLIC CAPITAL LETTER EF
  (#xE7 #x0413) ; CYRILLIC CAPITAL LETTER GHE
  (#xE8 #x0425) ; CYRILLIC CAPITAL LETTER HA
  (#xE9 #x0418) ; CYRILLIC CAPITAL LETTER I
  (#xEA #x0419) ; CYRILLIC CAPITAL LETTER SHORT I
  (#xEB #x041A) ; CYRILLIC CAPITAL LETTER KA
  (#xEC #x041B) ; CYRILLIC CAPITAL LETTER EL
  (#xED #x041C) ; CYRILLIC CAPITAL LETTER EM
  (#xEE #x041D) ; CYRILLIC CAPITAL LETTER EN
  (#xEF #x041E) ; CYRILLIC CAPITAL LETTER O
  (#xF0 #x041F) ; CYRILLIC CAPITAL LETTER PE
  (#xF1 #x042F) ; CYRILLIC CAPITAL LETTER YA
  (#xF2 #x0420) ; CYRILLIC CAPITAL LETTER ER
  (#xF3 #x0421) ; CYRILLIC CAPITAL LETTER ES
  (#xF4 #x0422) ; CYRILLIC CAPITAL LETTER TE
  (#xF5 #x0423) ; CYRILLIC CAPITAL LETTER U
  (#xF6 #x0416) ; CYRILLIC CAPITAL LETTER ZHE
  (#xF7 #x0412) ; CYRILLIC CAPITAL LETTER VE
  (#xF8 #x042C) ; CYRILLIC CAPITAL LETTER SOFT SIGN
  (#xF9 #x042B) ; CYRILLIC CAPITAL LETTER YERU
  (#xFA #x0417) ; CYRILLIC CAPITAL LETTER ZE
  (#xFB #x0428) ; CYRILLIC CAPITAL LETTER SHA
  (#xFC #x042D) ; CYRILLIC CAPITAL LETTER E
  (#xFD #x0429) ; CYRILLIC CAPITAL LETTER SHCHA
  (#xFE #x0427) ; CYRILLIC CAPITAL LETTER CHE
  (#xFF #x042A) ; CYRILLIC CAPITAL LETTER HARD SIGN
)

(declaim (inline get-koi8-r-bytes))
(defun get-koi8-r-bytes (string pos)
  (declare (optimize speed (safety 0))
           (type simple-string string)
           (type array-range pos))
  (get-latin-bytes #'code->koi8-r-mapper :koi8-r string pos))

(defun string->koi8-r (string sstart send null-padding)
  (declare (optimize speed (safety 0))
           (type simple-string string)
           (type array-range sstart send))
  (values (string->latin% string sstart send #'get-koi8-r-bytes null-padding)))

(defmacro define-koi8-r->string* (accessor type)
  (declare (ignore type))
  (let ((name (make-od-name 'koi8-r->string* accessor)))
    `(progn
      (defun ,name (string sstart send array astart aend)
        (,(make-od-name 'latin->string* accessor) string sstart send array astart aend #'koi8-r->code-mapper)))))

(instantiate-octets-definition define-koi8-r->string*)

(defmacro define-koi8-r->string (accessor type)
  (declare (ignore type))
  `(defun ,(make-od-name 'koi8-r->string accessor) (array astart aend)
    (,(make-od-name 'latin->string accessor) array astart aend #'koi8-r->code-mapper)))

(instantiate-octets-definition define-koi8-r->string)

(define-external-format (:koi8-r :|koi8-r|)
    1 t
    (let ((koi8-r-byte (code->koi8-r-mapper bits)))
      (if koi8-r-byte
          (setf (sap-ref-8 sap tail) koi8-r-byte)
          (external-format-encoding-error stream bits)))
    (let ((code (koi8-r->code-mapper byte)))
      (if code
          (code-char code)
          (external-format-decoding-error stream byte)))
    koi8-r->string-aref
    string->koi8-r) ;; TODO -- error check

(define-unibyte-mapper koi8-u->code-mapper code->koi8-u-mapper
  (#x80 #x2500) ; BOX DRAWINGS LIGHT HORIZONTAL
  (#x81 #x2502) ; BOX DRAWINGS LIGHT VERTICAL
  (#x82 #x250C) ; BOX DRAWINGS LIGHT DOWN AND RIGHT
  (#x83 #x2510) ; BOX DRAWINGS LIGHT DOWN AND LEFT
  (#x84 #x2514) ; BOX DRAWINGS LIGHT UP AND RIGHT
  (#x85 #x2518) ; BOX DRAWINGS LIGHT UP AND LEFT
  (#x86 #x251C) ; BOX DRAWINGS LIGHT VERTICAL AND RIGHT
  (#x87 #x2524) ; BOX DRAWINGS LIGHT VERTICAL AND LEFT
  (#x88 #x252C) ; BOX DRAWINGS LIGHT DOWN AND HORIZONTAL
  (#x89 #x2534) ; BOX DRAWINGS LIGHT UP AND HORIZONTAL
  (#x8A #x253C) ; BOX DRAWINGS LIGHT VERTICAL AND HORIZONTAL
  (#x8B #x2580) ; UPPER HALF BLOCK
  (#x8C #x2584) ; LOWER HALF BLOCK
  (#x8D #x2588) ; FULL BLOCK
  (#x8E #x258C) ; LEFT HALF BLOCK
  (#x8F #x2590) ; RIGHT HALF BLOCK
  (#x90 #x2591) ; LIGHT SHADE
  (#x91 #x2592) ; MEDIUM SHADE
  (#x92 #x2593) ; DARK SHADE
  (#x93 #x2320) ; TOP HALF INTEGRAL
  (#x94 #x25A0) ; BLACK SQUARE
  (#x95 #x2022) ; BULLET
  (#x96 #x221A) ; SQUARE ROOT
  (#x97 #x2248) ; ALMOST EQUAL TO
  (#x98 #x2264) ; LESS-THAN OR EQUAL TO
  (#x99 #x2265) ; GREATER-THAN OR EQUAL TO
  (#x9A #x00A0) ; NO-BREAK SPACE
  (#x9B #x2321) ; BOTTOM HALF INTEGRAL
  (#x9C #x00B0) ; DEGREE SIGN
  (#x9D #x00B2) ; SUPERSCRIPT TWO
  (#x9E #x00B7) ; MIDDLE DOT
  (#x9F #x00F7) ; DIVISION SIGN
  (#xA0 #x2550) ; BOX DRAWINGS DOUBLE HORIZONTAL
  (#xA1 #x2551) ; BOX DRAWINGS DOUBLE VERTICAL
  (#xA2 #x2552) ; BOX DRAWINGS DOWN SINGLE AND RIGHT DOUBLE
  (#xA3 #x0451) ; CYRILLIC SMALL LETTER IO
  (#xA4 #x0454) ; CYRILLIC SMALL LETTER UKRAINIAN IE
  (#xA5 #x2554) ; BOX DRAWINGS DOUBLE DOWN AND RIGHT
  (#xA6 #x0456) ; CYRILLIC SMALL LETTER BYELORUSSIAN-UKRAINIAN I
  (#xA7 #x0457) ; CYRILLIC SMALL LETTER YI
  (#xA8 #x2557) ; BOX DRAWINGS DOUBLE DOWN AND LEFT
  (#xA9 #x2558) ; BOX DRAWINGS UP SINGLE AND RIGHT DOUBLE
  (#xAA #x2559) ; BOX DRAWINGS UP DOUBLE AND RIGHT SINGLE
  (#xAB #x255A) ; BOX DRAWINGS DOUBLE UP AND RIGHT
  (#xAC #x255B) ; BOX DRAWINGS UP SINGLE AND LEFT DOUBLE
  (#xAD #x0491) ; CYRILLIC SMALL LETTER GHE WITH UPTURN
  (#xAE #x255D) ; BOX DRAWINGS DOUBLE UP AND LEFT
  (#xAF #x255E) ; BOX DRAWINGS VERTICAL SINGLE AND RIGHT DOUBLE
  (#xB0 #x255F) ; BOX DRAWINGS VERTICAL DOUBLE AND RIGHT SINGLE
  (#xB1 #x2560) ; BOX DRAWINGS DOUBLE VERTICAL AND RIGHT
  (#xB2 #x2561) ; BOX DRAWINGS VERTICAL SINGLE AND LEFT DOUBLE
  (#xB3 #x0401) ; CYRILLIC CAPITAL LETTER IO
  (#xB4 #x0404) ; CYRILLIC CAPITAL LETTER UKRAINIAN IE
  (#xB5 #x2563) ; BOX DRAWINGS DOUBLE VERTICAL AND LEFT
  (#xB6 #x0406) ; CYRILLIC CAPITAL LETTER BYELORUSSIAN-UKRAINIAN I
  (#xB7 #x0407) ; CYRILLIC CAPITAL LETTER YI
  (#xB8 #x2566) ; BOX DRAWINGS DOUBLE DOWN AND HORIZONTAL
  (#xB9 #x2567) ; BOX DRAWINGS UP SINGLE AND HORIZONTAL DOUBLE
  (#xBA #x2568) ; BOX DRAWINGS UP DOUBLE AND HORIZONTAL SINGLE
  (#xBB #x2569) ; BOX DRAWINGS DOUBLE UP AND HORIZONTAL
  (#xBC #x256A) ; BOX DRAWINGS VERTICAL SINGLE AND HORIZONTAL DOUBLE
  (#xBD #x0490) ; CYRILLIC CAPITAL LETTER GHE WITH UPTURN
  (#xBE #x256C) ; BOX DRAWINGS DOUBLE VERTICAL AND HORIZONTAL
  (#xBF #x00A9) ; COPYRIGHT SIGN
  (#xC0 #x044E) ; CYRILLIC SMALL LETTER YU
  (#xC1 #x0430) ; CYRILLIC SMALL LETTER A
  (#xC2 #x0431) ; CYRILLIC SMALL LETTER BE
  (#xC3 #x0446) ; CYRILLIC SMALL LETTER TSE
  (#xC4 #x0434) ; CYRILLIC SMALL LETTER DE
  (#xC5 #x0435) ; CYRILLIC SMALL LETTER IE
  (#xC6 #x0444) ; CYRILLIC SMALL LETTER EF
  (#xC7 #x0433) ; CYRILLIC SMALL LETTER GHE
  (#xC8 #x0445) ; CYRILLIC SMALL LETTER HA
  (#xC9 #x0438) ; CYRILLIC SMALL LETTER I
  (#xCA #x0439) ; CYRILLIC SMALL LETTER SHORT I
  (#xCB #x043A) ; CYRILLIC SMALL LETTER KA
  (#xCC #x043B) ; CYRILLIC SMALL LETTER EL
  (#xCD #x043C) ; CYRILLIC SMALL LETTER EM
  (#xCE #x043D) ; CYRILLIC SMALL LETTER EN
  (#xCF #x043E) ; CYRILLIC SMALL LETTER O
  (#xD0 #x043F) ; CYRILLIC SMALL LETTER PE
  (#xD1 #x044F) ; CYRILLIC SMALL LETTER YA
  (#xD2 #x0440) ; CYRILLIC SMALL LETTER ER
  (#xD3 #x0441) ; CYRILLIC SMALL LETTER ES
  (#xD4 #x0442) ; CYRILLIC SMALL LETTER TE
  (#xD5 #x0443) ; CYRILLIC SMALL LETTER U
  (#xD6 #x0436) ; CYRILLIC SMALL LETTER ZHE
  (#xD7 #x0432) ; CYRILLIC SMALL LETTER VE
  (#xD8 #x044C) ; CYRILLIC SMALL LETTER SOFT SIGN
  (#xD9 #x044B) ; CYRILLIC SMALL LETTER YERU
  (#xDA #x0437) ; CYRILLIC SMALL LETTER ZE
  (#xDB #x0448) ; CYRILLIC SMALL LETTER SHA
  (#xDC #x044D) ; CYRILLIC SMALL LETTER E
  (#xDD #x0449) ; CYRILLIC SMALL LETTER SHCHA
  (#xDE #x0447) ; CYRILLIC SMALL LETTER CHE
  (#xDF #x044A) ; CYRILLIC SMALL LETTER HARD SIGN
  (#xE0 #x042E) ; CYRILLIC CAPITAL LETTER YU
  (#xE1 #x0410) ; CYRILLIC CAPITAL LETTER A
  (#xE2 #x0411) ; CYRILLIC CAPITAL LETTER BE
  (#xE3 #x0426) ; CYRILLIC CAPITAL LETTER TSE
  (#xE4 #x0414) ; CYRILLIC CAPITAL LETTER DE
  (#xE5 #x0415) ; CYRILLIC CAPITAL LETTER IE
  (#xE6 #x0424) ; CYRILLIC CAPITAL LETTER EF
  (#xE7 #x0413) ; CYRILLIC CAPITAL LETTER GHE
  (#xE8 #x0425) ; CYRILLIC CAPITAL LETTER HA
  (#xE9 #x0418) ; CYRILLIC CAPITAL LETTER I
  (#xEA #x0419) ; CYRILLIC CAPITAL LETTER SHORT I
  (#xEB #x041A) ; CYRILLIC CAPITAL LETTER KA
  (#xEC #x041B) ; CYRILLIC CAPITAL LETTER EL
  (#xED #x041C) ; CYRILLIC CAPITAL LETTER EM
  (#xEE #x041D) ; CYRILLIC CAPITAL LETTER EN
  (#xEF #x041E) ; CYRILLIC CAPITAL LETTER O
  (#xF0 #x041F) ; CYRILLIC CAPITAL LETTER PE
  (#xF1 #x042F) ; CYRILLIC CAPITAL LETTER YA
  (#xF2 #x0420) ; CYRILLIC CAPITAL LETTER ER
  (#xF3 #x0421) ; CYRILLIC CAPITAL LETTER ES
  (#xF4 #x0422) ; CYRILLIC CAPITAL LETTER TE
  (#xF5 #x0423) ; CYRILLIC CAPITAL LETTER U
  (#xF6 #x0416) ; CYRILLIC CAPITAL LETTER ZHE
  (#xF7 #x0412) ; CYRILLIC CAPITAL LETTER VE
  (#xF8 #x042C) ; CYRILLIC CAPITAL LETTER SOFT SIGN
  (#xF9 #x042B) ; CYRILLIC CAPITAL LETTER YERU
  (#xFA #x0417) ; CYRILLIC CAPITAL LETTER ZE
  (#xFB #x0428) ; CYRILLIC CAPITAL LETTER SHA
  (#xFC #x042D) ; CYRILLIC CAPITAL LETTER E
  (#xFD #x0429) ; CYRILLIC CAPITAL LETTER SHCHA
  (#xFE #x0427) ; CYRILLIC CAPITAL LETTER CHE
  (#xFF #x042A) ; CYRILLIC CAPITAL LETTER HARD SIGN
)

(declaim (inline get-koi8-u-bytes))
(defun get-koi8-u-bytes (string pos)
  (declare (optimize speed (safety 0))
           (type simple-string string)
           (type array-range pos))
  (get-latin-bytes #'code->koi8-u-mapper :koi8-u string pos))

(defun string->koi8-u (string sstart send null-padding)
  (declare (optimize speed (safety 0))
           (type simple-string string)
           (type array-range sstart send))
  (values (string->latin% string sstart send #'get-koi8-u-bytes null-padding)))

(defmacro define-koi8-u->string* (accessor type)
  (declare (ignore type))
  (let ((name (make-od-name 'koi8-u->string* accessor)))
    `(progn
      (defun ,name (string sstart send array astart aend)
        (,(make-od-name 'latin->string* accessor) string sstart send array astart aend #'koi8-u->code-mapper)))))

(instantiate-octets-definition define-koi8-u->string*)

(defmacro define-koi8-u->string (accessor type)
  (declare (ignore type))
  `(defun ,(make-od-name 'koi8-u->string accessor) (array astart aend)
    (,(make-od-name 'latin->string accessor) array astart aend #'koi8-u->code-mapper)))

(instantiate-octets-definition define-koi8-u->string)

(define-external-format (:koi8-u :|koi8-u|)
    1 t
    (let ((koi8-u-byte (code->koi8-u-mapper bits)))
      (if koi8-u-byte
          (setf (sap-ref-8 sap tail) koi8-u-byte)
          (external-format-encoding-error stream bits)))
    (let ((code (koi8-u->code-mapper byte)))
      (if code
          (code-char code)
          (external-format-decoding-error stream byte)))
    koi8-u->string-aref
    string->koi8-u) ;; TODO -- error check

(define-unibyte-mapper x-mac-cyrillic->code-mapper code->x-mac-cyrillic-mapper
  (#x80 #x0410) ; CYRILLIC CAPITAL LETTER A
  (#x81 #x0411) ; CYRILLIC CAPITAL LETTER BE
  (#x82 #x0412) ; CYRILLIC CAPITAL LETTER VE
  (#x83 #x0413) ; CYRILLIC CAPITAL LETTER GHE
  (#x84 #x0414) ; CYRILLIC CAPITAL LETTER DE
  (#x85 #x0415) ; CYRILLIC CAPITAL LETTER IE
  (#x86 #x0416) ; CYRILLIC CAPITAL LETTER ZHE
  (#x87 #x0417) ; CYRILLIC CAPITAL LETTER ZE
  (#x88 #x0418) ; CYRILLIC CAPITAL LETTER I
  (#x89 #x0419) ; CYRILLIC CAPITAL LETTER SHORT I
  (#x8A #x041A) ; CYRILLIC CAPITAL LETTER KA
  (#x8B #x041B) ; CYRILLIC CAPITAL LETTER EL
  (#x8C #x041C) ; CYRILLIC CAPITAL LETTER EM
  (#x8D #x041D) ; CYRILLIC CAPITAL LETTER EN
  (#x8E #x041E) ; CYRILLIC CAPITAL LETTER O
  (#x8F #x041F) ; CYRILLIC CAPITAL LETTER PE
  (#x90 #x0420) ; CYRILLIC CAPITAL LETTER ER
  (#x91 #x0421) ; CYRILLIC CAPITAL LETTER ES
  (#x92 #x0422) ; CYRILLIC CAPITAL LETTER TE
  (#x93 #x0423) ; CYRILLIC CAPITAL LETTER U
  (#x94 #x0424) ; CYRILLIC CAPITAL LETTER EF
  (#x95 #x0425) ; CYRILLIC CAPITAL LETTER HA
  (#x96 #x0426) ; CYRILLIC CAPITAL LETTER TSE
  (#x97 #x0427) ; CYRILLIC CAPITAL LETTER CHE
  (#x98 #x0428) ; CYRILLIC CAPITAL LETTER SHA
  (#x99 #x0429) ; CYRILLIC CAPITAL LETTER SHCHA
  (#x9A #x042A) ; CYRILLIC CAPITAL LETTER HARD SIGN
  (#x9B #x042B) ; CYRILLIC CAPITAL LETTER YERU
  (#x9C #x042C) ; CYRILLIC CAPITAL LETTER SOFT SIGN
  (#x9D #x042D) ; CYRILLIC CAPITAL LETTER E
  (#x9E #x042E) ; CYRILLIC CAPITAL LETTER YU
  (#x9F #x042F) ; CYRILLIC CAPITAL LETTER YA
  (#xA0 #x2020) ; DAGGER
  (#xA1 #x00B0) ; DEGREE SIGN
  (#xA4 #x00A7) ; SECTION SIGN
  (#xA5 #x2022) ; BULLET
  (#xA6 #x00B6) ; PILCROW SIGN
  (#xA7 #x0406) ; CYRILLIC CAPITAL LETTER BYELORUSSIAN-UKRAINIAN I
  (#xA8 #x00AE) ; REGISTERED SIGN
  (#xAA #x2122) ; TRADE MARK SIGN
  (#xAB #x0402) ; CYRILLIC CAPITAL LETTER DJE
  (#xAC #x0452) ; CYRILLIC SMALL LETTER DJE
  (#xAD #x2260) ; NOT EQUAL TO
  (#xAE #x0403) ; CYRILLIC CAPITAL LETTER GJE
  (#xAF #x0453) ; CYRILLIC SMALL LETTER GJE
  (#xB0 #x221E) ; INFINITY
  (#xB2 #x2264) ; LESS-THAN OR EQUAL TO
  (#xB3 #x2265) ; GREATER-THAN OR EQUAL TO
  (#xB4 #x0456) ; CYRILLIC SMALL LETTER BYELORUSSIAN-UKRAINIAN I
  (#xB6 #x2202) ; PARTIAL DIFFERENTIAL
  (#xB7 #x0408) ; CYRILLIC CAPITAL LETTER JE
  (#xB8 #x0404) ; CYRILLIC CAPITAL LETTER UKRAINIAN IE
  (#xB9 #x0454) ; CYRILLIC SMALL LETTER UKRAINIAN IE
  (#xBA #x0407) ; CYRILLIC CAPITAL LETTER YI
  (#xBB #x0457) ; CYRILLIC SMALL LETTER YI
  (#xBC #x0409) ; CYRILLIC CAPITAL LETTER LJE
  (#xBD #x0459) ; CYRILLIC SMALL LETTER LJE
  (#xBE #x040A) ; CYRILLIC CAPITAL LETTER NJE
  (#xBF #x045A) ; CYRILLIC SMALL LETTER NJE
  (#xC0 #x0458) ; CYRILLIC SMALL LETTER JE
  (#xC1 #x0405) ; CYRILLIC CAPITAL LETTER DZE
  (#xC2 #x00AC) ; NOT SIGN
  (#xC3 #x221A) ; SQUARE ROOT
  (#xC4 #x0192) ; LATIN SMALL LETTER F WITH HOOK
  (#xC5 #x2248) ; ALMOST EQUAL TO
  (#xC6 #x2206) ; INCREMENT
  (#xC7 #x00AB) ; LEFT-POINTING DOUBLE ANGLE QUOTATION MARK
  (#xC8 #x00BB) ; RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK
  (#xC9 #x2026) ; HORIZONTAL ELLIPSIS
  (#xCA #x00A0) ; NO-BREAK SPACE
  (#xCB #x040B) ; CYRILLIC CAPITAL LETTER TSHE
  (#xCC #x045B) ; CYRILLIC SMALL LETTER TSHE
  (#xCD #x040C) ; CYRILLIC CAPITAL LETTER KJE
  (#xCE #x045C) ; CYRILLIC SMALL LETTER KJE
  (#xCF #x0455) ; CYRILLIC SMALL LETTER DZE
  (#xD0 #x2013) ; EN DASH
  (#xD1 #x2014) ; EM DASH
  (#xD2 #x201C) ; LEFT DOUBLE QUOTATION MARK
  (#xD3 #x201D) ; RIGHT DOUBLE QUOTATION MARK
  (#xD4 #x2018) ; LEFT SINGLE QUOTATION MARK
  (#xD5 #x2019) ; RIGHT SINGLE QUOTATION MARK
  (#xD6 #x00F7) ; DIVISION SIGN
  (#xD7 #x201E) ; DOUBLE LOW-9 QUOTATION MARK
  (#xD8 #x040E) ; CYRILLIC CAPITAL LETTER SHORT U
  (#xD9 #x045E) ; CYRILLIC SMALL LETTER SHORT U
  (#xDA #x040F) ; CYRILLIC CAPITAL LETTER DZHE
  (#xDB #x045F) ; CYRILLIC SMALL LETTER DZHE
  (#xDC #x2116) ; NUMERO SIGN
  (#xDD #x0401) ; CYRILLIC CAPITAL LETTER IO
  (#xDE #x0451) ; CYRILLIC SMALL LETTER IO
  (#xDF #x044F) ; CYRILLIC SMALL LETTER YA
  (#xE0 #x0430) ; CYRILLIC SMALL LETTER A
  (#xE1 #x0431) ; CYRILLIC SMALL LETTER BE
  (#xE2 #x0432) ; CYRILLIC SMALL LETTER VE
  (#xE3 #x0433) ; CYRILLIC SMALL LETTER GHE
  (#xE4 #x0434) ; CYRILLIC SMALL LETTER DE
  (#xE5 #x0435) ; CYRILLIC SMALL LETTER IE
  (#xE6 #x0436) ; CYRILLIC SMALL LETTER ZHE
  (#xE7 #x0437) ; CYRILLIC SMALL LETTER ZE
  (#xE8 #x0438) ; CYRILLIC SMALL LETTER I
  (#xE9 #x0439) ; CYRILLIC SMALL LETTER SHORT I
  (#xEA #x043A) ; CYRILLIC SMALL LETTER KA
  (#xEB #x043B) ; CYRILLIC SMALL LETTER EL
  (#xEC #x043C) ; CYRILLIC SMALL LETTER EM
  (#xED #x043D) ; CYRILLIC SMALL LETTER EN
  (#xEE #x043E) ; CYRILLIC SMALL LETTER O
  (#xEF #x043F) ; CYRILLIC SMALL LETTER PE
  (#xF0 #x0440) ; CYRILLIC SMALL LETTER ER
  (#xF1 #x0441) ; CYRILLIC SMALL LETTER ES
  (#xF2 #x0442) ; CYRILLIC SMALL LETTER TE
  (#xF3 #x0443) ; CYRILLIC SMALL LETTER U
  (#xF4 #x0444) ; CYRILLIC SMALL LETTER EF
  (#xF5 #x0445) ; CYRILLIC SMALL LETTER HA
  (#xF6 #x0446) ; CYRILLIC SMALL LETTER TSE
  (#xF7 #x0447) ; CYRILLIC SMALL LETTER CHE
  (#xF8 #x0448) ; CYRILLIC SMALL LETTER SHA
  (#xF9 #x0449) ; CYRILLIC SMALL LETTER SHCHA
  (#xFA #x044A) ; CYRILLIC SMALL LETTER HARD SIGN
  (#xFB #x044B) ; CYRILLIC SMALL LETTER YERU
  (#xFC #x044C) ; CYRILLIC SMALL LETTER SOFT SIGN
  (#xFD #x044D) ; CYRILLIC SMALL LETTER E
  (#xFE #x044E) ; CYRILLIC SMALL LETTER YU
  (#xFF #x00A4) ; CURRENCY SIGN
)

(declaim (inline get-x-mac-cyrillic-bytes))
(defun get-x-mac-cyrillic-bytes (string pos)
  (declare (optimize speed (safety 0))
           (type simple-string string)
           (type array-range pos))
  (get-latin-bytes #'code->x-mac-cyrillic-mapper :x-mac-cyrillic string pos))

(defun string->x-mac-cyrillic (string sstart send null-padding)
  (declare (optimize speed (safety 0))
           (type simple-string string)
           (type array-range sstart send))
  (values (string->latin% string sstart send #'get-x-mac-cyrillic-bytes null-padding)))

(defmacro define-x-mac-cyrillic->string* (accessor type)
  (declare (ignore type))
  (let ((name (make-od-name 'x-mac-cyrillic->string* accessor)))
    `(progn
      (defun ,name (string sstart send array astart aend)
        (,(make-od-name 'latin->string* accessor) string sstart send array astart aend #'x-mac-cyrillic->code-mapper)))))

(instantiate-octets-definition define-x-mac-cyrillic->string*)

(defmacro define-x-mac-cyrillic->string (accessor type)
  (declare (ignore type))
  `(defun ,(make-od-name 'x-mac-cyrillic->string accessor) (array astart aend)
    (,(make-od-name 'latin->string accessor) array astart aend #'x-mac-cyrillic->code-mapper)))

(instantiate-octets-definition define-x-mac-cyrillic->string)

(define-external-format (:x-mac-cyrillic :|x-mac-cyrillic|)
    1 t
    (let ((x-mac-cyrillic-byte (code->x-mac-cyrillic-mapper bits)))
      (if x-mac-cyrillic-byte
          (setf (sap-ref-8 sap tail) x-mac-cyrillic-byte)
          (external-format-encoding-error stream bits)))
    (let ((code (x-mac-cyrillic->code-mapper byte)))
      (if code
          (code-char code)
          (external-format-decoding-error stream byte)))
    x-mac-cyrillic->string-aref
    string->x-mac-cyrillic) ;; TODO -- error check
