package com.gameloft.android.ANMP.GloftAGHM;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* JADX INFO: compiled from: KeyDatabase.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends SQLiteOpenHelper {
    public a(Context context) {
        super(context, "gameloft_sharing", (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table glshare (key text primary key, value text not null);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS glshare");
        onCreate(sQLiteDatabase);
    }
}
