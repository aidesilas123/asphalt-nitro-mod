package com.bytedance.sdk.component.adexpress.a.b;

import android.content.ContentValues;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.Log;
import android.util.LruCache;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: compiled from: TmplDbHelper.java */
/* JADX INFO: loaded from: classes.dex */
public class d {
    public static int a = 20;
    private static volatile d b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f651d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LruCache<String, com.bytedance.sdk.component.adexpress.a.c.b> f652e = new LruCache<String, com.bytedance.sdk.component.adexpress.a.c.b>(a) { // from class: com.bytedance.sdk.component.adexpress.a.b.d.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.util.LruCache
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int sizeOf(String str, com.bytedance.sdk.component.adexpress.a.c.b bVar) {
            return 1;
        }
    };
    private Set<String> c = Collections.synchronizedSet(new HashSet());

    private d() {
    }

    public static d a() {
        if (b == null) {
            synchronized (d.class) {
                if (b == null) {
                    b = new d();
                }
            }
        }
        return b;
    }

    public static void a(int i) {
        a = i;
    }

    public static String c() {
        return "CREATE TABLE IF NOT EXISTS template_diff_new (_id INTEGER PRIMARY KEY AUTOINCREMENT,rit TEXT ,id TEXT UNIQUE,md5 TEXT ,url TEXT , data TEXT , version TEXT , update_time TEXT)";
    }

    private void c(String str) {
        LruCache<String, com.bytedance.sdk.component.adexpress.a.c.b> lruCache;
        if (TextUtils.isEmpty(str) || (lruCache = this.f652e) == null || lruCache.size() <= 0) {
            return;
        }
        synchronized (this.f651d) {
            this.f652e.remove(str);
        }
    }

    com.bytedance.sdk.component.adexpress.a.c.b a(String str) {
        com.bytedance.sdk.component.adexpress.a.c.b bVar;
        com.bytedance.sdk.component.adexpress.a.c.b bVarA;
        if (TextUtils.isEmpty(str) || com.bytedance.sdk.component.adexpress.a.a.a.a().b() == null) {
            return null;
        }
        synchronized (this.f651d) {
            bVar = this.f652e.get(String.valueOf(str));
        }
        if (bVar != null) {
            return bVar;
        }
        Cursor cursorA = com.bytedance.sdk.component.adexpress.a.a.a.a().b().a("template_diff_new", null, "id=?", new String[]{str}, null, null, null);
        if (cursorA != null) {
            try {
                if (cursorA.moveToFirst()) {
                    do {
                        String string = cursorA.getString(cursorA.getColumnIndex("rit"));
                        String string2 = cursorA.getString(cursorA.getColumnIndex("id"));
                        String string3 = cursorA.getString(cursorA.getColumnIndex("md5"));
                        String string4 = cursorA.getString(cursorA.getColumnIndex("url"));
                        String string5 = cursorA.getString(cursorA.getColumnIndex("data"));
                        bVarA = new com.bytedance.sdk.component.adexpress.a.c.b().a(string).b(string2).c(string3).d(string4).e(string5).f(cursorA.getString(cursorA.getColumnIndex("version"))).a(Long.valueOf(cursorA.getLong(cursorA.getColumnIndex("update_time"))));
                        synchronized (this.f651d) {
                            this.f652e.put(string2, bVarA);
                        }
                        this.c.add(string2);
                    } while (cursorA.moveToNext());
                    return bVarA;
                }
            } finally {
                try {
                } finally {
                }
            }
        }
        return null;
    }

    void a(com.bytedance.sdk.component.adexpress.a.c.b bVar) {
        if (bVar == null || com.bytedance.sdk.component.adexpress.a.a.a.a().b() == null || TextUtils.isEmpty(bVar.b())) {
            return;
        }
        Cursor cursorA = com.bytedance.sdk.component.adexpress.a.a.a.a().b().a("template_diff_new", null, "id=?", new String[]{bVar.b()}, null, null, null);
        boolean z = cursorA != null && cursorA.getCount() > 0;
        if (cursorA != null) {
            try {
                cursorA.close();
            } catch (Throwable unused) {
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("rit", bVar.a());
        contentValues.put("id", bVar.b());
        contentValues.put("md5", bVar.c());
        contentValues.put("url", bVar.d());
        contentValues.put("data", bVar.e());
        contentValues.put("version", bVar.f());
        contentValues.put("update_time", bVar.g());
        if (z) {
            com.bytedance.sdk.component.adexpress.a.a.a.a().b().a("template_diff_new", contentValues, "id=?", new String[]{bVar.b()});
        } else {
            com.bytedance.sdk.component.adexpress.a.a.a.a().b().a("template_diff_new", contentValues);
        }
        synchronized (this.f651d) {
            this.f652e.put(bVar.b(), bVar);
        }
        this.c.add(bVar.b());
    }

    void a(Set<String> set) {
        if (set == null || set.isEmpty() || com.bytedance.sdk.component.adexpress.a.a.a.a().b() == null) {
            return;
        }
        String[] strArr = (String[]) set.toArray(new String[set.size()]);
        if (strArr.length > 0) {
            for (int i = 0; i < strArr.length; i++) {
                c(strArr[i]);
                com.bytedance.sdk.component.adexpress.a.a.a.a().b().a("template_diff_new", "id=?", new String[]{strArr[i]});
            }
        }
    }

    List<com.bytedance.sdk.component.adexpress.a.c.b> b() {
        if (com.bytedance.sdk.component.adexpress.a.a.a.a().b() == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Cursor cursorA = com.bytedance.sdk.component.adexpress.a.a.a.a().b().a("template_diff_new", null, null, null, null, null, null);
        if (cursorA != null) {
            while (cursorA.moveToNext()) {
                try {
                    String string = cursorA.getString(cursorA.getColumnIndex("rit"));
                    String string2 = cursorA.getString(cursorA.getColumnIndex("id"));
                    String string3 = cursorA.getString(cursorA.getColumnIndex("md5"));
                    String string4 = cursorA.getString(cursorA.getColumnIndex("url"));
                    String string5 = cursorA.getString(cursorA.getColumnIndex("data"));
                    arrayList.add(new com.bytedance.sdk.component.adexpress.a.c.b().a(string).b(string2).c(string3).d(string4).e(string5).f(cursorA.getString(cursorA.getColumnIndex("version"))).a(Long.valueOf(cursorA.getLong(cursorA.getColumnIndex("update_time")))));
                    synchronized (this.f651d) {
                        this.f652e.put(string2, (com.bytedance.sdk.component.adexpress.a.c.b) arrayList.get(arrayList.size() - 1));
                    }
                    this.c.add(string2);
                } finally {
                    try {
                        return arrayList;
                    } finally {
                    }
                }
            }
        }
        return arrayList;
    }

    Set<String> b(String str) {
        if (!TextUtils.isEmpty(str) && com.bytedance.sdk.component.adexpress.a.a.a.a().b() != null) {
            HashSet hashSet = new HashSet();
            Cursor cursorA = com.bytedance.sdk.component.adexpress.a.a.a.a().b().a("template_diff_new", null, "rit=?", new String[]{str}, null, null, null);
            try {
                if (cursorA != null) {
                    try {
                        if (cursorA.moveToFirst()) {
                            do {
                                hashSet.add(cursorA.getString(cursorA.getColumnIndex("id")));
                            } while (cursorA.moveToNext());
                            return hashSet;
                        }
                    } catch (Exception e2) {
                        Log.e("TmplDbHelper", "", e2);
                    }
                }
            } finally {
                cursorA.close();
            }
        }
        return null;
    }
}
