package com.google.gson;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: JsonArray.java */
/* JADX INFO: loaded from: classes3.dex */
public final class d extends g implements Iterable<g> {
    private final ArrayList<g> a = new ArrayList<>();

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof d) && ((d) obj).a.equals(this.a));
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    @Override // java.lang.Iterable
    public Iterator<g> iterator() {
        return this.a.iterator();
    }

    public void n(g gVar) {
        if (gVar == null) {
            gVar = i.a;
        }
        this.a.add(gVar);
    }

    public void o(Number number) {
        this.a.add(number == null ? i.a : new l(number));
    }

    public void r(String str) {
        this.a.add(str == null ? i.a : new l(str));
    }
}
