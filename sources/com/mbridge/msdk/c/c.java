package com.mbridge.msdk.c;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: compiled from: MBDNSManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class c {
    public int a;
    private HashMap<String, d> b;

    /* JADX INFO: compiled from: MBDNSManager.java */
    static class a {
        private static final c a = new c();
    }

    private c() {
        this.b = new HashMap<>();
        this.a = 6;
    }

    public static c a() {
        return a.a;
    }

    public final void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (this.b == null) {
                this.b = new HashMap<>();
            }
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                String string = jSONObject.getString(next);
                d dVar = new d();
                dVar.a(next);
                dVar.b(string);
                this.b.put(next, dVar);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final String b(String str) {
        HashMap<String, d> map;
        d dVar;
        if (TextUtils.isEmpty(str) || (map = this.b) == null || !map.containsKey(str) || (dVar = this.b.get(str)) == null || dVar.b() >= this.a) {
            return "";
        }
        String strA = dVar.a();
        if (!TextUtils.isEmpty(strA)) {
            dVar.a(true);
        }
        return strA;
    }

    public final void c(String str) {
        HashMap<String, d> map;
        d dVar;
        if (TextUtils.isEmpty(str) || (map = this.b) == null || !map.containsKey(str) || (dVar = this.b.get(str)) == null || dVar.b() >= this.a) {
            return;
        }
        dVar.a(dVar.b() + 1);
    }

    public final void d(String str) {
        HashMap<String, d> map;
        d dVar;
        if (TextUtils.isEmpty(str) || (map = this.b) == null || !map.containsKey(str) || (dVar = this.b.get(str)) == null || dVar.b() >= this.a) {
            return;
        }
        dVar.a(0);
    }

    public final int e(String str) {
        HashMap<String, d> map;
        d dVar;
        if (TextUtils.isEmpty(str) || (map = this.b) == null || !map.containsKey(str) || (dVar = this.b.get(str)) == null) {
            return 0;
        }
        int i = dVar.c() ? 1 : dVar.b() >= this.a ? 2 : 0;
        dVar.a(false);
        return i;
    }
}
