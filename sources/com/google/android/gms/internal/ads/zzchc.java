package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.view.ViewCompat;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.games.GamesActivityResultCodes;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@VisibleForTesting(otherwise = 3)
public class zzchc extends WebViewClient implements zzcii {
    public static final /* synthetic */ int zzb = 0;
    private boolean zzA;
    private int zzB;
    private boolean zzC;

    @Nullable
    private final zzefa zzE;
    private View.OnAttachStateChangeListener zzF;

    @Nullable
    protected zzbyo zza;
    private final zzcgv zzc;

    @Nullable
    private final zzayp zzd;
    private com.google.android.gms.ads.internal.client.zza zzg;
    private com.google.android.gms.ads.internal.overlay.zzo zzh;
    private zzcig zzi;
    private zzcih zzj;
    private zzbit zzk;
    private zzbiv zzl;
    private zzdge zzm;
    private boolean zzn;
    private boolean zzo;
    private boolean zzs;
    private boolean zzt;
    private boolean zzu;
    private com.google.android.gms.ads.internal.overlay.zzz zzv;

    @Nullable
    private zzbsr zzw;
    private com.google.android.gms.ads.internal.zzb zzx;
    private boolean zzz;
    private final HashMap zze = new HashMap();
    private final Object zzf = new Object();
    private int zzp = 0;
    private String zzq = "";
    private String zzr = "";
    private zzbsm zzy = null;
    private final HashSet zzD = new HashSet(Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzfD)).split(",")));

    @VisibleForTesting
    public zzchc(zzcgv zzcgvVar, @Nullable zzayp zzaypVar, boolean z, zzbsr zzbsrVar, @Nullable zzbsm zzbsmVar, @Nullable zzefa zzefaVar) {
        this.zzd = zzaypVar;
        this.zzc = zzcgvVar;
        this.zzs = z;
        this.zzw = zzbsrVar;
        this.zzE = zzefaVar;
    }

    @Nullable
    private static WebResourceResponse zzN() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzaI)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00ef, code lost:
    
        com.google.android.gms.ads.internal.zzt.zzp();
        com.google.android.gms.ads.internal.zzt.zzp();
        r14 = r3.getContentType();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00fd, code lost:
    
        r4 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0101, code lost:
    
        if (android.text.TextUtils.isEmpty(r14) == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0103, code lost:
    
        r6 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0105, code lost:
    
        r6 = r14.split(";")[0].trim();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0110, code lost:
    
        com.google.android.gms.ads.internal.zzt.zzp();
        r14 = r3.getContentType();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x011b, code lost:
    
        if (android.text.TextUtils.isEmpty(r14) == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x011d, code lost:
    
        r7 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x011f, code lost:
    
        r14 = r14.split(";");
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0124, code lost:
    
        if (r14.length != 1) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0127, code lost:
    
        r0 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0129, code lost:
    
        if (r0 >= r14.length) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0137, code lost:
    
        if (r14[r0].trim().startsWith(com.json.b4.K) == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0139, code lost:
    
        r1 = r14[r0].trim().split(com.ironsource.o2.i.b);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0146, code lost:
    
        if (r1.length <= 1) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0148, code lost:
    
        r4 = r1[1].trim();
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x014f, code lost:
    
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0152, code lost:
    
        r14 = r3.getHeaderFields();
        r10 = new java.util.HashMap(r14.size());
        r14 = r14.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x016b, code lost:
    
        if (r14.hasNext() == false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x016d, code lost:
    
        r0 = r14.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0177, code lost:
    
        if (r0.getKey() == null) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x017d, code lost:
    
        if (r0.getValue() == null) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0189, code lost:
    
        if (r0.getValue().isEmpty() != false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x018b, code lost:
    
        r10.put(r0.getKey(), r0.getValue().get(0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01a1, code lost:
    
        r5 = com.google.android.gms.ads.internal.zzt.zzq().zzc(r6, r7, r3.getResponseCode(), r3.getResponseMessage(), r10, r3.getInputStream());
     */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final android.webkit.WebResourceResponse zzO(java.lang.String r13, java.util.Map r14) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 465
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzchc.zzO(java.lang.String, java.util.Map):android.webkit.WebResourceResponse");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzP(Map map, List list, String str) {
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            com.google.android.gms.ads.internal.util.zze.zza("Received GMSG: ".concat(str));
            for (String str2 : map.keySet()) {
                com.google.android.gms.ads.internal.util.zze.zza("  " + str2 + ": " + ((String) map.get(str2)));
            }
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((zzbkd) it.next()).zza(this.zzc, map);
        }
    }

    private final void zzQ() {
        View.OnAttachStateChangeListener onAttachStateChangeListener = this.zzF;
        if (onAttachStateChangeListener == null) {
            return;
        }
        ((View) this.zzc).removeOnAttachStateChangeListener(onAttachStateChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzR(final View view, final zzbyo zzbyoVar, final int i) {
        if (!zzbyoVar.zzi() || i <= 0) {
            return;
        }
        zzbyoVar.zzg(view);
        if (zzbyoVar.zzi()) {
            com.google.android.gms.ads.internal.util.zzt.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcgw
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzo(view, zzbyoVar, i);
                }
            }, 100L);
        }
    }

    private static final boolean zzS(zzcgv zzcgvVar) {
        if (zzcgvVar.zzD() != null) {
            return zzcgvVar.zzD().zzaj;
        }
        return false;
    }

    private static final boolean zzT(boolean z, zzcgv zzcgvVar) {
        return (!z || zzcgvVar.zzO().zzi() || zzcgvVar.zzS().equals("interstitial_mb")) ? false : true;
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        com.google.android.gms.ads.internal.client.zza zzaVar = this.zzg;
        if (zzaVar != null) {
            zzaVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        com.google.android.gms.ads.internal.util.zze.zza("Loading resource: ".concat(String.valueOf(str)));
        Uri uri = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(uri.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uri.getHost())) {
            zzj(uri);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.zzf) {
            if (this.zzc.zzaz()) {
                com.google.android.gms.ads.internal.util.zze.zza("Blank page loaded, 1...");
                this.zzc.zzU();
                return;
            }
            this.zzz = true;
            zzcih zzcihVar = this.zzj;
            if (zzcihVar != null) {
                zzcihVar.zza();
                this.zzj = null;
            }
            zzg();
            if (this.zzc.zzL() != null) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzkY)).booleanValue()) {
                    this.zzc.zzL().zzG(str);
                }
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, int i, String str, String str2) {
        this.zzo = true;
        this.zzp = i;
        this.zzq = str;
        this.zzr = str2;
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(26)
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.zzc.zzay(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }

    @Override // android.webkit.WebViewClient
    @Nullable
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return zzc(str, Collections.emptyMap());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case 126:
                    case 127:
                    case 128:
                    case 129:
                    case 130:
                        return true;
                    default:
                        return false;
                }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        com.google.android.gms.ads.internal.util.zze.zza("AdWebView shouldOverrideUrlLoading: ".concat(String.valueOf(str)));
        Uri uriZza = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(uriZza.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uriZza.getHost())) {
            zzj(uriZza);
        } else {
            if (this.zzn && webView == this.zzc.zzG()) {
                String scheme = uriZza.getScheme();
                if (ProxyConfig.MATCH_HTTP.equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                    com.google.android.gms.ads.internal.client.zza zzaVar = this.zzg;
                    if (zzaVar != null) {
                        zzaVar.onAdClicked();
                        zzbyo zzbyoVar = this.zza;
                        if (zzbyoVar != null) {
                            zzbyoVar.zzh(str);
                        }
                        this.zzg = null;
                    }
                    zzdge zzdgeVar = this.zzm;
                    if (zzdgeVar != null) {
                        zzdgeVar.zzbL();
                        this.zzm = null;
                    }
                    return super.shouldOverrideUrlLoading(webView, str);
                }
            }
            if (this.zzc.zzG().willNotDraw()) {
                zzcbn.zzj("AdWebView unable to handle URL: ".concat(String.valueOf(str)));
            } else {
                try {
                    zzasi zzasiVarZzI = this.zzc.zzI();
                    if (zzasiVarZzI != null && zzasiVarZzI.zzf(uriZza)) {
                        Context context = this.zzc.getContext();
                        zzcgv zzcgvVar = this.zzc;
                        uriZza = zzasiVarZzI.zza(uriZza, context, (View) zzcgvVar, zzcgvVar.zzi());
                    }
                } catch (zzasj unused) {
                    zzcbn.zzj("Unable to append parameter to URL: ".concat(String.valueOf(str)));
                }
                com.google.android.gms.ads.internal.zzb zzbVar = this.zzx;
                if (zzbVar == null || zzbVar.zzc()) {
                    zzt(new com.google.android.gms.ads.internal.overlay.zzc("android.intent.action.VIEW", uriZza.toString(), null, null, null, null, null, null), true);
                } else {
                    zzbVar.zzb(str);
                }
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzA(zzcig zzcigVar) {
        this.zzi = zzcigVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzB(int i, int i2) {
        zzbsm zzbsmVar = this.zzy;
        if (zzbsmVar != null) {
            zzbsmVar.zzd(i, i2);
        }
    }

    public final void zzC(boolean z) {
        this.zzn = false;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzD(boolean z) {
        synchronized (this.zzf) {
            this.zzu = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzE() {
        synchronized (this.zzf) {
            this.zzn = false;
            this.zzs = true;
            zzcca.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcgx
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzn();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzF(boolean z) {
        synchronized (this.zzf) {
            this.zzt = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzG(zzcih zzcihVar) {
        this.zzj = zzcihVar;
    }

    public final void zzH(String str, zzbkd zzbkdVar) {
        synchronized (this.zzf) {
            List list = (List) this.zze.get(str);
            if (list == null) {
                return;
            }
            list.remove(zzbkdVar);
        }
    }

    public final void zzI(String str, Predicate predicate) {
        synchronized (this.zzf) {
            List<zzbkd> list = (List) this.zze.get(str);
            if (list == null) {
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (zzbkd zzbkdVar : list) {
                if (predicate.apply(zzbkdVar)) {
                    arrayList.add(zzbkdVar);
                }
            }
            list.removeAll(arrayList);
        }
    }

    public final boolean zzJ() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzu;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final boolean zzK() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzs;
        }
        return z;
    }

    public final boolean zzL() {
        boolean z;
        synchronized (this.zzf) {
            z = this.zzt;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzM(@Nullable com.google.android.gms.ads.internal.client.zza zzaVar, @Nullable zzbit zzbitVar, @Nullable com.google.android.gms.ads.internal.overlay.zzo zzoVar, @Nullable zzbiv zzbivVar, @Nullable com.google.android.gms.ads.internal.overlay.zzz zzzVar, boolean z, @Nullable zzbkf zzbkfVar, @Nullable com.google.android.gms.ads.internal.zzb zzbVar, @Nullable zzbst zzbstVar, @Nullable zzbyo zzbyoVar, @Nullable final zzeep zzeepVar, @Nullable final zzfla zzflaVar, @Nullable zzdtp zzdtpVar, @Nullable zzfje zzfjeVar, @Nullable zzbkw zzbkwVar, @Nullable final zzdge zzdgeVar, @Nullable zzbkv zzbkvVar, @Nullable zzbkp zzbkpVar, @Nullable final zzcpo zzcpoVar) {
        com.google.android.gms.ads.internal.zzb zzbVar2 = zzbVar == null ? new com.google.android.gms.ads.internal.zzb(this.zzc.getContext(), zzbyoVar, null) : zzbVar;
        this.zzy = new zzbsm(this.zzc, zzbstVar);
        this.zza = zzbyoVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzaQ)).booleanValue()) {
            zzz("/adMetadata", new zzbis(zzbitVar));
        }
        if (zzbivVar != null) {
            zzz("/appEvent", new zzbiu(zzbivVar));
        }
        zzz("/backButton", zzbkc.zzj);
        zzz("/refresh", zzbkc.zzk);
        zzz("/canOpenApp", zzbkc.zzb);
        zzz("/canOpenURLs", zzbkc.zza);
        zzz("/canOpenIntents", zzbkc.zzc);
        zzz("/close", zzbkc.zzd);
        zzz("/customClose", zzbkc.zze);
        zzz("/instrument", zzbkc.zzn);
        zzz("/delayPageLoaded", zzbkc.zzp);
        zzz("/delayPageClosed", zzbkc.zzq);
        zzz("/getLocationInfo", zzbkc.zzr);
        zzz("/log", zzbkc.zzg);
        zzz("/mraid", new zzbkj(zzbVar2, this.zzy, zzbstVar));
        zzbsr zzbsrVar = this.zzw;
        if (zzbsrVar != null) {
            zzz("/mraidLoaded", zzbsrVar);
        }
        com.google.android.gms.ads.internal.zzb zzbVar3 = zzbVar2;
        zzz("/open", new zzbko(zzbVar2, this.zzy, zzeepVar, zzdtpVar, zzfjeVar, zzcpoVar));
        zzz("/precache", new zzcfi());
        zzz("/touch", zzbkc.zzi);
        zzz("/video", zzbkc.zzl);
        zzz("/videoMeta", zzbkc.zzm);
        if (zzeepVar == null || zzflaVar == null) {
            zzz("/click", new zzbjb(zzdgeVar, zzcpoVar));
            zzz("/httpTrack", zzbkc.zzf);
        } else {
            zzz("/click", new zzbkd() { // from class: com.google.android.gms.internal.ads.zzfew
                @Override // com.google.android.gms.internal.ads.zzbkd
                public final void zza(Object obj, Map map) {
                    zzcgv zzcgvVar = (zzcgv) obj;
                    zzbkc.zzc(map, zzdgeVar);
                    String str = (String) map.get("u");
                    if (str == null) {
                        zzcbn.zzj("URL missing from click GMSG.");
                        return;
                    }
                    zzeep zzeepVar2 = zzeepVar;
                    zzfla zzflaVar2 = zzflaVar;
                    zzgbb.zzr(zzbkc.zza(zzcgvVar, str), new zzfey(zzcgvVar, zzcpoVar, zzflaVar2, zzeepVar2), zzcca.zza);
                }
            });
            zzz("/httpTrack", new zzbkd() { // from class: com.google.android.gms.internal.ads.zzfex
                @Override // com.google.android.gms.internal.ads.zzbkd
                public final void zza(Object obj, Map map) {
                    zzcgm zzcgmVar = (zzcgm) obj;
                    String str = (String) map.get("u");
                    if (str == null) {
                        zzcbn.zzj("URL missing from httpTrack GMSG.");
                    } else if (zzcgmVar.zzD().zzaj) {
                        zzeepVar.zzd(new zzeer(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis(), ((zzchs) zzcgmVar).zzP().zzb, str, 2));
                    } else {
                        zzflaVar.zzc(str, null);
                    }
                }
            });
        }
        if (com.google.android.gms.ads.internal.zzt.zzn().zzu(this.zzc.getContext())) {
            zzz("/logScionEvent", new zzbki(this.zzc.getContext()));
        }
        if (zzbkfVar != null) {
            zzz("/setInterstitialProperties", new zzbke(zzbkfVar));
        }
        if (zzbkwVar != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zziJ)).booleanValue()) {
                zzz("/inspectorNetworkExtras", zzbkwVar);
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjc)).booleanValue() && zzbkvVar != null) {
            zzz("/shareSheet", zzbkvVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjh)).booleanValue() && zzbkpVar != null) {
            zzz("/inspectorOutOfContextTest", zzbkpVar);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzkF)).booleanValue()) {
            zzz("/bindPlayStoreOverlay", zzbkc.zzu);
            zzz("/presentPlayStoreOverlay", zzbkc.zzv);
            zzz("/expandPlayStoreOverlay", zzbkc.zzw);
            zzz("/collapsePlayStoreOverlay", zzbkc.zzx);
            zzz("/closePlayStoreOverlay", zzbkc.zzy);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcY)).booleanValue()) {
            zzz("/setPAIDPersonalizationEnabled", zzbkc.zzA);
            zzz("/resetPAID", zzbkc.zzz);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzkX)).booleanValue()) {
            zzcgv zzcgvVar = this.zzc;
            if (zzcgvVar.zzD() != null && zzcgvVar.zzD().zzar) {
                zzz("/writeToLocalStorage", zzbkc.zzB);
                zzz("/clearLocalStorageKeys", zzbkc.zzC);
            }
        }
        this.zzg = zzaVar;
        this.zzh = zzoVar;
        this.zzk = zzbitVar;
        this.zzl = zzbivVar;
        this.zzv = zzzVar;
        this.zzx = zzbVar3;
        this.zzm = zzdgeVar;
        this.zzn = z;
    }

    public final ViewTreeObserver.OnGlobalLayoutListener zza() {
        synchronized (this.zzf) {
        }
        return null;
    }

    public final ViewTreeObserver.OnScrollChangedListener zzb() {
        synchronized (this.zzf) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzdge
    public final void zzbL() {
        zzdge zzdgeVar = this.zzm;
        if (zzdgeVar != null) {
            zzdgeVar.zzbL();
        }
    }

    @Nullable
    protected final WebResourceResponse zzc(String str, Map map) {
        zzaxy zzaxyVarZzb;
        try {
            String strZzc = zzbzu.zzc(str, this.zzc.getContext(), this.zzC);
            if (!strZzc.equals(str)) {
                return zzO(strZzc, map);
            }
            zzayb zzaybVarZza = zzayb.zza(Uri.parse(str));
            if (zzaybVarZza != null && (zzaxyVarZzb = com.google.android.gms.ads.internal.zzt.zzc().zzb(zzaybVarZza)) != null && zzaxyVarZzb.zze()) {
                return new WebResourceResponse("", "", zzaxyVarZzb.zzc());
            }
            if (zzcbm.zzk() && ((Boolean) zzber.zzb.zze()).booleanValue()) {
                return zzO(str, map);
            }
            return null;
        } catch (Exception | NoClassDefFoundError e2) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, "AdWebViewClient.interceptRequest");
            return zzN();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final com.google.android.gms.ads.internal.zzb zzd() {
        return this.zzx;
    }

    public final void zzg() {
        if (this.zzi != null && ((this.zzz && this.zzB <= 0) || this.zzA || this.zzo)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbO)).booleanValue() && this.zzc.zzm() != null) {
                zzbdm.zza(this.zzc.zzm().zza(), this.zzc.zzk(), "awfllc");
            }
            zzcig zzcigVar = this.zzi;
            boolean z = false;
            if (!this.zzA && !this.zzo) {
                z = true;
            }
            zzcigVar.zza(z, this.zzp, this.zzq, this.zzr);
            this.zzi = null;
        }
        this.zzc.zzac();
    }

    public final void zzh() {
        zzbyo zzbyoVar = this.zza;
        if (zzbyoVar != null) {
            zzbyoVar.zze();
            this.zza = null;
        }
        zzQ();
        synchronized (this.zzf) {
            this.zze.clear();
            this.zzg = null;
            this.zzh = null;
            this.zzi = null;
            this.zzj = null;
            this.zzk = null;
            this.zzl = null;
            this.zzn = false;
            this.zzs = false;
            this.zzt = false;
            this.zzv = null;
            this.zzx = null;
            this.zzw = null;
            zzbsm zzbsmVar = this.zzy;
            if (zzbsmVar != null) {
                zzbsmVar.zza(true);
                this.zzy = null;
            }
        }
    }

    public final void zzi(boolean z) {
        this.zzC = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzj(Uri uri) {
        HashMap map = this.zze;
        String path = uri.getPath();
        List list = (List) map.get(path);
        if (path == null || list == null) {
            com.google.android.gms.ads.internal.util.zze.zza("No GMSG handler found for GMSG: ".concat(String.valueOf(uri)));
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzgL)).booleanValue() || com.google.android.gms.ads.internal.zzt.zzo().zzg() == null) {
                return;
            }
            final String strSubstring = (path == null || path.length() < 2) ? "null" : path.substring(1);
            zzcca.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcgy
                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    int i = zzchc.zzb;
                    com.google.android.gms.ads.internal.zzt.zzo().zzg().zze(strSubstring);
                }
            });
            return;
        }
        String encodedQuery = uri.getEncodedQuery();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzfC)).booleanValue() && this.zzD.contains(path) && encodedQuery != null) {
            if (encodedQuery.length() >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzfE)).intValue()) {
                com.google.android.gms.ads.internal.util.zze.zza("Parsing gmsg query params on BG thread: ".concat(path));
                zzgbb.zzr(com.google.android.gms.ads.internal.zzt.zzp().zzb(uri), new zzcha(this, list, path, uri), zzcca.zze);
                return;
            }
        }
        com.google.android.gms.ads.internal.zzt.zzp();
        zzP(com.google.android.gms.ads.internal.util.zzt.zzO(uri), list, path);
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzk() {
        zzayp zzaypVar = this.zzd;
        if (zzaypVar != null) {
            zzaypVar.zzc(GamesActivityResultCodes.RESULT_LEFT_ROOM);
        }
        this.zzA = true;
        this.zzp = GamesActivityResultCodes.RESULT_APP_MISCONFIGURED;
        this.zzq = "Page loaded delay cancel.";
        zzg();
        this.zzc.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzl() {
        synchronized (this.zzf) {
        }
        this.zzB++;
        zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzm() {
        this.zzB--;
        zzg();
    }

    final /* synthetic */ void zzn() {
        this.zzc.zzaa();
        com.google.android.gms.ads.internal.overlay.zzl zzlVarZzL = this.zzc.zzL();
        if (zzlVarZzL != null) {
            zzlVarZzL.zzz();
        }
    }

    final /* synthetic */ void zzo(View view, zzbyo zzbyoVar, int i) {
        zzR(view, zzbyoVar, i - 1);
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzp(int i, int i2, boolean z) {
        zzbsr zzbsrVar = this.zzw;
        if (zzbsrVar != null) {
            zzbsrVar.zzb(i, i2);
        }
        zzbsm zzbsmVar = this.zzy;
        if (zzbsmVar != null) {
            zzbsmVar.zzc(i, i2, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcii
    public final void zzq() {
        zzbyo zzbyoVar = this.zza;
        if (zzbyoVar != null) {
            WebView webViewZzG = this.zzc.zzG();
            if (ViewCompat.isAttachedToWindow(webViewZzG)) {
                zzR(webViewZzG, zzbyoVar, 10);
                return;
            }
            zzQ();
            zzcgz zzcgzVar = new zzcgz(this, zzbyoVar);
            this.zzF = zzcgzVar;
            ((View) this.zzc).addOnAttachStateChangeListener(zzcgzVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdge
    public final void zzs() {
        zzdge zzdgeVar = this.zzm;
        if (zzdgeVar != null) {
            zzdgeVar.zzs();
        }
    }

    public final void zzt(com.google.android.gms.ads.internal.overlay.zzc zzcVar, boolean z) {
        zzcgv zzcgvVar = this.zzc;
        boolean zZzaA = zzcgvVar.zzaA();
        boolean zZzT = zzT(zZzaA, zzcgvVar);
        boolean z2 = true;
        if (!zZzT && z) {
            z2 = false;
        }
        com.google.android.gms.ads.internal.client.zza zzaVar = zZzT ? null : this.zzg;
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = zZzaA ? null : this.zzh;
        com.google.android.gms.ads.internal.overlay.zzz zzzVar = this.zzv;
        zzcgv zzcgvVar2 = this.zzc;
        zzw(new AdOverlayInfoParcel(zzcVar, zzaVar, zzoVar, zzzVar, zzcgvVar2.zzn(), zzcgvVar2, z2 ? null : this.zzm));
    }

    public final void zzu(String str, String str2, int i) {
        zzefa zzefaVar = this.zzE;
        zzcgv zzcgvVar = this.zzc;
        zzw(new AdOverlayInfoParcel(zzcgvVar, zzcgvVar.zzn(), str, str2, 14, zzefaVar));
    }

    public final void zzv(boolean z, int i, boolean z2) {
        zzcgv zzcgvVar = this.zzc;
        boolean zZzT = zzT(zzcgvVar.zzaA(), zzcgvVar);
        boolean z3 = true;
        if (!zZzT && z2) {
            z3 = false;
        }
        com.google.android.gms.ads.internal.client.zza zzaVar = zZzT ? null : this.zzg;
        com.google.android.gms.ads.internal.overlay.zzo zzoVar = this.zzh;
        com.google.android.gms.ads.internal.overlay.zzz zzzVar = this.zzv;
        zzcgv zzcgvVar2 = this.zzc;
        zzw(new AdOverlayInfoParcel(zzaVar, zzoVar, zzzVar, zzcgvVar2, z, i, zzcgvVar2.zzn(), z3 ? null : this.zzm, zzS(this.zzc) ? this.zzE : null));
    }

    public final void zzw(AdOverlayInfoParcel adOverlayInfoParcel) {
        com.google.android.gms.ads.internal.overlay.zzc zzcVar;
        zzbsm zzbsmVar = this.zzy;
        boolean zZze = zzbsmVar != null ? zzbsmVar.zze() : false;
        com.google.android.gms.ads.internal.zzt.zzi();
        com.google.android.gms.ads.internal.overlay.zzm.zza(this.zzc.getContext(), adOverlayInfoParcel, !zZze);
        zzbyo zzbyoVar = this.zza;
        if (zzbyoVar != null) {
            String str = adOverlayInfoParcel.zzl;
            if (str == null && (zzcVar = adOverlayInfoParcel.zza) != null) {
                str = zzcVar.zzb;
            }
            zzbyoVar.zzh(str);
        }
    }

    public final void zzx(boolean z, int i, String str, String str2, boolean z2) {
        zzcgv zzcgvVar = this.zzc;
        boolean zZzaA = zzcgvVar.zzaA();
        boolean zZzT = zzT(zZzaA, zzcgvVar);
        boolean z3 = true;
        if (!zZzT && z2) {
            z3 = false;
        }
        com.google.android.gms.ads.internal.client.zza zzaVar = zZzT ? null : this.zzg;
        zzchb zzchbVar = zZzaA ? null : new zzchb(this.zzc, this.zzh);
        zzbit zzbitVar = this.zzk;
        zzbiv zzbivVar = this.zzl;
        com.google.android.gms.ads.internal.overlay.zzz zzzVar = this.zzv;
        zzcgv zzcgvVar2 = this.zzc;
        zzw(new AdOverlayInfoParcel(zzaVar, zzchbVar, zzbitVar, zzbivVar, zzzVar, zzcgvVar2, z, i, str, str2, zzcgvVar2.zzn(), z3 ? null : this.zzm, zzS(this.zzc) ? this.zzE : null));
    }

    public final void zzy(boolean z, int i, String str, boolean z2, boolean z3) {
        zzcgv zzcgvVar = this.zzc;
        boolean zZzaA = zzcgvVar.zzaA();
        boolean zZzT = zzT(zZzaA, zzcgvVar);
        boolean z4 = true;
        if (!zZzT && z2) {
            z4 = false;
        }
        com.google.android.gms.ads.internal.client.zza zzaVar = zZzT ? null : this.zzg;
        zzchb zzchbVar = zZzaA ? null : new zzchb(this.zzc, this.zzh);
        zzbit zzbitVar = this.zzk;
        zzbiv zzbivVar = this.zzl;
        com.google.android.gms.ads.internal.overlay.zzz zzzVar = this.zzv;
        zzcgv zzcgvVar2 = this.zzc;
        zzw(new AdOverlayInfoParcel(zzaVar, zzchbVar, zzbitVar, zzbivVar, zzzVar, zzcgvVar2, z, i, str, zzcgvVar2.zzn(), z4 ? null : this.zzm, zzS(this.zzc) ? this.zzE : null, z3));
    }

    public final void zzz(String str, zzbkd zzbkdVar) {
        synchronized (this.zzf) {
            List copyOnWriteArrayList = (List) this.zze.get(str);
            if (copyOnWriteArrayList == null) {
                copyOnWriteArrayList = new CopyOnWriteArrayList();
                this.zze.put(str, copyOnWriteArrayList);
            }
            copyOnWriteArrayList.add(zzbkdVar);
        }
    }
}
