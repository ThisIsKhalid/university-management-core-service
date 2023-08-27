/*
  Warnings:

  - You are about to drop the column `academicDepertmentId` on the `faculties` table. All the data in the column will be lost.
  - You are about to drop the column `academicDepertmentId` on the `students` table. All the data in the column will be lost.
  - Added the required column `academicDepartmentId` to the `faculties` table without a default value. This is not possible if the table is not empty.
  - Added the required column `academicDepartmentId` to the `students` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "faculties" DROP CONSTRAINT "faculties_academicDepertmentId_fkey";

-- DropForeignKey
ALTER TABLE "students" DROP CONSTRAINT "students_academicDepertmentId_fkey";

-- AlterTable
ALTER TABLE "faculties" DROP COLUMN "academicDepertmentId",
ADD COLUMN     "academicDepartmentId" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "students" DROP COLUMN "academicDepertmentId",
ADD COLUMN     "academicDepartmentId" TEXT NOT NULL;

-- AddForeignKey
ALTER TABLE "students" ADD CONSTRAINT "students_academicDepartmentId_fkey" FOREIGN KEY ("academicDepartmentId") REFERENCES "academic_department"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "faculties" ADD CONSTRAINT "faculties_academicDepartmentId_fkey" FOREIGN KEY ("academicDepartmentId") REFERENCES "academic_department"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
