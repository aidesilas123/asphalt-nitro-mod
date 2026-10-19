package com.mbridge.msdk.foundation.b;

import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: CandidateResult.java */
/* JADX INFO: loaded from: classes4.dex */
public final class c {
    public static int a = 0;
    public static int b = 1;
    public static int c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f7012d = 3;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f7013e = 4;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f7014f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private CopyOnWriteArrayList<CampaignEx> f7015g;
    private int h = a;
    private ArrayList<String> i = new ArrayList<>();
    private List<String> j = new ArrayList();
    private List<String> k = new ArrayList();
    private List<String> l = new ArrayList();

    public final String a() {
        ArrayList<String> arrayList = this.i;
        return arrayList == null ? "" : arrayList.toString();
    }

    public final void a(int i) {
        this.h = i;
    }

    public final void a(String str) {
        try {
            ArrayList<String> arrayList = this.i;
            if (arrayList != null) {
                arrayList.add(str);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final void a(CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
        this.f7015g = copyOnWriteArrayList;
    }

    public final String b() {
        List<String> list = this.j;
        return list == null ? "" : list.toString();
    }

    public final void b(String str) {
        try {
            List<String> list = this.j;
            if (list != null) {
                list.add(str);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final String c() {
        List<String> list = this.k;
        return list == null ? "" : list.toString();
    }

    public final void c(String str) {
        try {
            List<String> list = this.k;
            if (list != null) {
                list.add(str);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final String d() {
        List<String> list = this.l;
        return list == null ? "" : list.toString();
    }

    public final void d(String str) {
        try {
            List<String> list = this.l;
            if (list != null) {
                list.add(str);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final int e() {
        return this.h;
    }

    public final void e(String str) {
        this.f7014f = str;
    }

    public final String f() {
        return this.f7014f;
    }

    public final CopyOnWriteArrayList<CampaignEx> g() {
        return this.f7015g;
    }
}
