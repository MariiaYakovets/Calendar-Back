-- CreateTable
CREATE TABLE "Event" (
    "title" TEXT NOT NULL,
    "start" DATETIME NOT NULL,
    "end" DATETIME NOT NULL,
    "description" TEXT
);

-- CreateIndex
CREATE UNIQUE INDEX "Event_title_key" ON "Event"("title");
