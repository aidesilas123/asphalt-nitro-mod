package com.json;

import android.text.TextUtils;
import java.util.HashSet;

/* JADX INFO: loaded from: classes2.dex */
public class l0 {
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6191d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f6193f;
    private HashSet<String> b = new HashSet<>();
    private boolean a = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6192e = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f6194g = true;

    public int a() {
        return this.f6193f;
    }

    public void a(int i) {
        this.f6193f = i;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.b.add(str);
    }

    public void a(boolean z) {
        this.a = z;
    }

    public HashSet<String> b() {
        return this.b;
    }

    public void b(String str) {
        this.f6191d = str;
    }

    public void b(boolean z) {
        this.f6194g = z;
    }

    public String c() {
        return this.f6191d;
    }

    public void c(String str) {
        this.c = str;
    }

    public void c(boolean z) {
        this.f6192e = z;
    }

    public String d() {
        return this.c;
    }

    public boolean e() {
        return this.f6192e;
    }

    public boolean f() {
        return this.a;
    }

    public boolean g() {
        return this.f6194g;
    }
}
