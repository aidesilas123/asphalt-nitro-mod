package com.mbridge.msdk.foundation.db;

import android.content.ContentValues;
import android.database.Cursor;
import com.kidoz.sdk.api.general.utils.KidozParams;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: LoadTimeDao.java */
/* JADX INFO: loaded from: classes4.dex */
public final class l extends a<com.mbridge.msdk.foundation.entity.h> {
    private static l a;

    private l(g gVar) {
        super(gVar);
    }

    public static synchronized l a(g gVar) {
        if (a == null) {
            a = new l(gVar);
        }
        return a;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x001b A[EXC_TOP_SPLITTER, PHI: r0 r1
      0x001b: PHI (r0v4 android.database.Cursor) = (r0v2 android.database.Cursor), (r0v5 android.database.Cursor) binds: [B:16:0x0025, B:9:0x0019] A[DONT_GENERATE, DONT_INLINE]
      0x001b: PHI (r1v3 int) = (r1v0 int), (r1v5 int) binds: [B:16:0x0025, B:9:0x0019] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized int a() {
        /*
            r4 = this;
            monitor-enter(r4)
            r0 = 0
            r1 = 0
            java.lang.String r2 = "select count(*) from load_stat"
            android.database.sqlite.SQLiteDatabase r3 = r4.getReadableDatabase()     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L21
            android.database.Cursor r0 = r3.rawQuery(r2, r0)     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L21
            if (r0 == 0) goto L19
            boolean r2 = r0.moveToFirst()     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L21
            if (r2 == 0) goto L19
            int r1 = r0.getInt(r1)     // Catch: java.lang.Throwable -> L1f java.lang.Exception -> L21
        L19:
            if (r0 == 0) goto L28
        L1b:
            r0.close()     // Catch: java.lang.Exception -> L28 java.lang.Throwable -> L30
            goto L28
        L1f:
            r1 = move-exception
            goto L2a
        L21:
            r2 = move-exception
            r2.printStackTrace()     // Catch: java.lang.Throwable -> L1f
            if (r0 == 0) goto L28
            goto L1b
        L28:
            monitor-exit(r4)
            return r1
        L2a:
            if (r0 == 0) goto L2f
            r0.close()     // Catch: java.lang.Exception -> L2f java.lang.Throwable -> L30
        L2f:
            throw r1     // Catch: java.lang.Throwable -> L30
        L30:
            r0 = move-exception
            monitor-exit(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.db.l.a():int");
    }

    public final synchronized List<com.mbridge.msdk.foundation.entity.h> a(int i) {
        ArrayList arrayList;
        ArrayList arrayList2;
        Cursor cursor = null;
        arrayList2 = null;
        arrayList2 = null;
        cursor = null;
        try {
            try {
                Cursor cursorRawQuery = getReadableDatabase().rawQuery("select * from load_stat LIMIT " + i, null);
                if (cursorRawQuery != null) {
                    try {
                        try {
                            if (cursorRawQuery.getCount() > 0) {
                                arrayList = new ArrayList();
                                int i2 = 0;
                                while (cursorRawQuery.moveToNext() && i2 < i) {
                                    try {
                                        i2++;
                                        int i3 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(CampaignEx.JSON_KEY_AD_SOURCE_ID));
                                        String string = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("time"));
                                        int i4 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("adNum"));
                                        String string2 = cursorRawQuery.getString(cursorRawQuery.getColumnIndex(CampaignEx.JSON_KEY_CAMPAIGN_UNITID));
                                        int i5 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("fb"));
                                        int i6 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("timeout"));
                                        int i7 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(KidozParams.NETWORK_TYPE));
                                        String string3 = cursorRawQuery.getString(cursorRawQuery.getColumnIndex("network_type_str"));
                                        int i8 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex(CampaignEx.JSON_KEY_HB));
                                        com.mbridge.msdk.foundation.entity.h hVar = new com.mbridge.msdk.foundation.entity.h(i3, string, i4, string2, i5, i6, i7);
                                        hVar.c(string3);
                                        hVar.a(i8);
                                        arrayList.add(hVar);
                                        int i9 = cursorRawQuery.getInt(cursorRawQuery.getColumnIndex("id"));
                                        if (getWritableDatabase() != null) {
                                            getWritableDatabase().delete("load_stat", "id = ?", new String[]{i9 + ""});
                                        }
                                    } catch (Exception e2) {
                                        e = e2;
                                        cursor = cursorRawQuery;
                                        e.printStackTrace();
                                        if (cursor != null) {
                                            try {
                                                cursor.close();
                                            } catch (Exception unused) {
                                            }
                                        }
                                        arrayList2 = arrayList;
                                    }
                                }
                                arrayList2 = arrayList;
                            }
                        } catch (Exception e3) {
                            e = e3;
                            arrayList = null;
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorRawQuery;
                        if (cursor != null) {
                            try {
                                cursor.close();
                            } catch (Exception unused2) {
                            }
                        }
                        throw th;
                    }
                }
                if (cursorRawQuery != null) {
                    try {
                        cursorRawQuery.close();
                    } catch (Exception unused3) {
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e4) {
            e = e4;
            arrayList = null;
        }
        return arrayList2;
    }

    public final synchronized void a(com.mbridge.msdk.foundation.entity.h hVar) {
        if (getWritableDatabase() == null) {
            return;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("time", hVar.c());
        contentValues.put(CampaignEx.JSON_KEY_AD_SOURCE_ID, Integer.valueOf(hVar.b()));
        contentValues.put("adNum", Integer.valueOf(hVar.d()));
        contentValues.put(CampaignEx.JSON_KEY_CAMPAIGN_UNITID, hVar.e());
        contentValues.put("fb", Integer.valueOf(hVar.f()));
        contentValues.put(CampaignEx.JSON_KEY_HB, Integer.valueOf(hVar.a()));
        contentValues.put("timeout", Integer.valueOf(hVar.g()));
        contentValues.put(KidozParams.NETWORK_TYPE, Integer.valueOf(hVar.h()));
        contentValues.put("network_type_str", hVar.i());
        getWritableDatabase().insert("load_stat", null, contentValues);
    }
}
