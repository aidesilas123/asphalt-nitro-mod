package com.bykv.vk.openvk.component.video.a.b;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: compiled from: RandomAccessFileWrapper.java */
/* JADX INFO: loaded from: classes.dex */
class h {
    private final RandomAccessFile a;

    /* JADX INFO: compiled from: RandomAccessFileWrapper.java */
    static class a extends Exception {
        a(Throwable th) {
            super(th);
        }
    }

    h(File file, String str) throws a {
        try {
            this.a = new RandomAccessFile(file, str);
        } catch (FileNotFoundException e2) {
            throw new a(e2);
        }
    }

    int a(byte[] bArr) throws a {
        try {
            return this.a.read(bArr);
        } catch (IOException e2) {
            throw new a(e2);
        }
    }

    void a() {
        com.bykv.vk.openvk.component.video.a.c.a.a(this.a);
    }

    void a(long j) throws a {
        try {
            this.a.seek(j);
        } catch (IOException e2) {
            throw new a(e2);
        }
    }

    void a(byte[] bArr, int i, int i2) throws a {
        try {
            this.a.write(bArr, i, i2);
        } catch (IOException e2) {
            throw new a(e2);
        }
    }
}
