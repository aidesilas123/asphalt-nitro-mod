package com.bytedance.sdk.component.e.a.f;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: compiled from: TrackRetryRepertoryImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class f implements e {
    private Context a;

    public f(Context context) {
        this.a = context;
    }

    public static String b() {
        return "CREATE TABLE IF NOT EXISTS trackurl (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,url TEXT ,replaceholder INTEGER default 0, retry INTEGER default 0)";
    }

    @Override // com.bytedance.sdk.component.e.a.f.e
    public List<d> a() {
        LinkedList linkedList = new LinkedList();
        Cursor cursorA = com.bytedance.sdk.component.e.a.a.a.c.a(this.a, "trackurl", null, null, null, null, null, null);
        if (cursorA != null) {
            while (cursorA.moveToNext()) {
                try {
                    try {
                        linkedList.add(new d(cursorA.getString(cursorA.getColumnIndex("id")), cursorA.getString(cursorA.getColumnIndex("url")), cursorA.getInt(cursorA.getColumnIndex("replaceholder")) > 0, cursorA.getInt(cursorA.getColumnIndex("retry"))));
                    } catch (Throwable unused) {
                        cursorA.close();
                        cursorA = null;
                        if (0 != 0) {
                        }
                        return linkedList;
                    }
                } finally {
                    cursorA.close();
                }
            }
        }
        return linkedList;
    }

    @Override // com.bytedance.sdk.component.e.a.f.e
    public void a(d dVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", dVar.a());
        contentValues.put("url", dVar.b());
        contentValues.put("replaceholder", Integer.valueOf(dVar.c() ? 1 : 0));
        contentValues.put("retry", Integer.valueOf(dVar.d()));
        com.bytedance.sdk.component.e.a.a.a.c.a(this.a, "trackurl", contentValues);
    }

    @Override // com.bytedance.sdk.component.e.a.f.e
    public void b(d dVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", dVar.a());
        contentValues.put("url", dVar.b());
        contentValues.put("replaceholder", Integer.valueOf(dVar.c() ? 1 : 0));
        contentValues.put("retry", Integer.valueOf(dVar.d()));
        com.bytedance.sdk.component.e.a.a.a.c.a(this.a, "trackurl", contentValues, "id=?", new String[]{dVar.a()});
    }

    @Override // com.bytedance.sdk.component.e.a.f.e
    public void c(d dVar) {
        com.bytedance.sdk.component.e.a.a.a.c.a(this.a, "trackurl", "id=?", new String[]{dVar.a()});
    }
}
