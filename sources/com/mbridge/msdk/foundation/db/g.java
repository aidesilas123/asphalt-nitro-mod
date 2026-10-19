package com.mbridge.msdk.foundation.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.aa;

/* JADX INFO: compiled from: CommonAbsDBHelper.java */
/* JADX INFO: loaded from: classes4.dex */
public abstract class g {
    private a a;

    /* JADX INFO: compiled from: CommonAbsDBHelper.java */
    private class a extends SQLiteOpenHelper {
        public a(Context context, String str, int i) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, i);
            if (MBridgeConstans.DEBUG) {
                aa.a("DatabaseOpenHelper", "数据库： name :" + str + "  " + i);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onCreate(SQLiteDatabase sQLiteDatabase) {
            if (MBridgeConstans.DEBUG) {
                aa.a("DatabaseOpenHelper", "数据库创建了");
            }
            g.this.a(sQLiteDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            g.this.b(sQLiteDatabase, i, i2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            if (MBridgeConstans.DEBUG) {
                aa.a("DatabaseOpenHelper", "数据库升级了");
            }
            if (sQLiteDatabase == null || !sQLiteDatabase.isOpen() || sQLiteDatabase.isReadOnly()) {
                return;
            }
            try {
                g.this.a(sQLiteDatabase, i, i2);
            } catch (Exception unused) {
            }
        }
    }

    public g(Context context) {
        this.a = new a(context, c(), d());
    }

    public final SQLiteDatabase a() {
        return this.a.getReadableDatabase();
    }

    protected abstract void a(SQLiteDatabase sQLiteDatabase);

    protected abstract void a(SQLiteDatabase sQLiteDatabase, int i, int i2);

    public final synchronized SQLiteDatabase b() {
        SQLiteDatabase writableDatabase;
        try {
            writableDatabase = this.a.getWritableDatabase();
        } catch (Exception unused) {
            writableDatabase = null;
        }
        return writableDatabase;
    }

    protected abstract void b(SQLiteDatabase sQLiteDatabase, int i, int i2);

    protected abstract String c();

    protected abstract int d();
}
