package com.bykv.vk.openvk.component.video.a.b;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: compiled from: Urls.java */
/* JADX INFO: loaded from: classes.dex */
public class l {
    private static final Set<String> a = new HashSet();
    private static final Set<String> b = new HashSet();
    private final ArrayList<a> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f453d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f454e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f455f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f456g;

    /* JADX INFO: compiled from: Urls.java */
    public class a {
        final String a;
        int b;

        a(String str) {
            this.a = str;
        }

        void a() {
            l.a.add(this.a);
        }

        void b() {
            l.b.add(this.a);
        }

        public String toString() {
            return this.a;
        }
    }

    l(String str) {
        ArrayList<a> arrayList = new ArrayList<>(1);
        this.c = arrayList;
        arrayList.add(new a(str));
        this.f453d = 1;
        this.f456g = 1;
    }

    l(List<String> list) {
        if (list.isEmpty()) {
            throw new IllegalArgumentException("urls can't be empty");
        }
        int size = list.size();
        this.f453d = size;
        this.c = new ArrayList<>(size);
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        for (String str : list) {
            a aVar = new a(str);
            if (a.contains(str)) {
                arrayList2 = arrayList2 == null ? new ArrayList() : arrayList2;
                arrayList2.add(aVar);
            } else if (b.contains(str)) {
                arrayList = arrayList == null ? new ArrayList() : arrayList;
                arrayList.add(aVar);
            } else {
                this.c.add(aVar);
            }
        }
        if (arrayList != null) {
            this.c.addAll(arrayList);
        }
        if (arrayList2 != null) {
            this.c.addAll(arrayList2);
        }
        Integer num = e.i;
        this.f456g = (num == null || num.intValue() <= 0) ? this.f453d >= 2 ? 1 : 2 : num.intValue();
    }

    boolean a() {
        return this.f455f < this.f456g;
    }

    a b() {
        if (!a()) {
            throw new NoSuchElementException();
        }
        int i = this.f454e + 1;
        if (i >= this.f453d - 1) {
            this.f454e = -1;
            this.f455f++;
        } else {
            this.f454e = i;
        }
        a aVar = this.c.get(i);
        aVar.b = (this.f455f * this.f453d) + this.f454e;
        return aVar;
    }
}
