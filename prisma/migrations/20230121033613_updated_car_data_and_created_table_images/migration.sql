-- CreateTable
CREATE TABLE "Car_data" (
    "id" SERIAL NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "model" VARCHAR(255) NOT NULL,
    "year" INTEGER NOT NULL,
    "url" VARCHAR(255) NOT NULL,
    "description" TEXT NOT NULL,
    "mainImage" VARCHAR(255) NOT NULL,
    "history" TEXT NOT NULL,
    "curiosities" TEXT,
    "make" VARCHAR(30) NOT NULL,

    CONSTRAINT "Car_data_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Car_images" (
    "id" SERIAL NOT NULL,
    "carId" INTEGER NOT NULL,
    "imageId" INTEGER NOT NULL,

    CONSTRAINT "Car_images_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Images" (
    "id" SERIAL NOT NULL,
    "url" VARCHAR(255) NOT NULL,

    CONSTRAINT "Images_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Car_images" ADD CONSTRAINT "Car_images_carId_fkey" FOREIGN KEY ("carId") REFERENCES "Car_data"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Car_images" ADD CONSTRAINT "Car_images_imageId_fkey" FOREIGN KEY ("imageId") REFERENCES "Images"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
