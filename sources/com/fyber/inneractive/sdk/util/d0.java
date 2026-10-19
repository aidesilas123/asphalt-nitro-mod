package com.fyber.inneractive.sdk.util;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class d0 {

    public class a extends BufferedInputStream {
        public final /* synthetic */ AtomicInteger a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(InputStream inputStream, AtomicInteger atomicInteger) {
            super(inputStream);
            this.a = atomicInteger;
        }

        @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
        public synchronized int read(byte[] bArr, int i, int i2) throws IOException {
            int i3;
            i3 = super.read(bArr, i, i2);
            if (i3 != -1) {
                this.a.getAndAdd(i3);
            }
            return i3;
        }

        @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
        public synchronized void reset() throws IOException {
            this.a.set(0);
            super.reset();
        }

        @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
        public synchronized long skip(long j) throws IOException {
            long jSkip;
            jSkip = super.skip(j);
            this.a.addAndGet((int) jSkip);
            return jSkip;
        }
    }

    public static Bitmap a(InputStream inputStream, int i) {
        AtomicInteger atomicInteger = new AtomicInteger(0);
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(new a(inputStream, atomicInteger));
        if (atomicInteger.get() == i) {
            return bitmapDecodeStream;
        }
        return null;
    }
}
