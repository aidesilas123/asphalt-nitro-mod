package com.bytedance.sdk.openadsdk.k.a;

import android.graphics.Bitmap;
import com.bytedance.sdk.component.utils.d;
import com.bytedance.sdk.component.utils.l;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: GifRequestResult.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    int a;
    private byte[] b;
    private Bitmap c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Bitmap f1804d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<Object> f1805e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map<String, String> f1806f;

    public b(Bitmap bitmap, Bitmap bitmap2, int i) {
        this.b = null;
        this.c = null;
        this.f1804d = null;
        this.f1805e = null;
        this.f1806f = null;
        this.f1804d = bitmap2;
        this.c = bitmap;
        this.a = i;
    }

    public b(byte[] bArr, int i) {
        this.b = null;
        this.c = null;
        this.f1804d = null;
        this.f1805e = null;
        this.f1806f = null;
        this.b = bArr;
        this.a = i;
    }

    public Bitmap a() {
        return this.c;
    }

    public Bitmap b() {
        return this.f1804d;
    }

    public byte[] c() {
        try {
            if (this.b == null) {
                this.b = d.a(this.c);
            }
        } catch (OutOfMemoryError e2) {
            l.e("GifRequestResult", e2.getMessage());
        }
        return this.b;
    }

    public boolean d() {
        if (this.c != null) {
            return true;
        }
        byte[] bArr = this.b;
        return bArr != null && bArr.length > 0;
    }
}
