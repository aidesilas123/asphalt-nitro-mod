package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbsr extends zzbss implements zzbkd {
    DisplayMetrics zza;
    int zzb;
    int zzc;
    int zzd;
    int zze;
    int zzf;
    int zzg;
    private final zzcgv zzh;
    private final Context zzi;
    private final WindowManager zzj;
    private final zzbcm zzk;
    private float zzl;
    private int zzm;

    public zzbsr(zzcgv zzcgvVar, Context context, zzbcm zzbcmVar) {
        super(zzcgvVar, "");
        this.zzb = -1;
        this.zzc = -1;
        this.zzd = -1;
        this.zze = -1;
        this.zzf = -1;
        this.zzg = -1;
        this.zzh = zzcgvVar;
        this.zzi = context;
        this.zzk = zzbcmVar;
        this.zzj = (WindowManager) context.getSystemService("window");
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final /* synthetic */ void zza(Object obj, Map map) {
        JSONObject jSONObjectPut;
        this.zza = new DisplayMetrics();
        Display defaultDisplay = this.zzj.getDefaultDisplay();
        defaultDisplay.getMetrics(this.zza);
        this.zzl = this.zza.density;
        this.zzm = defaultDisplay.getRotation();
        com.google.android.gms.ads.internal.client.zzay.zzb();
        DisplayMetrics displayMetrics = this.zza;
        this.zzb = zzcbg.zzv(displayMetrics, displayMetrics.widthPixels);
        com.google.android.gms.ads.internal.client.zzay.zzb();
        DisplayMetrics displayMetrics2 = this.zza;
        this.zzc = zzcbg.zzv(displayMetrics2, displayMetrics2.heightPixels);
        Activity activityZzi = this.zzh.zzi();
        if (activityZzi == null || activityZzi.getWindow() == null) {
            this.zzd = this.zzb;
            this.zze = this.zzc;
        } else {
            com.google.android.gms.ads.internal.zzt.zzp();
            int[] iArrZzP = com.google.android.gms.ads.internal.util.zzt.zzP(activityZzi);
            com.google.android.gms.ads.internal.client.zzay.zzb();
            this.zzd = zzcbg.zzv(this.zza, iArrZzP[0]);
            com.google.android.gms.ads.internal.client.zzay.zzb();
            this.zze = zzcbg.zzv(this.zza, iArrZzP[1]);
        }
        if (this.zzh.zzO().zzi()) {
            this.zzf = this.zzb;
            this.zzg = this.zzc;
        } else {
            this.zzh.measure(0, 0);
        }
        zzi(this.zzb, this.zzc, this.zzd, this.zze, this.zzl, this.zzm);
        zzbsq zzbsqVar = new zzbsq();
        zzbcm zzbcmVar = this.zzk;
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        zzbsqVar.zze(zzbcmVar.zza(intent));
        zzbcm zzbcmVar2 = this.zzk;
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setData(Uri.parse("sms:"));
        zzbsqVar.zzc(zzbcmVar2.zza(intent2));
        zzbsqVar.zza(this.zzk.zzb());
        zzbsqVar.zzd(this.zzk.zzc());
        zzbsqVar.zzb(true);
        boolean z = zzbsqVar.zza;
        boolean z2 = zzbsqVar.zzb;
        boolean z3 = zzbsqVar.zzc;
        boolean z4 = zzbsqVar.zzd;
        boolean z5 = zzbsqVar.zze;
        zzcgv zzcgvVar = this.zzh;
        try {
            jSONObjectPut = new JSONObject().put("sms", z).put("tel", z2).put("calendar", z3).put("storePicture", z4).put("inlineVideo", z5);
        } catch (JSONException e2) {
            zzcbn.zzh("Error occurred while obtaining the MRAID capabilities.", e2);
            jSONObjectPut = null;
        }
        zzcgvVar.zze("onDeviceFeaturesReceived", jSONObjectPut);
        int[] iArr = new int[2];
        this.zzh.getLocationOnScreen(iArr);
        zzb(com.google.android.gms.ads.internal.client.zzay.zzb().zzb(this.zzi, iArr[0]), com.google.android.gms.ads.internal.client.zzay.zzb().zzb(this.zzi, iArr[1]));
        if (zzcbn.zzm(2)) {
            zzcbn.zzi("Dispatching Ready Event.");
        }
        zzh(this.zzh.zzn().zza);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x006b A[PHI: r3
      0x006b: PHI (r3v1 int) = (r3v0 int), (r3v4 int) binds: [B:11:0x0042, B:17:0x0058] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzb(int r7, int r8) {
        /*
            r6 = this;
            android.content.Context r0 = r6.zzi
            boolean r1 = r0 instanceof android.app.Activity
            r2 = 0
            if (r1 == 0) goto L13
            com.google.android.gms.ads.internal.zzt.zzp()
            android.app.Activity r0 = (android.app.Activity) r0
            int[] r0 = com.google.android.gms.ads.internal.util.zzt.zzQ(r0)
            r0 = r0[r2]
            goto L14
        L13:
            r0 = 0
        L14:
            com.google.android.gms.internal.ads.zzcgv r1 = r6.zzh
            com.google.android.gms.internal.ads.zzcik r1 = r1.zzO()
            if (r1 == 0) goto L28
            com.google.android.gms.internal.ads.zzcgv r1 = r6.zzh
            com.google.android.gms.internal.ads.zzcik r1 = r1.zzO()
            boolean r1 = r1.zzi()
            if (r1 != 0) goto L84
        L28:
            com.google.android.gms.internal.ads.zzcgv r1 = r6.zzh
            int r3 = r1.getWidth()
            int r1 = r1.getHeight()
            com.google.android.gms.internal.ads.zzbcu r4 = com.google.android.gms.internal.ads.zzbdc.zzR
            com.google.android.gms.internal.ads.zzbda r5 = com.google.android.gms.ads.internal.client.zzba.zzc()
            java.lang.Object r4 = r5.zza(r4)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L6b
            if (r3 != 0) goto L58
            com.google.android.gms.internal.ads.zzcgv r3 = r6.zzh
            com.google.android.gms.internal.ads.zzcik r3 = r3.zzO()
            if (r3 == 0) goto L57
            com.google.android.gms.internal.ads.zzcgv r3 = r6.zzh
            com.google.android.gms.internal.ads.zzcik r3 = r3.zzO()
            int r3 = r3.zzb
            goto L58
        L57:
            r3 = 0
        L58:
            if (r1 != 0) goto L6b
            com.google.android.gms.internal.ads.zzcgv r1 = r6.zzh
            com.google.android.gms.internal.ads.zzcik r1 = r1.zzO()
            if (r1 == 0) goto L6c
            com.google.android.gms.internal.ads.zzcgv r1 = r6.zzh
            com.google.android.gms.internal.ads.zzcik r1 = r1.zzO()
            int r2 = r1.zza
            goto L6c
        L6b:
            r2 = r1
        L6c:
            android.content.Context r1 = r6.zzi
            com.google.android.gms.internal.ads.zzcbg r4 = com.google.android.gms.ads.internal.client.zzay.zzb()
            int r1 = r4.zzb(r1, r3)
            r6.zzf = r1
            android.content.Context r1 = r6.zzi
            com.google.android.gms.internal.ads.zzcbg r3 = com.google.android.gms.ads.internal.client.zzay.zzb()
            int r1 = r3.zzb(r1, r2)
            r6.zzg = r1
        L84:
            int r0 = r8 - r0
            int r1 = r6.zzf
            int r2 = r6.zzg
            r6.zzf(r7, r0, r1, r2)
            com.google.android.gms.internal.ads.zzcgv r0 = r6.zzh
            com.google.android.gms.internal.ads.zzcii r0 = r0.zzN()
            r0.zzB(r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbsr.zzb(int, int):void");
    }
}
