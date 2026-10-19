package com.json.adqualitysdk.sdk.i;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class hm {
    private List<List<Field>> a;
    private int b;

    public hm() {
        ArrayList arrayList = new ArrayList();
        this.a = arrayList;
        this.b = -1;
        int i = (-1) + 1;
        this.b = i;
        arrayList.add(i, new ArrayList());
    }

    final void a(Field field) {
        this.a.get(this.b).add(field);
    }

    final List<List<Field>> b() {
        return this.a;
    }

    final void c() {
        int i = this.b + 1;
        this.b = i;
        this.a.add(i, new ArrayList());
    }

    final void d() {
        this.a.remove(this.b);
        this.b--;
    }

    final void e(Field field) {
        this.a.get(this.b).remove(field);
    }
}
