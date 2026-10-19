package com.bytedance.sdk.openadsdk.f;

import android.graphics.Bitmap;
import android.widget.ImageView;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.d.k;
import com.bytedance.sdk.component.d.o;
import com.bytedance.sdk.openadsdk.core.l;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.utils.aa;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: ImageLoaderToViewWrapper.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements o<Bitmap> {
    private final WeakReference<ImageView> a;
    private final String b = "ImageLoaderToViewWrapper";

    private c(ImageView imageView) {
        this.a = new WeakReference<>(imageView);
    }

    public static o a(q qVar, String str, ImageView imageView) {
        return new b(qVar, str, new c(imageView));
    }

    @Override // com.bytedance.sdk.component.d.o
    public void a(int i, String str, @Nullable Throwable th) {
    }

    @Override // com.bytedance.sdk.component.d.o
    public void a(k<Bitmap> kVar) {
        final ImageView imageView = this.a.get();
        if (imageView == null || !(kVar.b() instanceof Bitmap)) {
            return;
        }
        final Bitmap bitmapB = kVar.b();
        if (aa.e()) {
            imageView.setImageBitmap(bitmapB);
        } else {
            l.c().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.f.c.1
                @Override // java.lang.Runnable
                public void run() {
                    imageView.setImageBitmap(bitmapB);
                }
            });
        }
    }
}
