package com.bytedance.sdk.openadsdk.k.a;

import android.graphics.Bitmap;
import android.os.Build;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bytedance.sdk.component.d.h;
import com.bytedance.sdk.component.d.k;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.f.d;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Map;

/* JADX INFO: compiled from: GifLoader.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.k.a.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: GifLoader.java */
    public interface InterfaceC0145a {
        void a();

        void a(int i, String str, Throwable th);

        void a(String str, b bVar);
    }

    private int a(k kVar) {
        Object obj;
        Map<String, String> mapD = kVar.d();
        if (mapD == null || (obj = mapD.get(CampaignEx.JSON_KEY_IMAGE_SIZE)) == null || !(obj instanceof Integer)) {
            return 0;
        }
        return ((Integer) obj).intValue();
    }

    protected void a() {
    }

    protected void a(int i, String str, Throwable th, InterfaceC0145a interfaceC0145a) {
        if (interfaceC0145a != null) {
            interfaceC0145a.a(i, str, th);
        }
    }

    protected void a(k kVar, InterfaceC0145a interfaceC0145a) {
        if (interfaceC0145a != null) {
            Object objB = kVar.b();
            int iA = a(kVar);
            if (objB instanceof byte[]) {
                interfaceC0145a.a(kVar.a(), new b((byte[]) objB, iA));
            } else {
                if (objB instanceof Bitmap) {
                    interfaceC0145a.a(kVar.a(), new b((Bitmap) objB, kVar.c() instanceof Bitmap ? (Bitmap) kVar.c() : null, iA));
                } else {
                    interfaceC0145a.a(0, "not bitmap or gif result!", null);
                }
            }
        }
        if (interfaceC0145a != null) {
            interfaceC0145a.a();
        }
    }

    public void a(com.bytedance.sdk.openadsdk.k.a aVar, final InterfaceC0145a interfaceC0145a, int i, int i2, ImageView.ScaleType scaleType, String str, final int i3, q qVar) {
        d.a(aVar.a).a(aVar.b).a(i).b(i2).d(ad.d(o.a())).c(ad.c(o.a())).b(str).a(Bitmap.Config.RGB_565).a(scaleType).a(!TextUtils.isEmpty(str)).a(new h() { // from class: com.bytedance.sdk.openadsdk.k.a.a.2
            @Override // com.bytedance.sdk.component.d.h
            public Bitmap a(Bitmap bitmap) {
                if (i3 <= 0) {
                    return bitmap;
                }
                if (Build.VERSION.SDK_INT >= 17) {
                    return com.bytedance.sdk.component.adexpress.c.a.a(o.a(), bitmap, i3);
                }
                return null;
            }
        }).a(new com.bytedance.sdk.openadsdk.f.b(qVar, aVar.a, new com.bytedance.sdk.component.d.o() { // from class: com.bytedance.sdk.openadsdk.k.a.a.1
            @Override // com.bytedance.sdk.component.d.o
            public void a(int i4, String str2, Throwable th) {
                a.this.a(i4, str2, th, interfaceC0145a);
            }

            @Override // com.bytedance.sdk.component.d.o
            public void a(k kVar) {
                a.this.a(kVar, interfaceC0145a);
            }
        }));
        a();
    }
}
