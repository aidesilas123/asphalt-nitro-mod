package com.gameloft.android.ANMP.GloftAGHM.PushNotification;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

/* JADX INFO: compiled from: PushSQLiteHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends SQLiteOpenHelper {
    public b(Context context) {
        super(context, "PN.db", (SQLiteDatabase.CursorFactory) null, 1);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("create table Message(_id integer primary key autoincrement, pn_alarm_id text not null, creation_time text not null, schedule_time text not null, message_group text not null, type text not null, message_content text not null);");
        sQLiteDatabase.execSQL("create table Endpoint(_id integer primary key, transport text not null, registration_id text not null);");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS Message");
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS Endpoint");
        onCreate(sQLiteDatabase);
    }
}
