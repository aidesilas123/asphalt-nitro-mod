package com.mbridge.msdk.foundation.db;

import android.content.ContentValues;
import android.database.Cursor;

/* JADX INFO: compiled from: FrequenceDao.java */
/* JADX INFO: loaded from: classes4.dex */
public final class k extends a<com.mbridge.msdk.foundation.entity.g> {
    private static k a;

    private k(g gVar) {
        super(gVar);
    }

    public static synchronized k a(g gVar) {
        if (a == null) {
            a = new k(gVar);
        }
        return a;
    }

    private synchronized long b(com.mbridge.msdk.foundation.entity.g gVar) {
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", gVar.a());
            contentValues.put("fc_a", Integer.valueOf(gVar.b()));
            contentValues.put("fc_b", Integer.valueOf(gVar.c()));
            contentValues.put("ts", Long.valueOf(gVar.f()));
            contentValues.put("impression_count", Integer.valueOf(gVar.d()));
            contentValues.put("click_count", Integer.valueOf(gVar.e()));
            contentValues.put("ts", Long.valueOf(gVar.f()));
            if (getWritableDatabase() == null) {
                return -1L;
            }
            return getWritableDatabase().insert("frequence", null, contentValues);
        } catch (Exception unused) {
            return -1L;
        }
    }

    public final synchronized void a(com.mbridge.msdk.foundation.entity.g gVar) {
        if (!a(gVar.a())) {
            b(gVar);
        }
    }

    public final synchronized boolean a(String str) {
        Cursor cursor = null;
        try {
            try {
                try {
                    synchronized (str) {
                        Cursor cursorRawQuery = getReadableDatabase().rawQuery("SELECT id FROM frequence WHERE id='" + str + "'", null);
                        if (cursorRawQuery != null && cursorRawQuery.getCount() > 0) {
                            cursorRawQuery.close();
                            return true;
                        }
                        if (cursorRawQuery != null) {
                            cursorRawQuery.close();
                        }
                        return false;
                    }
                } catch (Exception unused) {
                    return false;
                }
            } finally {
                if (0 != 0) {
                    cursor.close();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0047 A[PHI: r0
      0x0047: PHI (r0v6 android.database.Cursor) = (r0v5 android.database.Cursor), (r0v7 android.database.Cursor) binds: [B:25:0x0045, B:17:0x0037] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long[] a() {
        /*
            r7 = this;
            java.lang.String r0 = "SELECT id FROM frequence WHERE fc_a<impression_count"
            r1 = 0
            android.database.sqlite.SQLiteDatabase r2 = r7.getReadableDatabase()     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L44
            android.database.Cursor r0 = r2.rawQuery(r0, r1)     // Catch: java.lang.Throwable -> L3a java.lang.Exception -> L44
            if (r0 == 0) goto L37
            int r2 = r0.getCount()     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L35
            if (r2 <= 0) goto L37
            int r2 = r0.getCount()     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L35
            long[] r2 = new long[r2]     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L35
            r3 = 0
        L1a:
            boolean r4 = r0.moveToNext()     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L35
            if (r4 == 0) goto L2f
            java.lang.String r4 = "id"
            int r4 = r0.getColumnIndexOrThrow(r4)     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L35
            long r4 = r0.getLong(r4)     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L35
            r2[r3] = r4     // Catch: java.lang.Throwable -> L33 java.lang.Exception -> L35
            int r3 = r3 + 1
            goto L1a
        L2f:
            r0.close()
            return r2
        L33:
            r1 = move-exception
            goto L3e
        L35:
            goto L45
        L37:
            if (r0 == 0) goto L4a
            goto L47
        L3a:
            r0 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
        L3e:
            if (r0 == 0) goto L43
            r0.close()
        L43:
            throw r1
        L44:
            r0 = r1
        L45:
            if (r0 == 0) goto L4a
        L47:
            r0.close()
        L4a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.db.k.a():long[]");
    }

    public final synchronized void b() {
        try {
            String str = "ts<" + (System.currentTimeMillis() - 86400000);
            if (getWritableDatabase() != null) {
                getWritableDatabase().delete("frequence", str, null);
            }
        } catch (Exception unused) {
        }
    }

    public final synchronized void b(String str) {
        if (a(str)) {
            String str2 = "UPDATE frequence Set impression_count=impression_count+1 WHERE id=" + str;
            if (getReadableDatabase() != null) {
                getReadableDatabase().execSQL(str2);
            }
        }
    }
}
