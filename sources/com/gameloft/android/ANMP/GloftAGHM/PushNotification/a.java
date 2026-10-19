package com.gameloft.android.ANMP.GloftAGHM.PushNotification;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import androidx.core.app.NotificationCompat;

/* JADX INFO: compiled from: PushDBHandler.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    private SQLiteDatabase a;
    private b b;
    private String[] c = {"_id", "pn_alarm_id", "creation_time", "schedule_time", "message_group", "type", "message_content"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String[] f2853d = {"_id", NotificationCompat.CATEGORY_TRANSPORT, "registration_id"};

    public a(Context context) {
        this.b = new b(context);
    }

    public void a(ContentValues contentValues) {
        try {
            long jInsert = this.a.insert("Message", null, contentValues);
            Cursor cursorQuery = this.a.query("Message", this.c, "_id = " + jInsert, null, null, null, null);
            cursorQuery.moveToFirst();
            cursorQuery.close();
        } catch (Exception unused) {
        }
    }

    public void b(String str, String str2) {
        try {
            this.a.delete("Message", str + "=?", new String[]{str2});
        } catch (Exception unused) {
        }
    }

    public void c() {
        try {
            this.a = this.b.getWritableDatabase();
        } catch (SQLException unused) {
        }
    }

    public void d(ContentValues contentValues) {
        try {
            this.a.replace("Endpoint", null, contentValues);
        } catch (Exception unused) {
        }
    }
}
