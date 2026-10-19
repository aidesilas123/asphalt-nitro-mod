package com.apm.insight.e.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.apm.insight.l.q;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class b extends a<com.apm.insight.e.a.a> {
    public b() {
        super("duplicatelog");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.apm.insight.e.b.a
    public ContentValues a(com.apm.insight.e.a.a aVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("path", aVar.a);
        contentValues.put("insert_time", Long.valueOf(aVar.b));
        return contentValues;
    }

    @Override // com.apm.insight.e.b.a
    protected HashMap<String, String> a() {
        HashMap<String, String> map = new HashMap<>();
        map.put("path", "TEXT");
        map.put("insert_time", "INTEGER");
        map.put(IronSourceConstants.EVENTS_EXT1, "TEXT");
        map.put("ext2", "TEXT");
        return map;
    }

    @Override // com.apm.insight.e.b.a
    public void a(SQLiteDatabase sQLiteDatabase, com.apm.insight.e.a.a aVar) {
        if (aVar == null || a(sQLiteDatabase, aVar.a)) {
            return;
        }
        super.a(sQLiteDatabase, aVar);
        try {
            sQLiteDatabase.execSQL("delete from " + this.b + " where _id in (select _id from " + this.b + " order by insert_time desc limit 1000 offset 500)");
        } catch (Exception e2) {
            q.b((Throwable) e2);
        }
    }

    public boolean a(SQLiteDatabase sQLiteDatabase, String str) {
        int count;
        if (sQLiteDatabase == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Cursor cursorQuery = sQLiteDatabase.query(this.b, null, "path=?", new String[]{str}, null, null, null);
            count = cursorQuery.getCount();
            try {
                cursorQuery.close();
            } catch (Throwable th) {
                th = th;
                q.b(th);
            }
        } catch (Throwable th2) {
            th = th2;
            count = 0;
        }
        return count > 0;
    }
}
