package com.tapjoy;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public class w implements Serializable {
    public String a;
    public String b;
    public String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f8050d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f8051e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f8052f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f8053g;
    public String h;
    public String i;
    public boolean j;
    public String k;
    public boolean l;
    public String m;
    public boolean n = false;
    public boolean o;

    public w(String str, String str2) {
        x(str);
        E(str2);
        z(MBridgeConstans.DYNAMIC_VIEW_WX_APP);
    }

    public void A(boolean z) {
        this.n = z;
    }

    public void B(boolean z) {
        this.l = z;
    }

    public void C(String str) {
        this.k = str;
    }

    public boolean D() {
        return this.o;
    }

    public void E(String str) {
        this.b = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        r(str.substring(0, str.indexOf(47, str.indexOf("//") + 3)));
    }

    public String c() {
        return this.f8051e;
    }

    public String d() {
        return this.c;
    }

    public String e() {
        return this.m;
    }

    public String f() {
        return this.f8052f;
    }

    public String g() {
        return this.a;
    }

    public String h() {
        return this.f8050d;
    }

    public String i() {
        return this.h;
    }

    public String j() {
        return this.k;
    }

    public String k() {
        return this.b;
    }

    public boolean m() {
        return this.j;
    }

    public boolean n() {
        return this.n;
    }

    public boolean p() {
        return this.l;
    }

    public void q() {
        v(null);
        w(0);
        C(null);
        u(false);
        B(false);
        A(false);
        s(null);
        t(false);
    }

    public void r(String str) {
        this.c = str;
    }

    public void s(String str) {
        this.m = str;
    }

    public void t(boolean z) {
        this.o = z;
    }

    public void u(boolean z) {
        this.j = z;
    }

    public void v(String str) {
        this.f8052f = str;
    }

    public void w(int i) {
        this.f8053g = i;
    }

    public void x(String str) {
        this.a = str;
    }

    public void y(String str) {
        this.h = str;
    }

    public void z(String str) {
        this.i = str;
    }
}
