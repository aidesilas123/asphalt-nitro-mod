package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts;

import android.util.SparseArray;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface v {

    public static final class a {
        public final String a;
        public final byte[] b;

        public a(String str, int i, byte[] bArr) {
            this.a = str;
            this.b = bArr;
        }
    }

    public static final class b {
        public final String a;
        public final List<a> b;
        public final byte[] c;

        public b(int i, String str, List<a> list, byte[] bArr) {
            this.a = str;
            this.b = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
            this.c = bArr;
        }
    }

    public interface c {
        SparseArray<v> a();

        v a(int i, b bVar);
    }

    public static final class d {
        public final String a;
        public final int b;
        public final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2452d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f2453e;

        public d(int i, int i2, int i3) {
            String str;
            if (i != Integer.MIN_VALUE) {
                str = i + "/";
            } else {
                str = "";
            }
            this.a = str;
            this.b = i2;
            this.c = i3;
            this.f2452d = Integer.MIN_VALUE;
        }

        public void a() {
            int i = this.f2452d;
            this.f2452d = i == Integer.MIN_VALUE ? this.b : i + this.c;
            this.f2453e = this.a + this.f2452d;
        }

        public String b() {
            if (this.f2452d != Integer.MIN_VALUE) {
                return this.f2453e;
            }
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }

        public int c() {
            int i = this.f2452d;
            if (i != Integer.MIN_VALUE) {
                return i;
            }
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }
    }

    void a();

    void a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, boolean z);

    void a(com.fyber.inneractive.sdk.player.exoplayer2.util.r rVar, com.fyber.inneractive.sdk.player.exoplayer2.extractor.h hVar, d dVar);
}
