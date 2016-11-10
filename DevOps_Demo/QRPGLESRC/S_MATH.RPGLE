      *=====================================================================*
      *  Math Service Program.                                              *
      *=====================================================================*
      *   HOW TO COMPILE:                                                   *
      *                                                                     *
      *   (1. CREATE THE MODULE)                                            *
      *   CRTRPGMOD MODULE(NES.DEV/S_MATH) SRCFILE(NES.DEV/QRPGLESRC)       *
      *                                                                     *
      *   (2. CREATE THE SERVICE PROGRAM)                                   *
      *   CRTSRVPGM SRVPGM(NES.DEV/S_MATH) EXPORT(*ALL)                     *
      *             ACTGRP(MATHTST)                                         *
      ***********************************************************************
      *  Initial Design                                                     *
      *         - define procedure for 'addInt'                             *
      *         - define procedure for 'subInt'                             *
      ***********************************************************************
      *  Change # 1                                                         *
      *         - define procedure for 'mulInt'                             *
      ***********************************************************************
      *  Change # 2                                                         *
      *         - define procedure for 'divInt'                             *
      ***********************************************************************

     H NoMain Option(*SrcStmt)

      /copy NES.DEV/QCPYSRC,P_MATH                        MATH Copybook

      // ============================================================
      //  addInt : add 2 integer numbers        -test
      // ============================================================
     P addInt          b                   export
     D addInt          pi            15s 0
     D num1                          15s 0 CONST
     D num2                          15s 0 CONST
      /free
               return  num1 + num2 ;
      /end-free
     P addInt          e

      // ============================================================
      //  subInt : subtract 2 integer numbers
      // ============================================================
     P subInt          b                   export
     D subInt          pi            15s 0
     D num1                          15s 0 CONST
     D num2                          15s 0 CONST
      /free
               return  num1 - num2 ;
      /end-free
     P subInt          e

      // ============================================================
      //  mulInt : multiply 2 integer numbers
      // ============================================================
     P mulInt          b                   export
     D mulInt          pi            15s 0
     D num1                          15s 0 CONST
     D num2                          15s 0 CONST
      /free
               return  num1 * num2 ;
      /end-free
     P mulInt          e

      // ============================================================
      //  divInt : divide 2 integer numbers
      // ============================================================
     P divInt          b                   export
     D divInt          pi            15s 0
     D num1                          15s 0 CONST
     D num2                          15s 0 CONST
      /free
               return  num1 / num2 ;
      /end-free
     P divInt          e
