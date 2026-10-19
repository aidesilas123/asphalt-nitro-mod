package com.google.android.gms.internal.ads;

import android.view.Surface;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@RequiresApi(30)
final class zzaad {
    @DoNotInline
    public static void zza(Surface surface, float f2) {
        try {
            surface.setFrameRate(f2, f2 == 0.0f ? 0 : 1);
        } catch (IllegalStateException e2) {
            zzez.zzd("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e2);
        }
    }
}
