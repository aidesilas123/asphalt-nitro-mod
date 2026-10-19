package com.json;

/* JADX INFO: loaded from: classes2.dex */
public class e0 extends hb {
    private static String b = "type";
    private static String c = "numOfAdUnits";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f6082d = "firstCampaignCredits";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f6083e = "totalNumberCredits";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f6084f = "productType";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f6085g;
    private String h;
    private String i;
    private String j;
    private String k;
    private boolean l;

    public e0(String str) {
        boolean z;
        super(str);
        if (a(b)) {
            k(d(b));
        }
        if (a(c)) {
            h(d(c));
            z = true;
        } else {
            z = false;
        }
        g(z);
        if (a(f6082d)) {
            g(d(f6082d));
        }
        if (a(f6083e)) {
            j(d(f6083e));
        }
        if (a(f6084f)) {
            i(d(f6084f));
        }
    }

    private void g(boolean z) {
        this.l = z;
    }

    public String b() {
        return this.j;
    }

    public String c() {
        return this.i;
    }

    public String d() {
        return this.h;
    }

    public String e() {
        return this.k;
    }

    public String f() {
        return this.f6085g;
    }

    public void g(String str) {
        this.j = str;
    }

    public boolean g() {
        return this.l;
    }

    public void h(String str) {
        this.i = str;
    }

    public void i(String str) {
        this.h = str;
    }

    public void j(String str) {
        this.k = str;
    }

    public void k(String str) {
        this.f6085g = str;
    }
}
