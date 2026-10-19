package com.json;

import android.util.Pair;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class d4 {
    private String a;
    private boolean b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private j5 f6072d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6073e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList<Pair<String, String>> f6074f;

    public static class a {
        private String a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private j5 f6075d;
        private boolean b = false;
        private String c = "POST";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f6076e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private ArrayList<Pair<String, String>> f6077f = new ArrayList<>();

        public a(String str) {
            this.a = "";
            if (str == null || str.isEmpty()) {
                return;
            }
            this.a = str;
        }

        public a a(Pair<String, String> pair) {
            this.f6077f.add(pair);
            return this;
        }

        public a a(j5 j5Var) {
            this.f6075d = j5Var;
            return this;
        }

        public a a(List<Pair<String, String>> list) {
            this.f6077f.addAll(list);
            return this;
        }

        public a a(boolean z) {
            this.f6076e = z;
            return this;
        }

        public d4 a() {
            return new d4(this);
        }

        public a b() {
            this.c = "GET";
            return this;
        }

        public a b(boolean z) {
            this.b = z;
            return this;
        }

        public a c() {
            this.c = "POST";
            return this;
        }
    }

    d4(a aVar) {
        this.f6073e = false;
        this.a = aVar.a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.f6072d = aVar.f6075d;
        this.f6073e = aVar.f6076e;
        if (aVar.f6077f != null) {
            this.f6074f = new ArrayList<>(aVar.f6077f);
        }
    }

    public boolean a() {
        return this.b;
    }

    public String b() {
        return this.a;
    }

    public j5 c() {
        return this.f6072d;
    }

    public ArrayList<Pair<String, String>> d() {
        return new ArrayList<>(this.f6074f);
    }

    public String e() {
        return this.c;
    }

    public boolean f() {
        return this.f6073e;
    }
}
