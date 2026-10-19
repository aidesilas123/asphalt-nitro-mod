package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.json.o2;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzox {
    public static final zzox zza = new zzox(new int[]{2}, 10);
    private static final zzfwu zzb = zzfwu.zzo(2, 5, 6);
    private static final zzfwx zzc;
    private final int[] zzd;
    private final int zze;

    static {
        zzfww zzfwwVar = new zzfww();
        zzfwwVar.zza(5, 6);
        zzfwwVar.zza(17, 6);
        zzfwwVar.zza(7, 6);
        zzfwwVar.zza(30, 10);
        zzfwwVar.zza(18, 6);
        zzfwwVar.zza(6, 8);
        zzfwwVar.zza(8, 8);
        zzfwwVar.zza(14, 8);
        zzc = zzfwwVar.zzc();
    }

    public zzox(@Nullable int[] iArr, int i) {
        int[] iArrCopyOf = Arrays.copyOf(iArr, 1);
        this.zzd = iArrCopyOf;
        Arrays.sort(iArrCopyOf);
        this.zze = 10;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zzox) && Arrays.equals(this.zzd, ((zzox) obj).zzd);
    }

    public final int hashCode() {
        return (Arrays.hashCode(this.zzd) * 31) + 10;
    }

    public final String toString() {
        return "AudioCapabilities[maxChannelCount=10, supportedEncodings=" + Arrays.toString(this.zzd) + o2.i.f6491e;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0038 A[PHI: r0
      0x0038: PHI (r0v3 int) = (r0v2 int), (r0v6 int) binds: [B:11:0x002b, B:14:0x0033] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00a0  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.util.Pair zza(com.google.android.gms.internal.ads.zzam r9) {
        /*
            r8 = this;
            java.lang.String r0 = r9.zzm
            java.util.Objects.requireNonNull(r0)
            java.lang.String r1 = r9.zzj
            int r0 = com.google.android.gms.internal.ads.zzce.zza(r0, r1)
            com.google.android.gms.internal.ads.zzfwx r1 = com.google.android.gms.internal.ads.zzox.zzc
            java.lang.Integer r2 = java.lang.Integer.valueOf(r0)
            boolean r2 = r1.containsKey(r2)
            if (r2 != 0) goto L19
            goto Lc6
        L19:
            r2 = 7
            r3 = 6
            r4 = 8
            r5 = 18
            if (r0 != r5) goto L2b
            boolean r0 = r8.zzc(r5)
            if (r0 != 0) goto L29
            r0 = 6
            goto L43
        L29:
            r0 = 18
        L2b:
            if (r0 != r4) goto L38
            boolean r0 = r8.zzc(r4)
            if (r0 == 0) goto L36
            r0 = 8
            goto L38
        L36:
            r0 = 7
            goto L43
        L38:
            r6 = 30
            if (r0 != r6) goto L43
            boolean r6 = r8.zzc(r6)
            if (r6 != 0) goto L43
            goto L36
        L43:
            boolean r6 = r8.zzc(r0)
            if (r6 == 0) goto Lc6
            int r6 = r9.zzz
            r7 = -1
            if (r6 == r7) goto L63
            if (r0 != r5) goto L51
            goto L63
        L51:
            java.lang.String r9 = r9.zzm
            java.lang.String r1 = "audio/vnd.dts.uhd;profile=p2"
            boolean r9 = r9.equals(r1)
            r1 = 10
            if (r9 == 0) goto L60
            if (r6 <= r1) goto L8b
            goto Lc6
        L60:
            if (r6 <= r1) goto L8b
            goto Lc6
        L63:
            int r9 = r9.zzA
            if (r9 != r7) goto L6a
            r9 = 48000(0xbb80, float:6.7262E-41)
        L6a:
            int r5 = com.google.android.gms.internal.ads.zzfs.zza
            r6 = 29
            if (r5 < r6) goto L75
            int r6 = com.google.android.gms.internal.ads.zzow.zza(r0, r9)
            goto L8b
        L75:
            java.lang.Integer r9 = java.lang.Integer.valueOf(r0)
            r5 = 0
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            java.lang.Object r9 = r1.getOrDefault(r9, r5)
            java.lang.Integer r9 = (java.lang.Integer) r9
            java.util.Objects.requireNonNull(r9)
            int r6 = r9.intValue()
        L8b:
            int r9 = com.google.android.gms.internal.ads.zzfs.zza
            r1 = 28
            if (r9 > r1) goto La0
            if (r6 != r2) goto L96
            r3 = 8
            goto La1
        L96:
            r1 = 3
            if (r6 == r1) goto La1
            r1 = 4
            if (r6 == r1) goto La1
            r1 = 5
            if (r6 != r1) goto La0
            goto La1
        La0:
            r3 = r6
        La1:
            r1 = 26
            if (r9 > r1) goto Lb3
            java.lang.String r9 = com.google.android.gms.internal.ads.zzfs.zzb
            java.lang.String r1 = "fugu"
            boolean r9 = r1.equals(r9)
            if (r9 == 0) goto Lb3
            r9 = 1
            if (r3 != r9) goto Lb3
            r3 = 2
        Lb3:
            int r9 = com.google.android.gms.internal.ads.zzfs.zzg(r3)
            if (r9 == 0) goto Lc6
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)
            android.util.Pair r9 = android.util.Pair.create(r0, r9)
            return r9
        Lc6:
            r9 = 0
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzox.zza(com.google.android.gms.internal.ads.zzam):android.util.Pair");
    }

    public final boolean zzc(int i) {
        return Arrays.binarySearch(this.zzd, i) >= 0;
    }
}
