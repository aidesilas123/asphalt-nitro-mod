package com.tapjoy.internal;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

/* JADX INFO: loaded from: classes4.dex */
public final class p1 implements Runnable {
    public final /* synthetic */ URL a;
    public final /* synthetic */ InputStream b;
    public final /* synthetic */ long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ m2 f7953d;

    public p1(m2 m2Var, URL url, ByteArrayInputStream byteArrayInputStream, long j) {
        this.f7953d = m2Var;
        this.a = url;
        this.b = byteArrayInputStream;
        this.c = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            m2 m2Var = this.f7953d;
            File file = m2Var.f7940e;
            if (file == null) {
                file = new File(m2Var.b.getCacheDir(), "tapjoy_mm_cache");
                m2Var.f7940e = file;
            }
            if (!file.isDirectory()) {
                file.delete();
            }
            if (!file.exists()) {
                file.mkdirs();
            }
            File fileCreateTempFile = File.createTempFile("tj_", null, file);
            if (fileCreateTempFile == null) {
                return;
            }
            FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
            InputStream inputStream = this.b;
            byte[] bArr = new byte[4096];
            while (true) {
                int i = inputStream.read(bArr);
                if (i == -1) {
                    break;
                } else {
                    fileOutputStream.write(bArr, 0, i);
                }
            }
            fileOutputStream.close();
            long j = this.c;
            if (j > 604800) {
                j = 604800;
            }
            long jA = (j * 1000) + na.a();
            synchronized (this.f7953d) {
                String strA = this.f7953d.a(this.a);
                m2 m2Var2 = this.f7953d;
                m2Var2.getClass();
                File file2 = m2Var2.f7940e;
                if (file2 == null) {
                    file2 = new File(m2Var2.b.getCacheDir(), "tapjoy_mm_cache");
                    m2Var2.f7940e = file2;
                }
                if (!file2.isDirectory()) {
                    file2.delete();
                }
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                if (fileCreateTempFile.renameTo(new File(file2, strA))) {
                    this.f7953d.c.edit().putLong(strA, jA).commit();
                }
            }
        } catch (FileNotFoundException | IOException unused) {
        }
    }
}
