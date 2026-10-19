package com.squareup.imagelib;

import android.graphics.Bitmap;
import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: Downloader.java */
/* JADX INFO: loaded from: classes4.dex */
public interface j {

    /* JADX INFO: compiled from: Downloader.java */
    public static class a {
        final InputStream a;
        final Bitmap b;
        final boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final long f7752d;

        public a(InputStream inputStream, boolean z, long j) {
            if (inputStream == null) {
                throw new IllegalArgumentException("Stream may not be null.");
            }
            this.a = inputStream;
            this.b = null;
            this.c = z;
            this.f7752d = j;
        }

        @Deprecated
        public Bitmap a() {
            return this.b;
        }

        public long b() {
            return this.f7752d;
        }

        public InputStream c() {
            return this.a;
        }
    }

    /* JADX INFO: compiled from: Downloader.java */
    public static class b extends IOException {
        final boolean a;
        final int b;

        public b(String str, int i, int i2) {
            super(str);
            this.a = NetworkPolicy.isOfflineOnly(i);
            this.b = i2;
        }
    }

    a a(Uri uri, int i) throws IOException;
}
