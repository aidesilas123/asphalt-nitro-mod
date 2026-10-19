package com.mbridge.msdk.foundation.db;

import android.database.Cursor;

/* JADX INFO: compiled from: CampaignClickTimeDao.java */
/* JADX INFO: loaded from: classes4.dex */
public final class e extends a<com.mbridge.msdk.foundation.entity.d> {
    private static e a;

    private e(g gVar) {
        super(gVar);
    }

    public static synchronized e a(g gVar) {
        if (a == null) {
            a = new e(gVar);
        }
        return a;
    }

    public final synchronized int a() {
        int i;
        Cursor cursorRawQuery = null;
        i = 0;
        try {
            try {
                cursorRawQuery = getReadableDatabase().rawQuery("select count(*) from click_time", null);
                if (cursorRawQuery != null && cursorRawQuery.moveToFirst()) {
                    i = cursorRawQuery.getInt(0);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                if (cursorRawQuery != null) {
                }
            }
        } finally {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0147 A[Catch: all -> 0x014b, TRY_ENTER, TryCatch #4 {, blocks: (B:4:0x0003, B:20:0x012a, B:26:0x0133, B:40:0x0147, B:41:0x014a), top: B:48:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized java.util.List<com.mbridge.msdk.foundation.entity.d> a(int r28) {
        /*
            Method dump skipped, instruction units count: 334
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.db.e.a(int):java.util.List");
    }
}
