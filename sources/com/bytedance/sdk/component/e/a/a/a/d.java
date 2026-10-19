package com.bytedance.sdk.component.e.a.a.a;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.bytedance.sdk.component.e.a.i;
import com.mbridge.msdk.foundation.download.database.IDatabaseHelper;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: DatabaseHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends SQLiteOpenHelper {
    final Context a;

    public d(Context context) {
        super(context, "ttadlog.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.a = context;
    }

    private void a(SQLiteDatabase sQLiteDatabase) {
        com.bytedance.sdk.component.e.a.c.c.a(IDatabaseHelper.TAG, "initDB........");
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.e.a.a.a.a.a.b(i.g().d().b()));
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.e.a.a.a.a.d.c(i.g().d().a()));
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.e.a.a.a.a.g.c(i.g().d().d()));
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.e.a.a.a.a.f.a(i.g().d().e()));
        sQLiteDatabase.execSQL(com.bytedance.sdk.component.e.a.f.f.b());
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

    private ArrayList<String> c(SQLiteDatabase sQLiteDatabase) {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery("select name from sqlite_master where type='table' order by name", null);
            if (cursorRawQuery != null) {
                while (cursorRawQuery.moveToNext()) {
                    String string = cursorRawQuery.getString(0);
                    if (!string.equals("android_metadata") && !string.equals("sqlite_sequence")) {
                        arrayList.add(string);
                    }
                }
                cursorRawQuery.close();
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            a(sQLiteDatabase);
        } catch (Throwable unused) {
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        try {
            com.bytedance.sdk.component.e.a.c.c.a(IDatabaseHelper.TAG, "onUpgrade....Database version upgrade.....old:" + i + ",new:" + i2);
            if (i > i2) {
                b(sQLiteDatabase);
                a(sQLiteDatabase);
                com.bytedance.sdk.component.e.a.c.c.a(IDatabaseHelper.TAG, "onUpgrade...Reverse installation Database reset - create table.....");
            } else {
                a(sQLiteDatabase);
            }
        } catch (Throwable unused) {
        }
    }
}
