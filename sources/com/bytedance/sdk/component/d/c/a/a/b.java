package com.bytedance.sdk.component.d.c.a.a;

import android.util.Log;
import com.bytedance.sdk.component.d.c.a.a.a;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: LruCountDiskCache.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements com.bytedance.sdk.component.d.c {
    private long a;
    private a b;

    public b(File file, long j, ExecutorService executorService) {
        this.a = j;
        try {
            this.b = a.a(file, 20210302, 1, j, executorService);
        } catch (IOException e2) {
            Log.w("LruCountDiskCache", e2.toString());
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.bytedance.sdk.component.d.c
    public InputStream a(String str) {
        a aVar = this.b;
        if (aVar == null) {
            return null;
        }
        try {
            a.c cVarA = aVar.a(str);
            if (cVarA != null) {
                return cVarA.a(0);
            }
        } catch (IOException e2) {
            Log.w("LruCountDiskCache", e2.getMessage());
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.d.a
    public boolean a(String str, byte[] bArr) throws Throwable {
        Closeable closeable;
        a.C0113a c0113aB;
        a aVar = this.b;
        if (aVar == null || bArr == null || str == null) {
            return false;
        }
        Closeable closeable2 = null;
        a.C0113a c0113a = null;
        try {
            try {
                c0113aB = aVar.b(str);
            } catch (IOException e2) {
                e = e2;
                closeable = null;
            }
            try {
                if (c0113aB == null) {
                    Log.w("LruCountDiskCache", "save " + str + " failed for edit null");
                    com.bytedance.sdk.component.d.c.c.b.a(null);
                    return false;
                }
                OutputStream outputStreamA = c0113aB.a(0);
                if (outputStreamA != a.c) {
                    outputStreamA.write(bArr);
                    c0113aB.a();
                    this.b.a();
                    com.bytedance.sdk.component.d.c.c.b.a(outputStreamA);
                    return true;
                }
                Log.w("LruCountDiskCache", "save " + str + " failed for null OutputStream");
                com.bytedance.sdk.component.d.c.c.b.a(outputStreamA);
                return false;
            } catch (IOException e3) {
                e = e3;
                closeable = null;
                c0113a = c0113aB;
                try {
                    Log.w("LruCountDiskCache", e.toString());
                    if (c0113a != null) {
                        try {
                            c0113a.b();
                        } catch (IOException unused) {
                        }
                    }
                    com.bytedance.sdk.component.d.c.c.b.a(closeable);
                    return false;
                } catch (Throwable th) {
                    th = th;
                    closeable2 = closeable;
                    com.bytedance.sdk.component.d.c.c.b.a(closeable2);
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            com.bytedance.sdk.component.d.c.c.b.a(closeable2);
            throw th;
        }
    }

    @Override // com.bytedance.sdk.component.d.a
    /* JADX INFO: renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public byte[] a(String str) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        InputStream inputStreamA;
        a aVar = this.b;
        InputStream inputStream = null;
        if (aVar == null || str == null) {
            return null;
        }
        try {
            a.c cVarA = aVar.a(str);
            if (cVarA == null) {
                com.bytedance.sdk.component.d.c.c.b.a(null);
                com.bytedance.sdk.component.d.c.c.b.a(null);
                return null;
            }
            inputStreamA = cVarA.a(0);
            if (inputStreamA != null) {
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        try {
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int i = inputStreamA.read(bArr);
                                if (i == -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(bArr, 0, i);
                            }
                        } catch (IOException e2) {
                            e = e2;
                            Log.w("LruCountDiskCache", e.toString());
                            com.bytedance.sdk.component.d.c.c.b.a(inputStreamA);
                            com.bytedance.sdk.component.d.c.c.b.a(byteArrayOutputStream);
                            return null;
                        }
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStreamA;
                        com.bytedance.sdk.component.d.c.c.b.a(inputStream);
                        com.bytedance.sdk.component.d.c.c.b.a(byteArrayOutputStream);
                        throw th;
                    }
                } catch (IOException e3) {
                    e = e3;
                    byteArrayOutputStream = null;
                    Log.w("LruCountDiskCache", e.toString());
                    com.bytedance.sdk.component.d.c.c.b.a(inputStreamA);
                    com.bytedance.sdk.component.d.c.c.b.a(byteArrayOutputStream);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    byteArrayOutputStream = null;
                    inputStream = inputStreamA;
                    com.bytedance.sdk.component.d.c.c.b.a(inputStream);
                    com.bytedance.sdk.component.d.c.c.b.a(byteArrayOutputStream);
                    throw th;
                }
            } else {
                byteArrayOutputStream = null;
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            com.bytedance.sdk.component.d.c.c.b.a(inputStreamA);
            com.bytedance.sdk.component.d.c.c.b.a(byteArrayOutputStream);
            return byteArray;
        } catch (IOException e4) {
            e = e4;
            inputStreamA = null;
            byteArrayOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
            com.bytedance.sdk.component.d.c.c.b.a(inputStream);
            com.bytedance.sdk.component.d.c.c.b.a(byteArrayOutputStream);
            throw th;
        }
        Log.w("LruCountDiskCache", e.toString());
        com.bytedance.sdk.component.d.c.c.b.a(inputStreamA);
        com.bytedance.sdk.component.d.c.c.b.a(byteArrayOutputStream);
        return null;
    }

    @Override // com.bytedance.sdk.component.d.a
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean b(String str) {
        try {
            try {
                a.c cVarA = this.b.a(str);
                boolean z = cVarA != null;
                com.bytedance.sdk.component.d.c.c.b.a(cVarA);
                return z;
            } catch (IOException e2) {
                Log.w("LruCountDiskCache", e2.getMessage());
                com.bytedance.sdk.component.d.c.c.b.a(null);
                return false;
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.d.c.c.b.a(null);
            throw th;
        }
    }
}
