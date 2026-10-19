package com.bykv.vk.openvk.component.video.a.b.b;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import android.text.TextUtils;
import android.util.SparseArray;
import com.bytedance.sdk.component.g.i;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: VideoProxyDB.java */
/* JADX INFO: loaded from: classes.dex */
public class c {
    private static volatile c b;
    private final SparseArray<Map<String, a>> a;
    private final d c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Executor f421d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile SQLiteStatement f422e;

    private c(Context context) {
        SparseArray<Map<String, a>> sparseArray = new SparseArray<>(2);
        this.a = sparseArray;
        this.f421d = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new i(5, "video_proxy_db"));
        this.c = new d(context.getApplicationContext());
        sparseArray.put(0, new ConcurrentHashMap());
        sparseArray.put(1, new ConcurrentHashMap());
    }

    public static c a(Context context) {
        if (b == null) {
            synchronized (c.class) {
                if (b == null) {
                    b = new c(context);
                }
            }
        }
        return b;
    }

    private String b(int i) {
        if (i <= 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(i << 1);
        sb.append("?");
        for (int i2 = 1; i2 < i; i2++) {
            sb.append(",?");
        }
        return sb.toString();
    }

    public a a(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Map<String, a> map = this.a.get(i);
        a aVar = map == null ? null : map.get(str);
        if (aVar != null) {
            return aVar;
        }
        try {
            Cursor cursorQuery = this.c.getReadableDatabase().query("video_http_header_t", null, "key=? AND flag=?", new String[]{str, String.valueOf(i)}, null, null, null, "1");
            if (cursorQuery != null) {
                if (cursorQuery.getCount() > 0 && cursorQuery.moveToNext()) {
                    aVar = new a(cursorQuery.getString(cursorQuery.getColumnIndex("key")), cursorQuery.getString(cursorQuery.getColumnIndex("mime")), cursorQuery.getInt(cursorQuery.getColumnIndex("contentLength")), i, cursorQuery.getString(cursorQuery.getColumnIndex("extra")));
                }
                cursorQuery.close();
            }
            if (aVar != null && map != null) {
                map.put(str, aVar);
            }
            return aVar;
        } catch (Throwable unused) {
            return null;
        }
    }

    public void a(final int i) {
        Map<String, a> map = this.a.get(i);
        if (map != null) {
            map.clear();
        }
        this.f421d.execute(new Runnable() { // from class: com.bykv.vk.openvk.component.video.a.b.b.c.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    c.this.c.getWritableDatabase().delete("video_http_header_t", "flag=?", new String[]{String.valueOf(i)});
                } catch (Throwable unused) {
                }
            }
        });
    }

    public void a(final a aVar) {
        if (aVar != null) {
            Map<String, a> map = this.a.get(aVar.f419d);
            if (map != null) {
                map.put(aVar.a, aVar);
            }
            this.f421d.execute(new Runnable() { // from class: com.bykv.vk.openvk.component.video.a.b.b.c.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (c.this.f422e == null) {
                            c cVar = c.this;
                            cVar.f422e = cVar.c.getWritableDatabase().compileStatement("INSERT INTO video_http_header_t (key,mime,contentLength,flag,extra) VALUES(?,?,?,?,?)");
                        } else {
                            c.this.f422e.clearBindings();
                        }
                        c.this.f422e.bindString(1, aVar.a);
                        c.this.f422e.bindString(2, aVar.b);
                        c.this.f422e.bindLong(3, aVar.c);
                        c.this.f422e.bindLong(4, aVar.f419d);
                        c.this.f422e.bindString(5, aVar.f420e);
                        c.this.f422e.executeInsert();
                    } catch (Throwable unused) {
                    }
                }
            });
        }
    }

    public void a(Collection<String> collection, int i) {
        if (collection == null || collection.isEmpty()) {
            return;
        }
        int size = collection.size() + 1;
        String[] strArr = new String[size];
        int i2 = -1;
        Map<String, a> map = this.a.get(i);
        for (String str : collection) {
            if (map != null) {
                map.remove(str);
            }
            i2++;
            strArr[i2] = str;
        }
        strArr[i2 + 1] = String.valueOf(i);
        try {
            this.c.getWritableDatabase().delete("video_http_header_t", "key IN(" + b(size) + ") AND flag=?", strArr);
        } catch (Throwable unused) {
        }
    }
}
