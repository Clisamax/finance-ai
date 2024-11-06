-- CreateEnum
CREATE TYPE "TrasactionType" AS ENUM ('DEPOSIT', 'EXPENSE', 'INVESTIMENT');

-- CreateEnum
CREATE TYPE "TrasactionCategory" AS ENUM ('HOUSING', 'TRANSPORTATION', 'FOOD', 'UTILITY', 'ENTERTAINMENT', 'HEALTH', 'SALARY', 'EDUCATION', 'TRAVEL', 'OTHERS');

-- CreateEnum
CREATE TYPE "TrasactionPaymentMethod" AS ENUM ('CREDIT_CARD', 'DEBIT_CARD', 'BANK_TRANSFER', 'BANK_SLIP', 'CASH', 'PIX', 'OTHERS');

-- CreateTable
CREATE TABLE "Trasaction" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "type" "TrasactionType" NOT NULL,
    "amount" DECIMAL(10,2) NOT NULL,
    "category" "TrasactionCategory" NOT NULL,
    "paymentMethod" "TrasactionPaymentMethod" NOT NULL,
    "data" TIMESTAMP(3) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Trasaction_pkey" PRIMARY KEY ("id")
);
