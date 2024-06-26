/*
  Warnings:

  - A unique constraint covering the columns `[token]` on the table `OnRampTransactions` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `token` to the `OnRampTransactions` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "OnRampTransactions" ADD COLUMN     "token" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "OnRampTransactions_token_key" ON "OnRampTransactions"("token");
