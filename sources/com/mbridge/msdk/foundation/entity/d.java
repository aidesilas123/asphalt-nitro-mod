package com.mbridge.msdk.foundation.entity;

import android.text.TextUtils;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: ClickTime.java */
/* JADX INFO: loaded from: classes4.dex */
public final class d {
    private String a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7062d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f7063e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f7064f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f7065g;
    private String h;
    private String i;
    private int j;
    private int k;
    private String l;
    private int m;
    private int n;
    private String o;
    private int p;
    private String q;
    private int r;

    public d() {
    }

    public d(String str, String str2, String str3, String str4, String str5, int i, String str6, String str7, String str8, int i2, int i3, String str9, int i4, int i5, String str10, int i6, int i7, String str11) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.f7062d = str4;
        this.f7063e = str5;
        this.f7064f = i;
        this.f7065g = str6;
        this.h = str7;
        this.i = str8;
        this.j = i2;
        this.k = i3;
        this.l = str9;
        this.m = i4;
        this.n = i5;
        this.o = str10;
        this.p = i6;
        this.q = str11;
        this.r = i7;
    }

    public static String a(d dVar) {
        if (dVar == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        String str = dVar.f7063e;
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            sb.append("rid=" + dVar.a);
            sb.append("&rid_n=" + dVar.b);
            sb.append("&network_type=" + dVar.p);
            sb.append("&network_str=" + dVar.q);
            sb.append("&click_type=" + dVar.k);
            sb.append("&type=" + dVar.j);
            sb.append("&cid=" + dVar.c);
            sb.append("&click_duration=" + dVar.f7062d);
            sb.append("&key=2000012");
            sb.append("&unit_id=" + dVar.l);
            sb.append("&last_url=" + str);
            sb.append("&code=" + dVar.f7064f);
            sb.append("&exception=" + dVar.f7065g);
            sb.append("&landing_type=" + dVar.m);
            sb.append("&link_type=" + dVar.n);
            sb.append("&click_time=" + dVar.o + "\n");
        } else {
            sb.append("rid=" + dVar.a);
            sb.append("&rid_n=" + dVar.b);
            sb.append("&click_type=" + dVar.k);
            sb.append("&type=" + dVar.j);
            sb.append("&cid=" + dVar.c);
            sb.append("&click_duration=" + dVar.f7062d);
            sb.append("&key=2000012");
            sb.append("&unit_id=" + dVar.l);
            sb.append("&last_url=" + str);
            sb.append("&code=" + dVar.f7064f);
            sb.append("&exception=" + dVar.f7065g);
            sb.append("&landing_type=" + dVar.m);
            sb.append("&link_type=" + dVar.n);
            sb.append("&click_time=" + dVar.o + "\n");
        }
        return sb.toString();
    }

    public static String a(List<d> list) {
        if (list == null || list.size() <= 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Iterator<d> it = list.iterator();
        while (it.hasNext()) {
            d next = it.next();
            String str = next.l;
            if (!TextUtils.isEmpty(str)) {
                String str2 = com.mbridge.msdk.foundation.controller.b.c.get(str);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("u_stid=");
                if (str2 == null) {
                    str2 = "";
                }
                sb2.append(str2);
                sb2.append(o2.i.c);
                sb.append(sb2.toString());
            }
            Iterator<d> it2 = it;
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                sb.append("rid=" + next.a);
                sb.append("&rid_n=" + next.b);
                sb.append("&network_type=" + next.p);
                sb.append("&network_str=" + next.q);
                sb.append("&cid=" + next.c);
                sb.append("&click_type=" + next.k);
                sb.append("&type=" + next.j);
                sb.append("&click_duration=" + next.f7062d);
                sb.append("&key=2000013");
                sb.append("&unit_id=" + next.l);
                sb.append("&last_url=" + next.f7063e);
                sb.append("&content=" + next.i);
                sb.append("&code=" + next.f7064f);
                sb.append("&exception=" + next.f7065g);
                sb.append("&header=" + next.h);
                sb.append("&landing_type=" + next.m);
                sb.append("&link_type=" + next.n);
                sb.append("&click_time=" + next.o + "\n");
            } else {
                sb.append("rid=" + next.a);
                sb.append("&rid_n=" + next.b);
                sb.append("&cid=" + next.c);
                sb.append("&click_type=" + next.k);
                sb.append("&type=" + next.j);
                sb.append("&click_duration=" + next.f7062d);
                sb.append("&key=2000013");
                sb.append("&unit_id=" + next.l);
                sb.append("&last_url=" + next.f7063e);
                sb.append("&content=" + next.i);
                sb.append("&code=" + next.f7064f);
                sb.append("&exception=" + next.f7065g);
                sb.append("&header=" + next.h);
                sb.append("&landing_type=" + next.m);
                sb.append("&link_type=" + next.n);
                sb.append("&click_time=" + next.o + "\n");
            }
            it = it2;
        }
        return sb.toString();
    }

    public final void a(int i) {
        this.p = i;
    }

    public final void a(String str) {
        this.q = str;
    }

    public final void b(int i) {
        this.m = i;
    }

    public final void b(String str) {
        this.l = str;
    }

    public final void c(int i) {
        this.n = i;
    }

    public final void c(String str) {
        this.o = str;
    }

    public final void d(int i) {
        this.k = i;
    }

    public final void d(String str) {
        this.f7065g = str;
    }

    public final void e(int i) {
        this.f7064f = i;
    }

    public final void e(String str) {
        this.h = str;
    }

    public final void f(int i) {
        this.j = i;
    }

    public final void f(String str) {
        this.i = str;
    }

    public final void g(String str) {
        this.f7063e = str;
    }

    public final void h(String str) {
        this.c = str;
    }

    public final void i(String str) {
        this.f7062d = str;
    }

    public final void j(String str) {
        this.a = str;
    }

    public final void k(String str) {
        this.b = str;
    }

    public final String toString() {
        return "ClickTime [campaignId=" + this.c + ", click_duration=" + this.f7062d + ", lastUrl=" + this.f7063e + ", code=" + this.f7064f + ", excepiton=" + this.f7065g + ", header=" + this.h + ", content=" + this.i + ", type=" + this.j + ", click_type=" + this.k + o2.i.f6491e;
    }
}
