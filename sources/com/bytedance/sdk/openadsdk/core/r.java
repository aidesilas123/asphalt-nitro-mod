package com.bytedance.sdk.openadsdk.core;

import android.text.TextUtils;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: RitInfo.java */
/* JADX INFO: loaded from: classes2.dex */
public class r {
    public static ConcurrentHashMap<Integer, r> a = new ConcurrentHashMap<>();
    private String b = "";
    private String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1664d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1665e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f1666f;

    public static void b(com.bytedance.sdk.openadsdk.core.model.q qVar) {
        if (qVar == null || TextUtils.isEmpty(qVar.ac())) {
            return;
        }
        Integer numValueOf = Integer.valueOf(qVar.aZ());
        if (numValueOf.intValue() == 0) {
            return;
        }
        if (a == null) {
            a = new ConcurrentHashMap<>();
        }
        r rVar = a.containsKey(numValueOf) ? a.get(numValueOf) : null;
        if (rVar == null) {
            rVar = new r();
        }
        String strBc = qVar.bc();
        if (TextUtils.isEmpty(strBc) || !strBc.equals(rVar.a())) {
            rVar.f();
            rVar.a(qVar);
            a.put(numValueOf, rVar);
        }
    }

    public static void c(int i) {
        r rVar;
        if (i == 0) {
            return;
        }
        if (a == null) {
            a = new ConcurrentHashMap<>();
        }
        if (!a.containsKey(Integer.valueOf(i)) || (rVar = a.get(Integer.valueOf(i))) == null) {
            return;
        }
        rVar.b(1);
    }

    public static void c(com.bytedance.sdk.openadsdk.core.model.q qVar) {
        r rVar;
        if (qVar == null) {
            return;
        }
        Integer numValueOf = Integer.valueOf(qVar.aZ());
        if (numValueOf.intValue() == 0) {
            return;
        }
        if (a == null) {
            a = new ConcurrentHashMap<>();
        }
        if (!a.containsKey(numValueOf) || (rVar = a.get(numValueOf)) == null) {
            return;
        }
        rVar.a(1);
    }

    private void f() {
        this.b = "";
        this.c = "";
        this.f1664d = 0;
        this.f1665e = 0;
    }

    public String a() {
        return this.f1666f;
    }

    public void a(int i) {
        this.f1664d = i;
    }

    public void a(com.bytedance.sdk.openadsdk.core.model.q qVar) {
        if (qVar != null) {
            String strBc = qVar.bc();
            if (!TextUtils.isEmpty(strBc)) {
                this.f1666f = strBc;
            }
            String strP = qVar.P();
            if (TextUtils.isEmpty(strP) && qVar.at()) {
                strP = qVar.au().i();
            }
            if (!TextUtils.isEmpty(strP)) {
                String[] strArrSplit = strP.split("/");
                if (strArrSplit.length >= 3) {
                    this.b = strArrSplit[2];
                }
            }
            if (qVar.aa() == null || TextUtils.isEmpty(qVar.aa().c())) {
                return;
            }
            this.c = qVar.aa().c();
        }
    }

    public String b() {
        return this.b;
    }

    public void b(int i) {
        this.f1665e = i;
    }

    public String c() {
        return this.c;
    }

    public int d() {
        return this.f1664d;
    }

    public int e() {
        return this.f1665e;
    }
}
