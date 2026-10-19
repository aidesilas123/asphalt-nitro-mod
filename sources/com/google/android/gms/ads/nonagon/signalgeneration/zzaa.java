package com.google.android.gms.ads.nonagon.signalgeneration;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.util.zzbz;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzasi;
import com.google.android.gms.internal.ads.zzasj;
import com.google.android.gms.internal.ads.zzbcu;
import com.google.android.gms.internal.ads.zzbdc;
import com.google.android.gms.internal.ads.zzbeo;
import com.google.android.gms.internal.ads.zzbue;
import com.google.android.gms.internal.ads.zzbun;
import com.google.android.gms.internal.ads.zzcad;
import com.google.android.gms.internal.ads.zzcai;
import com.google.android.gms.internal.ads.zzcbn;
import com.google.android.gms.internal.ads.zzcbt;
import com.google.android.gms.internal.ads.zzcca;
import com.google.android.gms.internal.ads.zzciq;
import com.google.android.gms.internal.ads.zzdpj;
import com.google.android.gms.internal.ads.zzdtk;
import com.google.android.gms.internal.ads.zzdtu;
import com.google.android.gms.internal.ads.zzffn;
import com.google.android.gms.internal.ads.zzfkh;
import com.google.android.gms.internal.ads.zzfkk;
import com.google.android.gms.internal.ads.zzfla;
import com.google.android.gms.internal.ads.zzftn;
import com.google.android.gms.internal.ads.zzfun;
import com.google.android.gms.internal.ads.zzgah;
import com.google.android.gms.internal.ads.zzgai;
import com.google.android.gms.internal.ads.zzgas;
import com.google.android.gms.internal.ads.zzgbb;
import com.google.android.gms.internal.ads.zzgbl;
import com.google.common.util.concurrent.h0;
import com.json.o2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaa extends zzcad {
    protected static final List zza = new ArrayList(Arrays.asList("/aclk", "/pcs/click", "/dbm/clk"));
    protected static final List zzb = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com"));
    protected static final List zzc = new ArrayList(Arrays.asList("/pagead/adview", "/pcs/view", "/pagead/conversion", "/dbm/ad"));
    protected static final List zzd = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"));
    public static final /* synthetic */ int zze = 0;
    private final zzcbt zzA;
    private String zzB;
    private final List zzD;
    private final List zzE;
    private final List zzF;
    private final List zzG;
    private final zzciq zzf;
    private Context zzg;
    private final zzasi zzh;
    private final zzffn zzi;
    private final zzgbl zzk;
    private final ScheduledExecutorService zzl;

    @Nullable
    private zzbun zzm;
    private final zzc zzq;
    private final zzdtu zzr;
    private final zzfla zzs;
    private zzdtk zzj = null;
    private Point zzn = new Point();
    private Point zzo = new Point();
    private final Set zzp = Collections.newSetFromMap(new WeakHashMap());
    private final AtomicInteger zzz = new AtomicInteger(0);
    private final AtomicBoolean zzH = new AtomicBoolean(false);
    private final AtomicBoolean zzI = new AtomicBoolean(false);
    private final AtomicInteger zzJ = new AtomicInteger(0);
    private final boolean zzt = ((Boolean) zzba.zzc().zza(zzbdc.zzhl)).booleanValue();
    private final boolean zzu = ((Boolean) zzba.zzc().zza(zzbdc.zzhk)).booleanValue();
    private final boolean zzv = ((Boolean) zzba.zzc().zza(zzbdc.zzhn)).booleanValue();
    private final boolean zzw = ((Boolean) zzba.zzc().zza(zzbdc.zzhp)).booleanValue();
    private final String zzx = (String) zzba.zzc().zza(zzbdc.zzho);
    private final String zzy = (String) zzba.zzc().zza(zzbdc.zzhq);
    private final String zzC = (String) zzba.zzc().zza(zzbdc.zzhr);

    public zzaa(zzciq zzciqVar, Context context, zzasi zzasiVar, zzffn zzffnVar, zzgbl zzgblVar, ScheduledExecutorService scheduledExecutorService, zzdtu zzdtuVar, zzfla zzflaVar, zzcbt zzcbtVar) {
        List listZzac;
        this.zzf = zzciqVar;
        this.zzg = context;
        this.zzh = zzasiVar;
        this.zzi = zzffnVar;
        this.zzk = zzgblVar;
        this.zzl = scheduledExecutorService;
        this.zzq = zzciqVar.zzn();
        this.zzr = zzdtuVar;
        this.zzs = zzflaVar;
        this.zzA = zzcbtVar;
        if (((Boolean) zzba.zzc().zza(zzbdc.zzhs)).booleanValue()) {
            this.zzD = zzac((String) zzba.zzc().zza(zzbdc.zzht));
            this.zzE = zzac((String) zzba.zzc().zza(zzbdc.zzhu));
            this.zzF = zzac((String) zzba.zzc().zza(zzbdc.zzhv));
            listZzac = zzac((String) zzba.zzc().zza(zzbdc.zzhw));
        } else {
            this.zzD = zza;
            this.zzE = zzb;
            this.zzF = zzc;
            listZzac = zzd;
        }
        this.zzG = listZzac;
    }

    static /* bridge */ /* synthetic */ void zzH(zzaa zzaaVar, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (zzaaVar.zzQ((Uri) it.next())) {
                zzaaVar.zzz.getAndIncrement();
                return;
            }
        }
    }

    static /* bridge */ /* synthetic */ void zzJ(final zzaa zzaaVar, final String str, final String str2, final zzdtk zzdtkVar) {
        if (((Boolean) zzba.zzc().zza(zzbdc.zzgW)).booleanValue()) {
            if (((Boolean) zzba.zzc().zza(zzbdc.zzhc)).booleanValue()) {
                zzcca.zza.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzk
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zzL(str, str2, zzdtkVar);
                    }
                });
            } else {
                zzaaVar.zzq.zzd(str, str2, zzdtkVar);
            }
        }
    }

    static final /* synthetic */ Uri zzS(Uri uri, String str) {
        return !TextUtils.isEmpty(str) ? zzab(uri, "nas", str) : uri;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final com.google.android.gms.ads.nonagon.signalgeneration.zzh zzT(android.content.Context r8, java.lang.String r9, java.lang.String r10, com.google.android.gms.ads.internal.client.zzq r11, com.google.android.gms.ads.internal.client.zzl r12) {
        /*
            Method dump skipped, instruction units count: 246
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzT(android.content.Context, java.lang.String, java.lang.String, com.google.android.gms.ads.internal.client.zzq, com.google.android.gms.ads.internal.client.zzl):com.google.android.gms.ads.nonagon.signalgeneration.zzh");
    }

    private final h0 zzU(final String str) {
        final zzdpj[] zzdpjVarArr = new zzdpj[1];
        h0 h0VarZzn = zzgbb.zzn(this.zzi.zza(), new zzgai() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzl
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return this.zza.zzv(zzdpjVarArr, str, (zzdpj) obj);
            }
        }, this.zzk);
        h0VarZzn.addListener(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzm
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzK(zzdpjVarArr);
            }
        }, this.zzk);
        return zzgbb.zze(zzgbb.zzm((zzgas) zzgbb.zzo(zzgas.zzu(h0VarZzn), ((Integer) zzba.zzc().zza(zzbdc.zzhE)).intValue(), TimeUnit.MILLISECONDS, this.zzl), new zzftn() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzs
            @Override // com.google.android.gms.internal.ads.zzftn
            public final Object apply(Object obj) {
                int i = zzaa.zze;
                return ((JSONObject) obj).optString("nas");
            }
        }, this.zzk), Exception.class, new zzftn() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzt
            @Override // com.google.android.gms.internal.ads.zzftn
            public final Object apply(Object obj) {
                int i = zzaa.zze;
                zzcbn.zzh("", (Exception) obj);
                return null;
            }
        }, this.zzk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzV() {
        zzgbb.zzr(((Boolean) zzba.zzc().zza(zzbdc.zzko)).booleanValue() ? zzgbb.zzk(new zzgah() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzi
            @Override // com.google.android.gms.internal.ads.zzgah
            public final h0 zza() {
                return this.zza.zzu();
            }
        }, zzcca.zza) : zzT(this.zzg, null, AdFormat.BANNER.name(), null, null).zzc(), new zzz(this), this.zzf.zzB());
    }

    private final void zzW() {
        if (((Boolean) zzba.zzc().zza(zzbdc.zzjl)).booleanValue()) {
            if (((Boolean) zzba.zzc().zza(zzbdc.zzjo)).booleanValue()) {
                return;
            }
            if (((Boolean) zzba.zzc().zza(zzbdc.zzjs)).booleanValue() && this.zzH.getAndSet(true)) {
                return;
            }
            zzV();
        }
    }

    private final void zzX(List list, final IObjectWrapper iObjectWrapper, zzbue zzbueVar, boolean z) {
        h0 h0VarZzb;
        if (!((Boolean) zzba.zzc().zza(zzbdc.zzhD)).booleanValue()) {
            zzcbn.zzj("The updating URL feature is not enabled.");
            try {
                zzbueVar.zze("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e2) {
                zzcbn.zzh("", e2);
                return;
            }
        }
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (zzQ((Uri) it.next())) {
                i++;
            }
        }
        if (i > 1) {
            zzcbn.zzj("Multiple google urls found: ".concat(String.valueOf(list)));
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            final Uri uri = (Uri) it2.next();
            if (zzQ(uri)) {
                h0VarZzb = this.zzk.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzn
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.zza.zzm(uri, iObjectWrapper);
                    }
                });
                if (zzaa()) {
                    h0VarZzb = zzgbb.zzn(h0VarZzb, new zzgai() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzo
                        @Override // com.google.android.gms.internal.ads.zzgai
                        public final h0 zza(Object obj) {
                            zzaa zzaaVar = this.zza;
                            return zzgbb.zzm(zzaaVar.zzU("google.afma.nativeAds.getPublisherCustomRenderedClickSignals"), new zzftn() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzp
                                @Override // com.google.android.gms.internal.ads.zzftn
                                public final Object apply(Object obj2) {
                                    return zzaa.zzS(uri, (String) obj2);
                                }
                            }, zzaaVar.zzk);
                        }
                    }, this.zzk);
                } else {
                    zzcbn.zzi("Asset view map is empty.");
                }
            } else {
                zzcbn.zzj("Not a Google URL: ".concat(String.valueOf(uri)));
                h0VarZzb = zzgbb.zzh(uri);
            }
            arrayList.add(h0VarZzb);
        }
        zzgbb.zzr(zzgbb.zzd(arrayList), new zzy(this, zzbueVar, z), this.zzf.zzB());
    }

    private final void zzY(final List list, final IObjectWrapper iObjectWrapper, zzbue zzbueVar, boolean z) {
        if (!((Boolean) zzba.zzc().zza(zzbdc.zzhD)).booleanValue()) {
            try {
                zzbueVar.zze("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e2) {
                zzcbn.zzh("", e2);
                return;
            }
        }
        h0 h0VarZzb = this.zzk.zzb(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzu
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzC(list, iObjectWrapper);
            }
        });
        if (zzaa()) {
            h0VarZzb = zzgbb.zzn(h0VarZzb, new zzgai() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzv
                @Override // com.google.android.gms.internal.ads.zzgai
                public final h0 zza(Object obj) {
                    return this.zza.zzw((ArrayList) obj);
                }
            }, this.zzk);
        } else {
            zzcbn.zzi("Asset view map is empty.");
        }
        zzgbb.zzr(h0VarZzb, new zzx(this, zzbueVar, z), this.zzf.zzB());
    }

    private static boolean zzZ(@NonNull Uri uri, List list, List list2) {
        String host = uri.getHost();
        String path = uri.getPath();
        if (host != null && path != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (path.contains((String) it.next())) {
                    Iterator it2 = list2.iterator();
                    while (it2.hasNext()) {
                        if (host.endsWith((String) it2.next())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    private final boolean zzaa() {
        Map map;
        zzbun zzbunVar = this.zzm;
        return (zzbunVar == null || (map = zzbunVar.zzb) == null || map.isEmpty()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Uri zzab(Uri uri, String str, String str2) {
        String string = uri.toString();
        int iIndexOf = string.indexOf("&adurl=");
        if (iIndexOf == -1) {
            iIndexOf = string.indexOf("?adurl=");
        }
        if (iIndexOf == -1) {
            return uri.buildUpon().appendQueryParameter(str, str2).build();
        }
        int i = iIndexOf + 1;
        return Uri.parse(string.substring(0, i) + str + o2.i.b + str2 + o2.i.c + string.substring(i));
    }

    private static final List zzac(String str) {
        String[] strArrSplit = TextUtils.split(str, ",");
        ArrayList arrayList = new ArrayList();
        for (String str2 : strArrSplit) {
            if (!zzfun.zzd(str2)) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    static /* bridge */ /* synthetic */ zzfkh zzr(h0 h0Var, zzcai zzcaiVar) {
        if (!zzfkk.zza() || !((Boolean) zzbeo.zze.zze()).booleanValue()) {
            return null;
        }
        try {
            zzfkh zzfkhVarZzb = ((zzh) zzgbb.zzp(h0Var)).zzb();
            zzfkhVarZzb.zzd(new ArrayList(Collections.singletonList(zzcaiVar.zzb)));
            com.google.android.gms.ads.internal.client.zzl zzlVar = zzcaiVar.zzd;
            zzfkhVarZzb.zzb(zzlVar == null ? "" : zzlVar.zzp);
            return zzfkhVarZzb;
        } catch (ExecutionException e2) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, "SignalGeneratorImpl.getConfiguredCriticalUserJourney");
            return null;
        }
    }

    final /* synthetic */ ArrayList zzB(List list, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (!zzR(uri) || TextUtils.isEmpty(str)) {
                arrayList.add(uri);
            } else {
                arrayList.add(zzab(uri, "nas", str));
            }
        }
        return arrayList;
    }

    final /* synthetic */ ArrayList zzC(List list, IObjectWrapper iObjectWrapper) throws Exception {
        this.zzh.zzc();
        String strZzh = this.zzh.zzc().zzh(this.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null);
        if (TextUtils.isEmpty(strZzh)) {
            throw new Exception("Failed to get view signals.");
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (zzR(uri)) {
                arrayList.add(zzab(uri, "ms", strZzh));
            } else {
                zzcbn.zzj("Not a Google URL: ".concat(String.valueOf(uri)));
                arrayList.add(uri);
            }
        }
        if (arrayList.isEmpty()) {
            throw new Exception("Empty impression URLs result.");
        }
        return arrayList;
    }

    final /* synthetic */ void zzK(zzdpj[] zzdpjVarArr) {
        zzdpj zzdpjVar = zzdpjVarArr[0];
        if (zzdpjVar != null) {
            this.zzi.zzb(zzgbb.zzh(zzdpjVar));
        }
    }

    final /* synthetic */ void zzL(String str, String str2, zzdtk zzdtkVar) {
        this.zzq.zzd(str, str2, zzdtkVar);
    }

    @VisibleForTesting
    final boolean zzQ(@NonNull Uri uri) {
        return zzZ(uri, this.zzD, this.zzE);
    }

    @VisibleForTesting
    final boolean zzR(@NonNull Uri uri) {
        return zzZ(uri, this.zzF, this.zzG);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x006f  */
    @Override // com.google.android.gms.internal.ads.zzcae
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zze(com.google.android.gms.dynamic.IObjectWrapper r14, final com.google.android.gms.internal.ads.zzcai r15, com.google.android.gms.internal.ads.zzcab r16) {
        /*
            Method dump skipped, instruction units count: 202
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zze(com.google.android.gms.dynamic.IObjectWrapper, com.google.android.gms.internal.ads.zzcai, com.google.android.gms.internal.ads.zzcab):void");
    }

    @Override // com.google.android.gms.internal.ads.zzcae
    public final void zzf(zzbun zzbunVar) {
        this.zzm = zzbunVar;
        this.zzi.zzc(1);
    }

    @Override // com.google.android.gms.internal.ads.zzcae
    public final void zzg(List list, IObjectWrapper iObjectWrapper, zzbue zzbueVar) {
        zzX(list, iObjectWrapper, zzbueVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzcae
    public final void zzh(List list, IObjectWrapper iObjectWrapper, zzbue zzbueVar) {
        zzY(list, iObjectWrapper, zzbueVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzcae
    @SuppressLint({"AddJavascriptInterface"})
    public final void zzi(IObjectWrapper iObjectWrapper) {
        if (((Boolean) zzba.zzc().zza(zzbdc.zzjk)).booleanValue()) {
            if (Build.VERSION.SDK_INT < 21) {
                zzcbn.zzj("Not registering the webview because the Android API level is lower than Lollopop which has security risks on webviews.");
                return;
            }
            zzbcu zzbcuVar = zzbdc.zzhB;
            if (!((Boolean) zzba.zzc().zza(zzbcuVar)).booleanValue()) {
                zzW();
            }
            WebView webView = (WebView) ObjectWrapper.unwrap(iObjectWrapper);
            if (webView == null) {
                zzcbn.zzg("The webView cannot be null.");
                return;
            }
            if (this.zzp.contains(webView)) {
                zzcbn.zzi("This webview has already been registered.");
                return;
            }
            this.zzp.add(webView);
            webView.addJavascriptInterface(new TaggingLibraryJsInterface(webView, this.zzh, this.zzr, this.zzs), "gmaSdk");
            if (((Boolean) zzba.zzc().zza(zzbdc.zzju)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzo().zzs();
            }
            if (((Boolean) zzba.zzc().zza(zzbcuVar)).booleanValue()) {
                zzW();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcae
    public final void zzj(IObjectWrapper iObjectWrapper) {
        if (((Boolean) zzba.zzc().zza(zzbdc.zzhD)).booleanValue()) {
            MotionEvent motionEvent = (MotionEvent) ObjectWrapper.unwrap(iObjectWrapper);
            zzbun zzbunVar = this.zzm;
            this.zzn = zzbz.zza(motionEvent, zzbunVar == null ? null : zzbunVar.zza);
            if (motionEvent.getAction() == 0) {
                this.zzo = this.zzn;
            }
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            Point point = this.zzn;
            motionEventObtain.setLocation(point.x, point.y);
            this.zzh.zzd(motionEventObtain);
            motionEventObtain.recycle();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcae
    public final void zzk(List list, IObjectWrapper iObjectWrapper, zzbue zzbueVar) {
        zzX(list, iObjectWrapper, zzbueVar, false);
    }

    @Override // com.google.android.gms.internal.ads.zzcae
    public final void zzl(List list, IObjectWrapper iObjectWrapper, zzbue zzbueVar) {
        zzY(list, iObjectWrapper, zzbueVar, false);
    }

    final /* synthetic */ Uri zzm(Uri uri, IObjectWrapper iObjectWrapper) throws Exception {
        try {
            uri = this.zzh.zza(uri, this.zzg, (View) ObjectWrapper.unwrap(iObjectWrapper), null);
        } catch (zzasj e2) {
            zzcbn.zzk("", e2);
        }
        if (uri.getQueryParameter("ms") != null) {
            return uri;
        }
        throw new Exception("Failed to append spam signals to click url.");
    }

    final /* synthetic */ zzh zzq(zzcai zzcaiVar) throws Exception {
        return zzT(this.zzg, zzcaiVar.zza, zzcaiVar.zzb, zzcaiVar.zzc, zzcaiVar.zzd);
    }

    final /* synthetic */ h0 zzu() throws Exception {
        return zzT(this.zzg, null, AdFormat.BANNER.name(), null, null).zzc();
    }

    final /* synthetic */ h0 zzv(zzdpj[] zzdpjVarArr, String str, zzdpj zzdpjVar) throws Exception {
        zzdpjVarArr[0] = zzdpjVar;
        Context context = this.zzg;
        zzbun zzbunVar = this.zzm;
        Map map = zzbunVar.zzb;
        JSONObject jSONObjectZzd = zzbz.zzd(context, map, map, zzbunVar.zza, null);
        JSONObject jSONObjectZzg = zzbz.zzg(this.zzg, this.zzm.zza);
        JSONObject jSONObjectZzf = zzbz.zzf(this.zzm.zza);
        JSONObject jSONObjectZze = zzbz.zze(this.zzg, this.zzm.zza);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("asset_view_signal", jSONObjectZzd);
        jSONObject.put("ad_view_signal", jSONObjectZzg);
        jSONObject.put("scroll_view_signal", jSONObjectZzf);
        jSONObject.put("lock_screen_signal", jSONObjectZze);
        if ("google.afma.nativeAds.getPublisherCustomRenderedClickSignals".equals(str)) {
            jSONObject.put("click_signal", zzbz.zzc(null, this.zzg, this.zzo, this.zzn));
        }
        return zzdpjVar.zzd(str, jSONObject);
    }

    final /* synthetic */ h0 zzw(final ArrayList arrayList) throws Exception {
        return zzgbb.zzm(zzU("google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"), new zzftn() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzj
            @Override // com.google.android.gms.internal.ads.zzftn
            public final Object apply(Object obj) {
                return this.zza.zzB(arrayList, (String) obj);
            }
        }, this.zzk);
    }
}
