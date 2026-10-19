package io.didomi.drawable;

import android.graphics.Bitmap;
import androidx.core.view.ViewCompat;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.c;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.g;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.c5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lio/didomi/sdk/c5;", "", "<init>", "()V", "", "str", "", "size", "Landroid/graphics/Bitmap;", "a", "(Ljava/lang/String;I)Landroid/graphics/Bitmap;", "android_release"}, mv = {1, 8, 0})
public final class C1732c5 {
    public static final C1732c5 a = new C1732c5();

    private C1732c5() {
    }

    public final Bitmap a(String str, int size) throws g {
        try {
            BitMatrix bitMatrixA = new c().a(str, BarcodeFormat.QR_CODE, size, size, null);
            Intrinsics.checkNotNullExpressionValue(bitMatrixA, "{\n            MultiForma…l\n            )\n        }");
            int iH = bitMatrixA.h();
            int iG = bitMatrixA.g();
            int[] iArr = new int[iH * iG];
            for (int i = 0; i < iG; i++) {
                int i2 = i * iH;
                for (int i3 = 0; i3 < iH; i3++) {
                    iArr[i2 + i3] = bitMatrixA.f(i3, i) ? ViewCompat.MEASURED_STATE_MASK : -1;
                }
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iH, iG, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.setPixels(iArr, 0, size, 0, 0, iH, iG);
            return bitmapCreateBitmap;
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }
}
