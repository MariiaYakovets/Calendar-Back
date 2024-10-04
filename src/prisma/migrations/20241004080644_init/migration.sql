/*
  Warnings:

  - Added the required column `id` to the `Event` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Event" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "start" DATETIME NOT NULL,
    "end" DATETIME NOT NULL,
    "description" TEXT
);
INSERT INTO "new_Event" ("description", "end", "start", "title") SELECT "description", "end", "start", "title" FROM "Event";
DROP TABLE "Event";
ALTER TABLE "new_Event" RENAME TO "Event";
CREATE UNIQUE INDEX "Event_title_key" ON "Event"("title");
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
