package com.mbridge.msdk.foundation.db;

import android.content.ContentValues;
import android.database.Cursor;
import com.mbridge.msdk.out.Campaign;

/* JADX INFO: compiled from: DailyPlayCapDao.java */
/* JADX INFO: loaded from: classes4.dex */
public class i extends a<Campaign> {
    private static final String a = "com.mbridge.msdk.foundation.db.i";
    private static i b;

    private i(g gVar) {
        super(gVar);
    }

    public static synchronized i a(g gVar) {
        if (b == null) {
            b = new i(gVar);
        }
        return b;
    }

    private synchronized void b(String str) {
        try {
            if (getWritableDatabase() == null) {
                return;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("first_insert_timestamp", (Integer) 0);
            contentValues.put("play_time", (Integer) 0);
            getWritableDatabase().update("dailyplaycap", contentValues, "unit_id = '" + str + "'", null);
        } finally {
        }
    }

    private synchronized boolean c(String str) {
        try {
            Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT play_time FROM dailyplaycap WHERE unit_id='" + str + "'", null);
            if (cursorRawQuery != null && cursorRawQuery.getCount() > 0) {
                cursorRawQuery.close();
                return true;
            }
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ce A[EXC_TOP_SPLITTER, PHI: r1
      0x00ce: PHI (r1v4 android.database.Cursor) = (r1v3 android.database.Cursor), (r1v5 android.database.Cursor) binds: [B:37:0x00d8, B:30:0x00cc] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized void a(java.lang.String r18) {
        /*
            Method dump skipped, instruction units count: 231
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.db.i.a(java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0064 A[EXC_TOP_SPLITTER, PHI: r0 r1
      0x0064: PHI (r0v2 android.database.Cursor) = (r0v1 android.database.Cursor), (r0v3 android.database.Cursor) binds: [B:24:0x0072, B:19:0x0062] A[DONT_GENERATE, DONT_INLINE]
      0x0064: PHI (r1v1 boolean) = (r1v0 boolean), (r1v3 boolean) binds: [B:24:0x0072, B:19:0x0062] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(java.lang.String r11, int r12) {
        /*
            r10 = this;
            r0 = 0
            r1 = 0
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L68
            r2.<init>()     // Catch: java.lang.Throwable -> L68
            java.lang.String r3 = "SELECT * FROM dailyplaycap where unit_id ='"
            r2.append(r3)     // Catch: java.lang.Throwable -> L68
            r2.append(r11)     // Catch: java.lang.Throwable -> L68
            java.lang.String r3 = "'"
            r2.append(r3)     // Catch: java.lang.Throwable -> L68
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L68
            android.database.sqlite.SQLiteDatabase r3 = r10.getReadableDatabase()     // Catch: java.lang.Throwable -> L68
            android.database.Cursor r0 = r3.rawQuery(r2, r0)     // Catch: java.lang.Throwable -> L68
            if (r0 == 0) goto L62
            int r2 = r0.getCount()     // Catch: java.lang.Throwable -> L68
            if (r2 <= 0) goto L62
            boolean r2 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L68
            if (r2 == 0) goto L62
            java.lang.String r2 = "first_insert_timestamp"
            int r2 = r0.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L68
            long r2 = r0.getLong(r2)     // Catch: java.lang.Throwable -> L68
            java.lang.String r4 = "play_time"
            int r4 = r0.getColumnIndex(r4)     // Catch: java.lang.Throwable -> L68
            int r4 = r0.getInt(r4)     // Catch: java.lang.Throwable -> L68
            long r4 = (long) r4     // Catch: java.lang.Throwable -> L68
            r6 = 0
            int r8 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r8 == 0) goto L62
            long r6 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L68
            r8 = 86400000(0x5265c00, double:4.2687272E-316)
            long r6 = r6 - r8
            int r8 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r8 <= 0) goto L59
            r10.b(r11)     // Catch: java.lang.Throwable -> L68
            goto L62
        L59:
            if (r12 <= 0) goto L62
            long r11 = (long) r12
            int r2 = (r4 > r11 ? 1 : (r4 == r11 ? 0 : -1))
            if (r2 < 0) goto L62
            r11 = 1
            r1 = 1
        L62:
            if (r0 == 0) goto L75
        L64:
            r0.close()     // Catch: java.lang.Throwable -> L75
            goto L75
        L68:
            r11 = move-exception
            java.lang.String r12 = com.mbridge.msdk.foundation.db.i.a     // Catch: java.lang.Throwable -> L76
            java.lang.String r11 = r11.getMessage()     // Catch: java.lang.Throwable -> L76
            com.mbridge.msdk.foundation.tools.aa.b(r12, r11)     // Catch: java.lang.Throwable -> L76
            if (r0 == 0) goto L75
            goto L64
        L75:
            return r1
        L76:
            r11 = move-exception
            if (r0 == 0) goto L7c
            r0.close()     // Catch: java.lang.Throwable -> L7c
        L7c:
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.db.i.a(java.lang.String, int):boolean");
    }
}
