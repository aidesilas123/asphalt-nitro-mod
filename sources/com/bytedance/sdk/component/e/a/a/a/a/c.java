package com.bytedance.sdk.component.e.a.a.a.a;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: DBInsertMemRepo.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class c {
    private final Context a;
    protected final List<com.bytedance.sdk.component.e.a.d.a> b = new ArrayList();
    private boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Runnable f998d = new Runnable() { // from class: com.bytedance.sdk.component.e.a.a.a.a.c.1
        @Override // java.lang.Runnable
        public void run() {
            synchronized (c.this) {
                if (c.this.b.isEmpty()) {
                    c.this.c = false;
                    return;
                }
                ArrayList arrayList = new ArrayList(c.this.b);
                c.this.b.clear();
                c.this.c = false;
                c.this.d(arrayList);
            }
        }
    };

    public c(Context context) {
        this.a = context;
    }

    private void a() {
        if (this.c) {
            return;
        }
        com.bytedance.sdk.component.e.a.g.a.a().postDelayed(this.f998d, com.bytedance.sdk.component.e.a.g.a.b());
        this.c = true;
    }

    public synchronized void a(com.bytedance.sdk.component.e.a.d.a aVar) {
        if (aVar.g() != null && !TextUtils.isEmpty(aVar.c())) {
            this.b.add(aVar);
            a();
        }
    }

    public abstract String b();

    protected void c(List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            Iterator<com.bytedance.sdk.component.e.a.d.a> it = this.b.iterator();
            while (it.hasNext()) {
                com.bytedance.sdk.component.e.a.d.a next = it.next();
                if (next != null) {
                    String strC = next.c();
                    if (!TextUtils.isEmpty(strC) && list.contains(strC)) {
                        it.remove();
                    }
                }
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.e.a.c.c.b("DBInsertMemRepo", b() + "deleteMemList: " + th.getMessage());
        }
    }

    public void d(List<com.bytedance.sdk.component.e.a.d.a> list) {
        com.bytedance.sdk.component.e.a.a.a.c.a(e(), b(), list);
    }

    public Context e() {
        return this.a;
    }
}
