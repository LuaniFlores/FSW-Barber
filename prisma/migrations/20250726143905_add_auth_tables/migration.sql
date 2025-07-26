/*
  Warnings:

  - You are about to drop the column `babershopId` on the `BarbershopService` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE "BarbershopService" DROP CONSTRAINT "BarbershopService_babershopId_fkey";

-- AlterTable
ALTER TABLE "BarbershopService" DROP COLUMN "babershopId",
ADD COLUMN     "barbershopId" TEXT;

-- AddForeignKey
ALTER TABLE "BarbershopService" ADD CONSTRAINT "BarbershopService_barbershopId_fkey" FOREIGN KEY ("barbershopId") REFERENCES "Barbershop"("id") ON DELETE SET NULL ON UPDATE CASCADE;
