package com.bytedance.sdk.openadsdk.core.model;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.core.b.c;
import org.json.JSONObject;

/* JADX INFO: compiled from: DynamicClickInfo.java */
/* JADX INFO: loaded from: classes2.dex */
public class m implements com.bytedance.sdk.component.adexpress.c {
    public final float a;
    public final float b;
    public final float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f1574d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f1575e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f1576f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f1577g;
    public final int h;
    public final int i;
    public final int j;
    public final String k;
    public int l;
    public JSONObject m;
    public SparseArray<c.a> n;
    public final boolean o;
    public int p;

    /* JADX INFO: compiled from: DynamicClickInfo.java */
    public static class a {
        protected SparseArray<c.a> a = new SparseArray<>();
        private long b;
        private long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f1578d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private float f1579e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private float f1580f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private float f1581g;
        private int h;
        private int i;
        private int j;
        private int k;
        private String l;
        private int m;
        private JSONObject n;
        private int o;
        private boolean p;

        public a a(float f2) {
            this.f1578d = f2;
            return this;
        }

        public a a(int i) {
            this.o = i;
            return this;
        }

        public a a(long j) {
            this.b = j;
            return this;
        }

        public a a(SparseArray<c.a> sparseArray) {
            this.a = sparseArray;
            return this;
        }

        public a a(String str) {
            this.l = str;
            return this;
        }

        public a a(JSONObject jSONObject) {
            this.n = jSONObject;
            return this;
        }

        public a a(boolean z) {
            this.p = z;
            return this;
        }

        public m a() {
            return new m(this);
        }

        public a b(float f2) {
            this.f1579e = f2;
            return this;
        }

        public a b(int i) {
            this.m = i;
            return this;
        }

        public a b(long j) {
            this.c = j;
            return this;
        }

        public a c(float f2) {
            this.f1580f = f2;
            return this;
        }

        public a c(int i) {
            this.h = i;
            return this;
        }

        public a d(float f2) {
            this.f1581g = f2;
            return this;
        }

        public a d(int i) {
            this.i = i;
            return this;
        }

        public a e(int i) {
            this.j = i;
            return this;
        }

        public a f(int i) {
            this.k = i;
            return this;
        }
    }

    private m(@NonNull a aVar) {
        this.a = aVar.f1581g;
        this.b = aVar.f1580f;
        this.c = aVar.f1579e;
        this.f1574d = aVar.f1578d;
        this.f1575e = aVar.c;
        this.f1576f = aVar.b;
        this.f1577g = aVar.h;
        this.h = aVar.i;
        this.i = aVar.j;
        this.j = aVar.k;
        this.k = aVar.l;
        this.n = aVar.a;
        this.o = aVar.p;
        this.l = aVar.m;
        this.m = aVar.n;
        this.p = aVar.o;
    }
}
