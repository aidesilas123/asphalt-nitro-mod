package com.bytedance.sdk.component.d.c.a.b;

import android.graphics.Bitmap;
import android.os.Build;
import com.bytedance.sdk.component.d.q;

/* JADX INFO: compiled from: LruCountBitmapCache.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements q {
    private int a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.component.d.c.a.c<String, Bitmap> f950d;

    public b(int i, int i2) {
        this.c = i;
        this.a = i2;
        this.f950d = new com.bytedance.sdk.component.d.c.a.c<String, Bitmap>(i) { // from class: com.bytedance.sdk.component.d.c.a.b.b.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.bytedance.sdk.component.d.c.a.c
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int b(String str, Bitmap bitmap) {
                if (bitmap == null) {
                    return 0;
                }
                return b.a(bitmap);
            }
        };
    }

    public static int a(Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        int i = Build.VERSION.SDK_INT;
        return i >= 19 ? bitmap.getAllocationByteCount() : i >= 12 ? bitmap.getByteCount() : bitmap.getRowBytes() * bitmap.getHeight();
    }

    @Override // com.bytedance.sdk.component.d.a
    public Bitmap a(String str) {
        return this.f950d.a(str);
    }

    @Override // com.bytedance.sdk.component.d.a
    public boolean a(String str, Bitmap bitmap) {
        if (str == null || bitmap == null) {
            return false;
        }
        this.f950d.a(str, bitmap);
        return true;
    }

    @Override // com.bytedance.sdk.component.d.a
    public boolean b(String str) {
        return this.f950d.a(str) != null;
    }
}
