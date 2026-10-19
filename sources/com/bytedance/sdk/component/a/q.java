package com.bytedance.sdk.component.a;

import android.text.TextUtils;

/* JADX INFO: compiled from: Js2JavaCall.java */
/* JADX INFO: loaded from: classes.dex */
public class q {
    public final int a;
    public final String b;
    public final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f625d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f626e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f627f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f628g;
    public final String h;

    /* JADX INFO: compiled from: Js2JavaCall.java */
    public static final class a {
        private String a;
        private String b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f629d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f630e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f631f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f632g;

        private a() {
        }

        public a a(String str) {
            this.a = str;
            return this;
        }

        public q a() {
            return new q(this);
        }

        public a b(String str) {
            this.b = str;
            return this;
        }

        public a c(String str) {
            this.c = str;
            return this;
        }

        public a d(String str) {
            this.f629d = str;
            return this;
        }

        public a e(String str) {
            this.f630e = str;
            return this;
        }

        public a f(String str) {
            this.f631f = str;
            return this;
        }

        public a g(String str) {
            this.f632g = str;
            return this;
        }
    }

    private q(a aVar) {
        this.b = aVar.a;
        this.c = aVar.b;
        this.f625d = aVar.c;
        this.f626e = aVar.f629d;
        this.f627f = aVar.f630e;
        this.f628g = aVar.f631f;
        this.a = 1;
        this.h = aVar.f632g;
    }

    private q(String str, int i) {
        this.b = null;
        this.c = null;
        this.f625d = null;
        this.f626e = null;
        this.f627f = str;
        this.f628g = null;
        this.a = i;
        this.h = null;
    }

    public static a a() {
        return new a();
    }

    public static q a(String str, int i) {
        return new q(str, i);
    }

    public static boolean a(q qVar) {
        return qVar == null || qVar.a != 1 || TextUtils.isEmpty(qVar.f625d) || TextUtils.isEmpty(qVar.f626e);
    }

    public String toString() {
        return "methodName: " + this.f625d + ", params: " + this.f626e + ", callbackId: " + this.f627f + ", type: " + this.c + ", version: " + this.b + ", ";
    }
}
