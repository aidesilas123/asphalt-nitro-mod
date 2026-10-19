package com.google.android.gms.internal.ads;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLU;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeo {
    public static void zza() throws zzen {
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        while (true) {
            int iGlGetError = GLES20.glGetError();
            if (iGlGetError == 0) {
                break;
            }
            if (z) {
                sb.append('\n');
            }
            String strGluErrorString = GLU.gluErrorString(iGlGetError);
            if (strGluErrorString == null) {
                strGluErrorString = "error code: 0x".concat(String.valueOf(Integer.toHexString(iGlGetError)));
            }
            sb.append("glError: ");
            sb.append(strGluErrorString);
            z = true;
        }
        if (z) {
            throw new zzen(sb.toString());
        }
    }

    public static void zzb(boolean z, String str) throws zzen {
        if (!z) {
            throw new zzen(str);
        }
    }

    public static boolean zzc(Context context) {
        int i = zzfs.zza;
        if (i < 24) {
            return false;
        }
        if (i < 26 && ("samsung".equals(zzfs.zzc) || "XT1650".equals(zzfs.zzd))) {
            return false;
        }
        if (i >= 26 || context.getPackageManager().hasSystemFeature("android.hardware.vr.high_performance")) {
            return zzem.zzk("EGL_EXT_protected_content");
        }
        return false;
    }

    public static boolean zzd() {
        int i = zzfs.zza;
        return zzem.zzk("EGL_KHR_surfaceless_context");
    }
}
