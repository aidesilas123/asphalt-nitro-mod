package com.bytedance.sdk.component.e.a.a.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.bytedance.sdk.component.e.a.i;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: compiled from: DBHelper.java */
/* JADX INFO: loaded from: classes2.dex */
class b {
    private C0116b a;
    private Context b;

    /* JADX INFO: compiled from: DBHelper.java */
    private class a extends AbstractCursor {
        private a() {
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

    /* JADX INFO: renamed from: com.bytedance.sdk.component.e.a.a.a.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DBHelper.java */
    public class C0116b {
        private volatile SQLiteDatabase b = null;

        public C0116b() {
        }

        private void a() {
            boolean zB;
            try {
                if (this.b == null || !this.b.isOpen()) {
                    synchronized (this) {
                        if (this.b == null || !this.b.isOpen()) {
                            this.b = i.g().d().a(i.g().f());
                            this.b.setLockingEnabled(false);
                            com.bytedance.sdk.component.e.a.c.c.a("---------------DB CREATE  SUCCESS------------");
                        }
                    }
                }
            } finally {
                if (!zB) {
                }
            }
        }

        private boolean b() {
            SQLiteDatabase sQLiteDatabase = this.b;
            return sQLiteDatabase != null && sQLiteDatabase.inTransaction();
        }

        public int a(String str, ContentValues contentValues, String str2, String[] strArr) throws Exception {
            try {
                a();
                return this.b.update(str, contentValues, str2, strArr);
            } catch (Exception e2) {
                e2.printStackTrace();
                if (b()) {
                    throw e2;
                }
                return 0;
            }
        }

        public int a(String str, String str2, String[] strArr) throws Exception {
            try {
                a();
                return this.b.delete(str, str2, strArr);
            } catch (Exception e2) {
                e2.printStackTrace();
                if (b()) {
                    throw e2;
                }
                return 0;
            }
        }

        public long a(String str, String str2, ContentValues contentValues) throws Exception {
            try {
                a();
                return this.b.insert(str, str2, contentValues);
            } catch (Exception e2) {
                e2.printStackTrace();
                if (b()) {
                    throw e2;
                }
                return -1L;
            }
        }

        public Cursor a(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
            try {
                a();
                return this.b.query(str, strArr, str2, strArr2, str3, str4, str5);
            } catch (Throwable th) {
                th.printStackTrace();
                a aVar = new a();
                if (b()) {
                    throw th;
                }
                return aVar;
            }
        }

        public void a(String str) throws SQLException {
            boolean zB;
            try {
                a();
                this.b.execSQL(str);
            } finally {
                if (!zB) {
                }
            }
        }

        public synchronized void a(String str, String str2, List<com.bytedance.sdk.component.e.a.d.a> list) {
            SQLiteDatabase sQLiteDatabase;
            JSONObject jSONObjectG;
            try {
                try {
                    a();
                    this.b.beginTransaction();
                    ContentValues contentValues = new ContentValues();
                    for (int i = 0; i < list.size(); i++) {
                        com.bytedance.sdk.component.e.a.d.a aVar = list.get(i);
                        if (aVar != null && (jSONObjectG = aVar.g()) != null) {
                            contentValues.put("id", aVar.c());
                            String strB = i.g().p().b(jSONObjectG.toString());
                            if (!TextUtils.isEmpty(strB)) {
                                contentValues.put("value", strB);
                                contentValues.put("gen_time", Long.valueOf(System.currentTimeMillis()));
                                contentValues.put("retry", (Integer) 0);
                                contentValues.put("encrypt", (Integer) 1);
                                if (com.bytedance.sdk.component.e.a.c.a.d() && aVar.j() > 0 && (aVar.d() == 0 || aVar.d() == 3)) {
                                    contentValues.put("channel", Integer.valueOf(aVar.j()));
                                }
                                this.b.insert(str, str2, contentValues);
                            }
                            contentValues.clear();
                        }
                    }
                    this.b.setTransactionSuccessful();
                    com.bytedance.sdk.component.e.a.c.c.b("DBHelper", str + " insert list size=" + list.size());
                } catch (Exception e2) {
                    com.bytedance.sdk.component.e.a.c.c.b("DBHelper", str + " insert list error=" + list.size());
                    e2.printStackTrace();
                    if (b()) {
                        throw e2;
                    }
                    if (this.b != null) {
                        sQLiteDatabase = this.b;
                    }
                }
                if (this.b != null) {
                    sQLiteDatabase = this.b;
                    sQLiteDatabase.endTransaction();
                }
            } catch (Throwable th) {
                if (this.b != null) {
                    this.b.endTransaction();
                }
                throw th;
            }
        }
    }

    b(Context context) {
        try {
            this.b = context.getApplicationContext();
            if (this.a == null) {
                this.a = new C0116b();
            }
        } catch (Throwable unused) {
        }
    }

    public C0116b a() {
        return this.a;
    }
}
