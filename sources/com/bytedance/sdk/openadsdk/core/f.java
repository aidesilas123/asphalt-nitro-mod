package com.bytedance.sdk.openadsdk.core;

import android.content.ContentValues;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: DBHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {
    private static final Object c = new Object();
    private c a;
    private Context b;

    /* JADX INFO: compiled from: DBHelper.java */
    private class a extends SQLiteOpenHelper {
        final Context a;

        public a(Context context) {
            super(context, "ttopensdk.db", (SQLiteDatabase.CursorFactory) null, 7);
            this.a = context;
        }

        private void a(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.b.d.b());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.b.h.d());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.b.n.b());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.b.m.b());
        }

        private void a(SQLiteDatabase sQLiteDatabase, Context context) {
            com.bytedance.sdk.component.utils.l.b("DBHelper", "initDB........");
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.b.d.a());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.b.h.c());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.b.n.a());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.b.m.a());
            sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.n.b.a());
            sQLiteDatabase.execSQL(com.bytedance.sdk.component.adexpress.a.b.a.c());
        }

        private void b(SQLiteDatabase sQLiteDatabase) {
            ArrayList<String> arrayListC = c(sQLiteDatabase);
            if (arrayListC == null || arrayListC.size() <= 0) {
                return;
            }
            Iterator<String> it = arrayListC.iterator();
            while (it.hasNext()) {
                sQLiteDatabase.execSQL(String.format("DROP TABLE IF EXISTS %s ;", it.next()));
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x003a A[PHI: r1
          0x003a: PHI (r1v3 android.database.Cursor) = (r1v2 android.database.Cursor), (r1v4 android.database.Cursor) binds: [B:20:0x0038, B:13:0x002d] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private java.util.ArrayList<java.lang.String> c(android.database.sqlite.SQLiteDatabase r4) {
            /*
                r3 = this;
                java.util.ArrayList r0 = new java.util.ArrayList
                r0.<init>()
                r1 = 0
                java.lang.String r2 = "select name from sqlite_master where type='table' order by name"
                android.database.Cursor r1 = r4.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L37
                if (r1 == 0) goto L2d
            Le:
                boolean r4 = r1.moveToNext()     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L37
                if (r4 == 0) goto L2d
                r4 = 0
                java.lang.String r4 = r1.getString(r4)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L37
                java.lang.String r2 = "android_metadata"
                boolean r2 = r4.equals(r2)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L37
                if (r2 != 0) goto Le
                java.lang.String r2 = "sqlite_sequence"
                boolean r2 = r4.equals(r2)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L37
                if (r2 != 0) goto Le
                r0.add(r4)     // Catch: java.lang.Throwable -> L30 java.lang.Exception -> L37
                goto Le
            L2d:
                if (r1 == 0) goto L3d
                goto L3a
            L30:
                r4 = move-exception
                if (r1 == 0) goto L36
                r1.close()
            L36:
                throw r4
            L37:
                if (r1 == 0) goto L3d
            L3a:
                r1.close()
            L3d:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.f.a.c(android.database.sqlite.SQLiteDatabase):java.util.ArrayList");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            try {
                a(sQLiteDatabase, this.a);
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.l.e("DBHelper", th.getMessage());
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (i > i2) {
                try {
                    b(sQLiteDatabase);
                    a(sQLiteDatabase, f.this.b);
                    com.bytedance.sdk.component.utils.l.b("DBHelper", "onUpgrade...Reverse installation. Database reset and create table.....");
                } catch (Throwable th) {
                    com.bytedance.sdk.component.utils.l.d(th.getMessage());
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            try {
                com.bytedance.sdk.component.utils.l.b("DBHelper", "onUpgrade....Database version upgrade.....old:" + i + ",new:" + i2);
                if (i > i2) {
                    b(sQLiteDatabase);
                    a(sQLiteDatabase, f.this.b);
                    com.bytedance.sdk.component.utils.l.b("DBHelper", "onUpgrade...Reverse installation. Database reset and create table.....");
                } else {
                    a(sQLiteDatabase, f.this.b);
                }
                switch (i) {
                    case 1:
                        com.bytedance.sdk.component.utils.l.b("DBHelper", "onUpgrade.....perform table creation.....");
                        a(sQLiteDatabase);
                        break;
                    case 2:
                        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS 'ad_video_info';");
                        a(sQLiteDatabase);
                        break;
                    case 3:
                        sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.b.n.a());
                        a(sQLiteDatabase);
                        break;
                    case 4:
                        sQLiteDatabase.execSQL(com.bytedance.sdk.component.adexpress.a.b.a.c());
                        a(sQLiteDatabase);
                        break;
                    case 5:
                        sQLiteDatabase.execSQL(com.bytedance.sdk.openadsdk.b.m.a());
                        a(sQLiteDatabase);
                        break;
                    case 6:
                        a(sQLiteDatabase);
                        break;
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: compiled from: DBHelper.java */
    private class b extends AbstractCursor {
        private b() {
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String[] getColumnNames() {
            return new String[0];
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getCount() {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public double getDouble(int i) {
            return 0.0d;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public float getFloat(int i) {
            return 0.0f;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public int getInt(int i) {
            return 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public long getLong(int i) {
            return 0L;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public short getShort(int i) {
            return (short) 0;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public String getString(int i) {
            return null;
        }

        @Override // android.database.AbstractCursor, android.database.Cursor
        public boolean isNull(int i) {
            return true;
        }
    }

    /* JADX INFO: compiled from: DBHelper.java */
    public class c {
        private SQLiteDatabase b = null;

        public c() {
        }

        private synchronized void e() {
            try {
                synchronized (f.c) {
                    SQLiteDatabase sQLiteDatabase = this.b;
                    if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
                        f fVar = f.this;
                        SQLiteDatabase writableDatabase = fVar.new a(fVar.c()).getWritableDatabase();
                        this.b = writableDatabase;
                        writableDatabase.setLockingEnabled(false);
                    }
                }
            } finally {
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x000d  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private synchronized boolean f() {
            /*
                r1 = this;
                monitor-enter(r1)
                android.database.sqlite.SQLiteDatabase r0 = r1.b     // Catch: java.lang.Throwable -> L10
                if (r0 == 0) goto Ld
                boolean r0 = r0.inTransaction()     // Catch: java.lang.Throwable -> L10
                if (r0 == 0) goto Ld
                r0 = 1
                goto Le
            Ld:
                r0 = 0
            Le:
                monitor-exit(r1)
                return r0
            L10:
                r0 = move-exception
                monitor-exit(r1)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.f.c.f():boolean");
        }

        public synchronized int a(String str, ContentValues contentValues, String str2, String[] strArr) {
            int iUpdate;
            try {
                e();
                iUpdate = this.b.update(str, contentValues, str2, strArr);
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.l.e("DBHelper", e2.getMessage());
                if (f()) {
                    throw e2;
                }
                iUpdate = 0;
            }
            return iUpdate;
        }

        public synchronized int a(String str, String str2, String[] strArr) {
            int iDelete;
            try {
                e();
                iDelete = this.b.delete(str, str2, strArr);
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.l.e("DBHelper", e2.getMessage());
                if (f()) {
                    throw e2;
                }
                iDelete = 0;
            }
            return iDelete;
        }

        public synchronized long a(String str, String str2, ContentValues contentValues) {
            long jReplace;
            try {
                e();
                jReplace = this.b.replace(str, str2, contentValues);
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.l.e("DBHelper", e2.getMessage());
                if (f()) {
                    throw e2;
                }
                jReplace = -1;
            }
            return jReplace;
        }

        public synchronized Cursor a(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
            Cursor cursorQuery;
            try {
                e();
                cursorQuery = this.b.query(str, strArr, str2, strArr2, str3, str4, str5);
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.l.e("DBHelper", th.getMessage());
                b bVar = new b();
                if (f()) {
                    throw th;
                }
                cursorQuery = bVar;
            }
            return cursorQuery;
        }

        public SQLiteDatabase a() {
            e();
            return this.b;
        }

        public synchronized void a(String str) throws SQLException {
            try {
                e();
                this.b.execSQL(str);
            } catch (Throwable th) {
                if (f()) {
                    throw th;
                }
            }
        }

        public synchronized void b() {
            e();
            SQLiteDatabase sQLiteDatabase = this.b;
            if (sQLiteDatabase == null) {
                return;
            }
            sQLiteDatabase.beginTransaction();
        }

        public synchronized void c() {
            e();
            SQLiteDatabase sQLiteDatabase = this.b;
            if (sQLiteDatabase == null) {
                return;
            }
            sQLiteDatabase.setTransactionSuccessful();
        }

        public synchronized void d() {
            e();
            SQLiteDatabase sQLiteDatabase = this.b;
            if (sQLiteDatabase == null) {
                return;
            }
            sQLiteDatabase.endTransaction();
        }
    }

    f(Context context) {
        try {
            this.b = context == null ? o.a() : context.getApplicationContext();
            if (this.a == null) {
                this.a = new c();
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context c() {
        Context context = this.b;
        return context == null ? o.a() : context;
    }

    public c a() {
        return this.a;
    }
}
