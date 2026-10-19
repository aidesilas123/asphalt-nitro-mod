package com.bytedance.sdk.component.d.c.c;

import java.io.Closeable;

/* JADX INFO: compiled from: IOUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }
}
