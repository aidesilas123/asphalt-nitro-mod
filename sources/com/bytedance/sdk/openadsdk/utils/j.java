package com.bytedance.sdk.openadsdk.utils;

import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.k.a.a;

/* JADX INFO: compiled from: ImageBytesHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: compiled from: ImageBytesHelper.java */
    public interface a {
        void a();

        void a(com.bytedance.sdk.openadsdk.k.a.b bVar);

        void b();
    }

    public static Drawable a(byte[] bArr, int i) {
        if (bArr == null || bArr.length <= 0) {
            return new ColorDrawable(0);
        }
        try {
            return new BitmapDrawable(BitmapFactory.decodeByteArray(bArr, 0, bArr.length));
        } catch (Throwable unused) {
            return new ColorDrawable(0);
        }
    }

    public static void a(com.bytedance.sdk.openadsdk.k.a aVar, int i, int i2, a aVar2, String str) {
        a(aVar, i, i2, aVar2, str, 0);
    }

    public static void a(com.bytedance.sdk.openadsdk.k.a aVar, int i, int i2, final a aVar2, String str, int i3) {
        com.bytedance.sdk.component.utils.l.e("splashLoadAd", " getImageBytes url " + aVar);
        com.bytedance.sdk.openadsdk.k.c.a().c().a(aVar, new a.InterfaceC0145a() { // from class: com.bytedance.sdk.openadsdk.utils.j.1
            @Override // com.bytedance.sdk.openadsdk.k.a.a.InterfaceC0145a
            public void a() {
                a aVar3 = aVar2;
                if (aVar3 != null) {
                    aVar3.b();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.k.a.a.InterfaceC0145a
            public void a(int i4, String str2, Throwable th) {
                a aVar3 = aVar2;
                if (aVar3 != null) {
                    aVar3.a();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.k.a.a.InterfaceC0145a
            public void a(String str2, com.bytedance.sdk.openadsdk.k.a.b bVar) {
                a aVar3;
                if (bVar.d() && (aVar3 = aVar2) != null) {
                    aVar3.a(bVar);
                    return;
                }
                a aVar4 = aVar2;
                if (aVar4 != null) {
                    aVar4.a();
                }
            }
        }, i, i2, ImageView.ScaleType.CENTER_INSIDE, str, i3, null);
    }
}
