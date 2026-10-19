package com.json;

import android.util.Pair;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class h4 implements Runnable {
    private h5 a;
    String b;
    String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ArrayList<a4> f6130d;

    public h4(h5 h5Var, String str, String str2, ArrayList<a4> arrayList) {
        this.a = h5Var;
        this.b = str;
        this.c = str2;
        this.f6130d = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z = false;
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new Pair(b4.I, b4.J));
            wa waVarB = w5.b(this.c, this.b, arrayList);
            if (waVarB != null) {
                int i = waVarB.a;
                if (i == 200 || i == 204) {
                    z = true;
                }
            }
        } catch (Exception unused) {
        }
        h5 h5Var = this.a;
        if (h5Var != null) {
            h5Var.a(this.f6130d, z);
        }
    }
}
