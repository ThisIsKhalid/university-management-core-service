import express from 'express';
import validateRequest from '../../middlewares/validateRequest';
import { AcademicSemesterController } from './academicSemester.controller';
import { AcademicSemesterValidation } from './academicSemesterValidation';

const router = express.Router();

router.post(
  '/',
  validateRequest(AcademicSemesterValidation.create),
  AcademicSemesterController.insertIntoDB
);

router.get('/:id', AcademicSemesterController.getDataById)

router.get('/', AcademicSemesterController.getAllFromDB);

export const AcademicSemesterRoutes = router;
