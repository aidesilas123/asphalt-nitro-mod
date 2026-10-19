package com.json;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.SystemClock;
import android.util.Log;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class a3 extends SQLiteOpenHelper implements i5 {
    private static a3 a;
    private final int b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f5091d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f5092e;

    public a3(Context context, String str, int i) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i);
        this.b = 4;
        this.c = 400;
        this.f5091d = "DROP TABLE IF EXISTS events";
        this.f5092e = "CREATE TABLE events (_id INTEGER PRIMARY KEY,eventid INTEGER,timestamp INTEGER,type TEXT,data TEXT )";
    }

    private ContentValues a(a4 a4Var, String str) {
        if (a4Var == null) {
            return null;
        }
        ContentValues contentValues = new ContentValues(4);
        contentValues.put(b4.t, Integer.valueOf(a4Var.c()));
        contentValues.put("timestamp", Long.valueOf(a4Var.d()));
        contentValues.put("type", str);
        contentValues.put("data", a4Var.a());
        return contentValues;
    }

    public static synchronized a3 a(Context context, String str, int i) {
        if (a == null) {
            a = new a3(context, str, i);
        }
        return a;
    }

    private synchronized SQLiteDatabase b(boolean z) throws Throwable {
        int i = 0;
        while (true) {
            try {
                if (z) {
                    return getWritableDatabase();
                }
                return getReadableDatabase();
            } catch (Throwable th) {
                i++;
                if (i >= 4) {
                    throw th;
                }
                SystemClock.sleep(i * 400);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x008e A[Catch: all -> 0x00ab, DONT_GENERATE, PHI: r11
      0x008e: PHI (r11v2 android.database.sqlite.SQLiteDatabase) = (r11v1 android.database.sqlite.SQLiteDatabase), (r11v3 android.database.sqlite.SQLiteDatabase) binds: [B:30:0x008c, B:17:0x006d] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #3 {, blocks: (B:3:0x0001, B:13:0x0060, B:15:0x0066, B:16:0x0069, B:31:0x008e, B:25:0x007d, B:27:0x0083, B:29:0x0088, B:36:0x0096, B:38:0x009c, B:40:0x00a1, B:42:0x00a7, B:43:0x00aa, B:23:0x0074), top: B:53:0x0001, inners: #2 }] */
    @Override // com.json.i5
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized java.util.ArrayList<com.json.a4> a(java.lang.String r13) {
        /*
            r12 = this;
            monitor-enter(r12)
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> Lab
            r0.<init>()     // Catch: java.lang.Throwable -> Lab
            r1 = 0
            r2 = 0
            android.database.sqlite.SQLiteDatabase r11 = r12.b(r1)     // Catch: java.lang.Throwable -> L72
            java.lang.String r6 = "type = ?"
            r3 = 1
            java.lang.String[] r7 = new java.lang.String[r3]     // Catch: java.lang.Throwable -> L70
            r7[r1] = r13     // Catch: java.lang.Throwable -> L70
            java.lang.String r10 = "timestamp ASC"
            java.lang.String r4 = "events"
            r5 = 0
            r8 = 0
            r9 = 0
            r3 = r11
            android.database.Cursor r2 = r3.query(r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Throwable -> L70
            int r13 = r2.getCount()     // Catch: java.lang.Throwable -> L70
            if (r13 <= 0) goto L60
            r2.moveToFirst()     // Catch: java.lang.Throwable -> L70
        L28:
            boolean r13 = r2.isAfterLast()     // Catch: java.lang.Throwable -> L70
            if (r13 != 0) goto L5d
            java.lang.String r13 = "eventid"
            int r13 = r2.getColumnIndex(r13)     // Catch: java.lang.Throwable -> L70
            int r13 = r2.getInt(r13)     // Catch: java.lang.Throwable -> L70
            java.lang.String r1 = "timestamp"
            int r1 = r2.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L70
            long r3 = r2.getLong(r1)     // Catch: java.lang.Throwable -> L70
            java.lang.String r1 = "data"
            int r1 = r2.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L70
            java.lang.String r1 = r2.getString(r1)     // Catch: java.lang.Throwable -> L70
            com.ironsource.a4 r5 = new com.ironsource.a4     // Catch: java.lang.Throwable -> L70
            org.json.JSONObject r6 = new org.json.JSONObject     // Catch: java.lang.Throwable -> L70
            r6.<init>(r1)     // Catch: java.lang.Throwable -> L70
            r5.<init>(r13, r3, r6)     // Catch: java.lang.Throwable -> L70
            r0.add(r5)     // Catch: java.lang.Throwable -> L70
            r2.moveToNext()     // Catch: java.lang.Throwable -> L70
            goto L28
        L5d:
            r2.close()     // Catch: java.lang.Throwable -> L70
        L60:
            boolean r13 = r2.isClosed()     // Catch: java.lang.Throwable -> Lab
            if (r13 != 0) goto L69
            r2.close()     // Catch: java.lang.Throwable -> Lab
        L69:
            boolean r13 = r11.isOpen()     // Catch: java.lang.Throwable -> Lab
            if (r13 == 0) goto L91
            goto L8e
        L70:
            r13 = move-exception
            goto L74
        L72:
            r13 = move-exception
            r11 = r2
        L74:
            java.lang.String r1 = "IronSource"
            java.lang.String r3 = "Exception while loading events: "
            android.util.Log.e(r1, r3, r13)     // Catch: java.lang.Throwable -> L93
            if (r2 == 0) goto L86
            boolean r13 = r2.isClosed()     // Catch: java.lang.Throwable -> Lab
            if (r13 != 0) goto L86
            r2.close()     // Catch: java.lang.Throwable -> Lab
        L86:
            if (r11 == 0) goto L91
            boolean r13 = r11.isOpen()     // Catch: java.lang.Throwable -> Lab
            if (r13 == 0) goto L91
        L8e:
            r11.close()     // Catch: java.lang.Throwable -> Lab
        L91:
            monitor-exit(r12)
            return r0
        L93:
            r13 = move-exception
            if (r2 == 0) goto L9f
            boolean r0 = r2.isClosed()     // Catch: java.lang.Throwable -> Lab
            if (r0 != 0) goto L9f
            r2.close()     // Catch: java.lang.Throwable -> Lab
        L9f:
            if (r11 == 0) goto Laa
            boolean r0 = r11.isOpen()     // Catch: java.lang.Throwable -> Lab
            if (r0 == 0) goto Laa
            r11.close()     // Catch: java.lang.Throwable -> Lab
        Laa:
            throw r13     // Catch: java.lang.Throwable -> Lab
        Lab:
            r13 = move-exception
            monitor-exit(r12)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.a3.a(java.lang.String):java.util.ArrayList");
    }

    @Override // com.json.i5
    public synchronized void a(List<a4> list, String str) {
        SQLiteDatabase sQLiteDatabaseB;
        if (list != null) {
            if (!list.isEmpty()) {
                SQLiteDatabase sQLiteDatabase = null;
                try {
                    sQLiteDatabaseB = b(true);
                    try {
                        Iterator<a4> it = list.iterator();
                        while (it.hasNext()) {
                            ContentValues contentValuesA = a(it.next(), str);
                            if (sQLiteDatabaseB != null && contentValuesA != null) {
                                sQLiteDatabaseB.insert(b4.M, null, contentValuesA);
                            }
                        }
                    } catch (Throwable th) {
                        th = th;
                        sQLiteDatabase = sQLiteDatabaseB;
                        try {
                            Log.e(IronSourceConstants.IRONSOURCE_CONFIG_NAME, "Exception while saving events: ", th);
                            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                                sQLiteDatabaseB = sQLiteDatabase;
                            }
                        } catch (Throwable th2) {
                            if (sQLiteDatabase != null && sQLiteDatabase.isOpen()) {
                                sQLiteDatabase.close();
                            }
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
                if (sQLiteDatabaseB != null && sQLiteDatabaseB.isOpen()) {
                    sQLiteDatabaseB.close();
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002a A[Catch: all -> 0x003c, DONT_GENERATE, PHI: r0
      0x002a: PHI (r0v2 android.database.sqlite.SQLiteDatabase) = (r0v1 android.database.sqlite.SQLiteDatabase), (r0v3 android.database.sqlite.SQLiteDatabase) binds: [B:13:0x0028, B:7:0x0017] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0002, B:6:0x0013, B:14:0x002a, B:12:0x0024, B:19:0x0032, B:21:0x0038, B:22:0x003b, B:5:0x000a, B:10:0x001b), top: B:28:0x0002, inners: #0, #2 }] */
    @Override // com.json.i5
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void b(java.lang.String r6) {
        /*
            r5 = this;
            monitor-enter(r5)
            r0 = 0
            java.lang.String r1 = "type = ?"
            r2 = 1
            java.lang.String[] r3 = new java.lang.String[r2]     // Catch: java.lang.Throwable -> L3c
            r4 = 0
            r3[r4] = r6     // Catch: java.lang.Throwable -> L3c
            android.database.sqlite.SQLiteDatabase r0 = r5.b(r2)     // Catch: java.lang.Throwable -> L1a
            java.lang.String r6 = "events"
            r0.delete(r6, r1, r3)     // Catch: java.lang.Throwable -> L1a
            boolean r6 = r0.isOpen()     // Catch: java.lang.Throwable -> L3c
            if (r6 == 0) goto L2d
            goto L2a
        L1a:
            r6 = move-exception
            java.lang.String r1 = "IronSource"
            java.lang.String r2 = "Exception while clearing events: "
            android.util.Log.e(r1, r2, r6)     // Catch: java.lang.Throwable -> L2f
            if (r0 == 0) goto L2d
            boolean r6 = r0.isOpen()     // Catch: java.lang.Throwable -> L3c
            if (r6 == 0) goto L2d
        L2a:
            r0.close()     // Catch: java.lang.Throwable -> L3c
        L2d:
            monitor-exit(r5)
            return
        L2f:
            r6 = move-exception
            if (r0 == 0) goto L3b
            boolean r1 = r0.isOpen()     // Catch: java.lang.Throwable -> L3c
            if (r1 == 0) goto L3b
            r0.close()     // Catch: java.lang.Throwable -> L3c
        L3b:
            throw r6     // Catch: java.lang.Throwable -> L3c
        L3c:
            r6 = move-exception
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.a3.b(java.lang.String):void");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE events (_id INTEGER PRIMARY KEY,eventid INTEGER,timestamp INTEGER,type TEXT,data TEXT )");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS events");
        onCreate(sQLiteDatabase);
    }
}
