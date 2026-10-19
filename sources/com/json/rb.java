package com.json;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class rb {
    private Map<String, Integer> a = new HashMap();
    private Map<String, Integer> b = new HashMap();

    public interface a {
        int b();

        String c();
    }

    public rb(List<a> list) {
        for (a aVar : list) {
            this.a.put(aVar.c(), 0);
            this.b.put(aVar.c(), Integer.valueOf(aVar.b()));
        }
    }

    public void a(a aVar) {
        synchronized (this) {
            String strC = aVar.c();
            if (this.a.containsKey(strC)) {
                Map<String, Integer> map = this.a;
                map.put(strC, Integer.valueOf(map.get(strC).intValue() + 1));
            }
        }
    }

    public boolean a() {
        for (String str : this.b.keySet()) {
            if (this.a.get(str).intValue() < this.b.get(str).intValue()) {
                return false;
            }
        }
        return true;
    }

    public boolean b(a aVar) {
        synchronized (this) {
            String strC = aVar.c();
            if (this.a.containsKey(strC)) {
                return this.a.get(strC).intValue() >= aVar.b();
            }
            return false;
        }
    }
}
