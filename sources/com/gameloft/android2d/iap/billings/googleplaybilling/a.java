package com.gameloft.android2d.iap.billings.googleplaybilling;

/* JADX INFO: compiled from: IabResult.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    int a;
    String b;

    public a(int i, String str) {
        this.a = i;
        if (str == null || str.trim().length() == 0) {
            this.b = IabHelper.getResponseDesc(i);
            return;
        }
        this.b = str + " (response: " + IabHelper.getResponseDesc(i) + ")";
    }

    public String a() {
        return this.b;
    }

    public int b() {
        return this.a;
    }

    public boolean c() {
        return this.a == 0;
    }

    public String toString() {
        return "IabResult: " + a();
    }
}
