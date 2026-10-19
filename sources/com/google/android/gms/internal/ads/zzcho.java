package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.internal.ads.zzbdc;
import com.google.android.gms.internal.ads.zzfqv;
import com.google.common.util.concurrent.h0;
import com.json.z5;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@SuppressLint({"ViewConstructor"})
@VisibleForTesting
final class zzcho extends WebView implements DownloadListener, ViewTreeObserver.OnGlobalLayoutListener, zzcgv {
    public static final /* synthetic */ int zza = 0;
    private boolean zzA;
    private boolean zzB;
    private zzbfv zzC;
    private zzbft zzD;
    private zzaxd zzE;
    private int zzF;
    private int zzG;
    private zzbdr zzH;
    private final zzbdr zzI;
    private zzbdr zzJ;
    private final zzbds zzK;
    private int zzL;
    private com.google.android.gms.ads.internal.overlay.zzl zzM;
    private boolean zzN;
    private final com.google.android.gms.ads.internal.util.zzco zzO;
    private int zzP;
    private int zzQ;
    private int zzR;
    private int zzS;
    private Map zzT;
    private final WindowManager zzU;
    private final zzayp zzV;
    private final zzcij zzb;
    private final zzasi zzc;
    private final zzbee zzd;
    private final zzcbt zze;
    private com.google.android.gms.ads.internal.zzl zzf;
    private final com.google.android.gms.ads.internal.zza zzg;
    private final DisplayMetrics zzh;
    private final float zzi;
    private zzfdu zzj;
    private zzfdy zzk;
    private boolean zzl;
    private boolean zzm;
    private zzchc zzn;
    private com.google.android.gms.ads.internal.overlay.zzl zzo;
    private zzflf zzp;
    private zzcik zzq;
    private final String zzr;
    private boolean zzs;
    private boolean zzt;
    private boolean zzu;
    private boolean zzv;
    private Boolean zzw;
    private boolean zzx;
    private final String zzy;
    private zzchr zzz;

    @VisibleForTesting
    protected zzcho(zzcij zzcijVar, zzcik zzcikVar, String str, boolean z, boolean z2, zzasi zzasiVar, zzbee zzbeeVar, zzcbt zzcbtVar, zzbdu zzbduVar, com.google.android.gms.ads.internal.zzl zzlVar, com.google.android.gms.ads.internal.zza zzaVar, zzayp zzaypVar, zzfdu zzfduVar, zzfdy zzfdyVar) {
        zzfdy zzfdyVar2;
        super(zzcijVar);
        this.zzl = false;
        this.zzm = false;
        this.zzx = true;
        this.zzy = "";
        this.zzP = -1;
        this.zzQ = -1;
        this.zzR = -1;
        this.zzS = -1;
        this.zzb = zzcijVar;
        this.zzq = zzcikVar;
        this.zzr = str;
        this.zzu = z;
        this.zzc = zzasiVar;
        this.zzd = zzbeeVar;
        this.zze = zzcbtVar;
        this.zzf = zzlVar;
        this.zzg = zzaVar;
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        this.zzU = windowManager;
        com.google.android.gms.ads.internal.zzt.zzp();
        DisplayMetrics displayMetricsZzs = com.google.android.gms.ads.internal.util.zzt.zzs(windowManager);
        this.zzh = displayMetricsZzs;
        this.zzi = displayMetricsZzs.density;
        this.zzV = zzaypVar;
        this.zzj = zzfduVar;
        this.zzk = zzfdyVar;
        this.zzO = new com.google.android.gms.ads.internal.util.zzco(zzcijVar.zza(), this, this, null);
        setBackgroundColor(0);
        final WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e2) {
            zzcbn.zzh("Unable to enable Javascript.", e2);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (Build.VERSION.SDK_INT >= 21) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzkL)).booleanValue()) {
                settings.setMixedContentMode(1);
            } else {
                settings.setMixedContentMode(2);
            }
        }
        settings.setUserAgentString(com.google.android.gms.ads.internal.zzt.zzp().zzc(zzcijVar, zzcbtVar.zza));
        com.google.android.gms.ads.internal.zzt.zzp();
        final Context context = getContext();
        com.google.android.gms.ads.internal.util.zzch.zza(context, new Callable() { // from class: com.google.android.gms.ads.internal.util.zzk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzfqv zzfqvVar = zzt.zza;
                String absolutePath = context.getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath();
                WebSettings webSettings = settings;
                webSettings.setDatabasePath(absolutePath);
                webSettings.setDatabaseEnabled(true);
                webSettings.setDomStorageEnabled(true);
                webSettings.setDisplayZoomControls(false);
                webSettings.setBuiltInZoomControls(true);
                webSettings.setSupportZoom(true);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzaJ)).booleanValue()) {
                    webSettings.setTextZoom(100);
                }
                webSettings.setAllowContentAccess(false);
                return Boolean.TRUE;
            }
        });
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setMediaPlaybackRequiresUserGesture(false);
        setDownloadListener(this);
        zzaS();
        addJavascriptInterface(new zzchv(this, new zzchu(this)), "googleAdsJsInterface");
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        zzba();
        zzbds zzbdsVar = new zzbds(new zzbdu(true, "make_wv", this.zzr));
        this.zzK = zzbdsVar;
        zzbdsVar.zza().zzc(null);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbO)).booleanValue() && (zzfdyVar2 = this.zzk) != null && zzfdyVar2.zzb != null) {
            zzbdsVar.zza().zzd("gqi", this.zzk.zzb);
        }
        zzbdsVar.zza();
        zzbdr zzbdrVarZzf = zzbdu.zzf();
        this.zzI = zzbdrVarZzf;
        zzbdsVar.zzb("native:view_create", zzbdrVarZzf);
        this.zzJ = null;
        this.zzH = null;
        com.google.android.gms.ads.internal.util.zzck.zza().zzb(zzcijVar);
        com.google.android.gms.ads.internal.zzt.zzo().zzt();
    }

    private final synchronized void zzaS() {
        zzfdu zzfduVar = this.zzj;
        if (zzfduVar != null && zzfduVar.zzan) {
            zzcbn.zze("Disabling hardware acceleration on an overlay.");
            zzaU();
            return;
        }
        if (!this.zzu && !this.zzq.zzi()) {
            zzcbn.zze("Enabling hardware acceleration on an AdView.");
            zzaW();
            return;
        }
        zzcbn.zze("Enabling hardware acceleration on an overlay.");
        zzaW();
    }

    private final synchronized void zzaT() {
        if (this.zzN) {
            return;
        }
        this.zzN = true;
        com.google.android.gms.ads.internal.zzt.zzo().zzr();
    }

    private final synchronized void zzaU() {
        if (!this.zzv) {
            setLayerType(1, null);
        }
        this.zzv = true;
    }

    private final void zzaV(boolean z) {
        HashMap map = new HashMap();
        map.put(z5.k, true != z ? "0" : "1");
        zzd("onAdVisibilityChanged", map);
    }

    private final synchronized void zzaW() {
        if (this.zzv) {
            setLayerType(0, null);
        }
        this.zzv = false;
    }

    private final synchronized void zzaX(String str) {
        try {
            super.loadUrl(AndroidWebViewClient.BLANK_PAGE);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(th, "AdWebViewImpl.loadUrlUnsafe");
            zzcbn.zzk("Could not call loadUrl in destroy(). ", th);
        }
    }

    private final void zzaY() {
        zzbdm.zza(this.zzK.zza(), this.zzI, "aeh2");
    }

    private final synchronized void zzaZ() {
        Map map = this.zzT;
        if (map != null) {
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                ((zzcfh) it.next()).release();
            }
        }
        this.zzT = null;
    }

    private final void zzba() {
        zzbds zzbdsVar = this.zzK;
        if (zzbdsVar == null) {
            return;
        }
        zzbdu zzbduVarZza = zzbdsVar.zza();
        zzbdk zzbdkVarZzg = com.google.android.gms.ads.internal.zzt.zzo().zzg();
        if (zzbdkVarZzg != null) {
            zzbdkVarZzg.zzf(zzbduVarZza);
        }
    }

    private final synchronized void zzbb() {
        Boolean boolZzl = com.google.android.gms.ads.internal.zzt.zzo().zzl();
        this.zzw = boolZzl;
        if (boolZzl == null) {
            try {
                evaluateJavascript("(function(){})()", null);
                zzaQ(Boolean.TRUE);
            } catch (IllegalStateException unused) {
                zzaQ(Boolean.FALSE);
            }
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcgv
    public final synchronized void destroy() {
        zzba();
        this.zzO.zza();
        com.google.android.gms.ads.internal.overlay.zzl zzlVar = this.zzo;
        if (zzlVar != null) {
            zzlVar.zzb();
            this.zzo.zzm();
            this.zzo = null;
        }
        this.zzp = null;
        this.zzn.zzh();
        this.zzE = null;
        this.zzf = null;
        setOnClickListener(null);
        setOnTouchListener(null);
        if (this.zzt) {
            return;
        }
        com.google.android.gms.ads.internal.zzt.zzy().zzd(this);
        zzaZ();
        this.zzt = true;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzkc)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.zza("Destroying the WebView immediately...");
            zzU();
        } else {
            com.google.android.gms.ads.internal.util.zze.zza("Initiating WebView self destruct sequence in 3...");
            com.google.android.gms.ads.internal.util.zze.zza("Loading blank page in WebView, 2...");
            zzaX(AndroidWebViewClient.BLANK_PAGE);
        }
    }

    @Override // android.webkit.WebView
    public final synchronized void evaluateJavascript(String str, ValueCallback valueCallback) {
        if (!zzaz()) {
            super.evaluateJavascript(str, valueCallback);
            return;
        }
        zzcbn.zzl("#004 The webview is destroyed. Ignoring action.", null);
        if (valueCallback != null) {
            valueCallback.onReceiveValue(null);
        }
    }

    protected final void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (!this.zzt) {
                    this.zzn.zzh();
                    com.google.android.gms.ads.internal.zzt.zzy().zzd(this);
                    zzaZ();
                    zzaT();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcgv
    public final synchronized void loadData(String str, String str2, String str3) {
        if (zzaz()) {
            zzcbn.zzj("#004 The webview is destroyed. Ignoring action.");
        } else {
            super.loadData(str, str2, str3);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcgv
    public final synchronized void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (zzaz()) {
            zzcbn.zzj("#004 The webview is destroyed. Ignoring action.");
        } else {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcgv
    public final synchronized void loadUrl(String str) {
        if (zzaz()) {
            zzcbn.zzj("#004 The webview is destroyed. Ignoring action.");
            return;
        }
        try {
            super.loadUrl(str);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(th, "AdWebViewImpl.loadUrl");
            zzcbn.zzk("Could not call loadUrl. ", th);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void onAdClicked() {
        zzchc zzchcVar = this.zzn;
        if (zzchcVar != null) {
            zzchcVar.onAdClicked();
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected final synchronized void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!zzaz()) {
            this.zzO.zzc();
        }
        boolean z = this.zzA;
        zzchc zzchcVar = this.zzn;
        if (zzchcVar != null && zzchcVar.zzL()) {
            if (!this.zzB) {
                this.zzn.zza();
                this.zzn.zzb();
                this.zzB = true;
            }
            zzaR();
            z = true;
        }
        zzaV(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        zzchc zzchcVar;
        synchronized (this) {
            if (!zzaz()) {
                this.zzO.zzd();
            }
            super.onDetachedFromWindow();
            if (this.zzB && (zzchcVar = this.zzn) != null && zzchcVar.zzL() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.zzn.zza();
                this.zzn.zzb();
                this.zzB = false;
            }
        }
        zzaV(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzkm)).booleanValue() && getContext() != null) {
                intent.setPackage(getContext().getPackageName());
            }
            com.google.android.gms.ads.internal.zzt.zzp();
            com.google.android.gms.ads.internal.util.zzt.zzS(getContext(), intent);
        } catch (ActivityNotFoundException e2) {
            zzcbn.zze("Couldn't find an Activity to view url/mimetype: " + str + " / " + str4);
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, "AdWebViewImpl.onDownloadStart: ".concat(String.valueOf(str)));
        }
    }

    @Override // android.webkit.WebView, android.view.View
    @TargetApi(21)
    protected final void onDraw(Canvas canvas) {
        if (zzaz()) {
            return;
        }
        if (Build.VERSION.SDK_INT == 21 && canvas.isHardwareAccelerated() && !isAttachedToWindow()) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue = motionEvent.getAxisValue(9);
        float axisValue2 = motionEvent.getAxisValue(10);
        if (motionEvent.getActionMasked() == 8) {
            if (axisValue > 0.0f && !canScrollVertically(-1)) {
                return false;
            }
            if (axisValue < 0.0f && !canScrollVertically(1)) {
                return false;
            }
            if (axisValue2 > 0.0f && !canScrollHorizontally(-1)) {
                return false;
            }
            if (axisValue2 < 0.0f && !canScrollHorizontally(1)) {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        boolean zZzaR = zzaR();
        com.google.android.gms.ads.internal.overlay.zzl zzlVarZzL = zzL();
        if (zzlVarZzL == null || !zZzaR) {
            return;
        }
        zzlVarZzL.zzn();
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0089  */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    @android.annotation.SuppressLint({"DrawAllocation"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final synchronized void onMeasure(int r9, int r10) {
        /*
            Method dump skipped, instruction units count: 488
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcho.onMeasure(int, int):void");
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcgv
    public final void onPause() {
        if (zzaz()) {
            return;
        }
        try {
            super.onPause();
        } catch (Exception e2) {
            zzcbn.zzh("Could not pause webview.", e2);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcgv
    public final void onResume() {
        if (zzaz()) {
            return;
        }
        try {
            super.onResume();
        } catch (Exception e2) {
            zzcbn.zzh("Could not resume webview.", e2);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.zzn.zzL() || this.zzn.zzJ()) {
            zzasi zzasiVar = this.zzc;
            if (zzasiVar != null) {
                zzasiVar.zzd(motionEvent);
            }
            zzbee zzbeeVar = this.zzd;
            if (zzbeeVar != null) {
                zzbeeVar.zzb(motionEvent);
            }
        } else {
            synchronized (this) {
                zzbfv zzbfvVar = this.zzC;
                if (zzbfvVar != null) {
                    zzbfvVar.zzd(motionEvent);
                }
            }
        }
        if (zzaz()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcgv
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof zzchc) {
            this.zzn = (zzchc) webViewClient;
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (zzaz()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e2) {
            zzcbn.zzh("Could not stop loading webview.", e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdw
    public final synchronized void zzA(int i) {
        this.zzL = i;
    }

    @Override // com.google.android.gms.internal.ads.zzcdw
    public final void zzB(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcgv, com.google.android.gms.internal.ads.zzcdw
    public final synchronized void zzC(zzchr zzchrVar) {
        if (this.zzz != null) {
            zzcbn.zzg("Attempt to create multiple AdWebViewVideoControllers.");
        } else {
            this.zzz = zzchrVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgv, com.google.android.gms.internal.ads.zzcgm
    public final zzfdu zzD() {
        return this.zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final Context zzE() {
        return this.zzb.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcgv, com.google.android.gms.internal.ads.zzcif
    public final View zzF() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final WebView zzG() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final WebViewClient zzH() {
        return this.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv, com.google.android.gms.internal.ads.zzcid
    public final zzasi zzI() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized zzaxd zzJ() {
        return this.zzE;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized zzbfv zzK() {
        return this.zzC;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized com.google.android.gms.ads.internal.overlay.zzl zzL() {
        return this.zzo;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized com.google.android.gms.ads.internal.overlay.zzl zzM() {
        return this.zzM;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final /* synthetic */ zzcii zzN() {
        return this.zzn;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv, com.google.android.gms.internal.ads.zzcic
    public final synchronized zzcik zzO() {
        return this.zzq;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv, com.google.android.gms.internal.ads.zzchs
    public final zzfdy zzP() {
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized zzflf zzQ() {
        return this.zzp;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final h0 zzR() {
        zzbee zzbeeVar = this.zzd;
        return zzbeeVar == null ? zzgbb.zzh(null) : zzbeeVar.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized String zzS() {
        return this.zzr;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final void zzT(zzfdu zzfduVar, zzfdy zzfdyVar) {
        this.zzj = zzfduVar;
        this.zzk = zzfdyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized void zzU() {
        com.google.android.gms.ads.internal.util.zze.zza("Destroying WebView!");
        zzaT();
        com.google.android.gms.ads.internal.util.zzt.zza.post(new zzchn(this));
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final void zzV() {
        zzaY();
        HashMap map = new HashMap(1);
        map.put("version", this.zze.zza);
        zzd("onhide", map);
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final void zzW(int i) {
        if (i == 0) {
            zzbds zzbdsVar = this.zzK;
            zzbdm.zza(zzbdsVar.zza(), this.zzI, "aebb2");
        }
        zzaY();
        this.zzK.zza();
        this.zzK.zza().zzd("close_type", String.valueOf(i));
        HashMap map = new HashMap(2);
        map.put("closetype", String.valueOf(i));
        map.put("version", this.zze.zza);
        zzd("onhide", map);
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final void zzX() {
        if (this.zzH == null) {
            zzbds zzbdsVar = this.zzK;
            zzbdm.zza(zzbdsVar.zza(), this.zzI, "aes2");
            this.zzK.zza();
            zzbdr zzbdrVarZzf = zzbdu.zzf();
            this.zzH = zzbdrVarZzf;
            this.zzK.zzb("native:view_show", zzbdrVarZzf);
        }
        HashMap map = new HashMap(1);
        map.put("version", this.zze.zza);
        zzd("onshow", map);
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final void zzY() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final void zzZ(boolean z) {
        this.zzn.zzi(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbnk
    public final void zza(String str) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized boolean zzaA() {
        return this.zzu;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final boolean zzaB() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized boolean zzaC() {
        return this.zzx;
    }

    @Override // com.google.android.gms.internal.ads.zzcia
    public final void zzaD(com.google.android.gms.ads.internal.overlay.zzc zzcVar, boolean z) {
        this.zzn.zzt(zzcVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzcia
    public final void zzaE(String str, String str2, int i) {
        this.zzn.zzu(str, str2, 14);
    }

    @Override // com.google.android.gms.internal.ads.zzcia
    public final void zzaF(boolean z, int i, boolean z2) {
        this.zzn.zzv(z, i, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcia
    public final void zzaG(boolean z, int i, String str, String str2, boolean z2) {
        this.zzn.zzx(z, i, str, str2, z2);
    }

    @Override // com.google.android.gms.internal.ads.zzcia
    public final void zzaH(boolean z, int i, String str, boolean z2, boolean z3) {
        this.zzn.zzy(z, i, str, z2, z3);
    }

    public final zzchc zzaJ() {
        return this.zzn;
    }

    @VisibleForTesting
    final synchronized Boolean zzaK() {
        return this.zzw;
    }

    protected final synchronized void zzaN(String str, ValueCallback valueCallback) {
        if (zzaz()) {
            zzcbn.zzj("#004 The webview is destroyed. Ignoring action.");
        } else {
            evaluateJavascript(str, null);
        }
    }

    protected final void zzaO(String str) {
        if (!PlatformVersion.isAtLeastKitKat()) {
            zzaP("javascript:".concat(str));
            return;
        }
        if (zzaK() == null) {
            zzbb();
        }
        if (zzaK().booleanValue()) {
            zzaN(str, null);
        } else {
            zzaP("javascript:".concat(str));
        }
    }

    protected final synchronized void zzaP(String str) {
        if (zzaz()) {
            zzcbn.zzj("#004 The webview is destroyed. Ignoring action.");
        } else {
            loadUrl(str);
        }
    }

    @VisibleForTesting
    final void zzaQ(Boolean bool) {
        synchronized (this) {
            this.zzw = bool;
        }
        com.google.android.gms.ads.internal.zzt.zzo().zzx(bool);
    }

    public final boolean zzaR() {
        int i;
        int iZzv;
        if (this.zzn.zzK() || this.zzn.zzL()) {
            com.google.android.gms.ads.internal.client.zzay.zzb();
            DisplayMetrics displayMetrics = this.zzh;
            int iZzv2 = zzcbg.zzv(displayMetrics, displayMetrics.widthPixels);
            com.google.android.gms.ads.internal.client.zzay.zzb();
            DisplayMetrics displayMetrics2 = this.zzh;
            int iZzv3 = zzcbg.zzv(displayMetrics2, displayMetrics2.heightPixels);
            Activity activityZza = this.zzb.zza();
            if (activityZza == null || activityZza.getWindow() == null) {
                i = iZzv2;
                iZzv = iZzv3;
            } else {
                com.google.android.gms.ads.internal.zzt.zzp();
                int[] iArrZzP = com.google.android.gms.ads.internal.util.zzt.zzP(activityZza);
                com.google.android.gms.ads.internal.client.zzay.zzb();
                int iZzv4 = zzcbg.zzv(this.zzh, iArrZzP[0]);
                com.google.android.gms.ads.internal.client.zzay.zzb();
                iZzv = zzcbg.zzv(this.zzh, iArrZzP[1]);
                i = iZzv4;
            }
            int i2 = this.zzQ;
            if (i2 != iZzv2 || this.zzP != iZzv3 || this.zzR != i || this.zzS != iZzv) {
                boolean z = (i2 == iZzv2 && this.zzP == iZzv3) ? false : true;
                this.zzQ = iZzv2;
                this.zzP = iZzv3;
                this.zzR = i;
                this.zzS = iZzv;
                new zzbss(this, "").zzi(iZzv2, iZzv3, i, iZzv, this.zzh.density, this.zzU.getDefaultDisplay().getRotation());
                return z;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final void zzaa() {
        this.zzO.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized void zzab(String str, String str2, String str3) {
        String str4;
        if (zzaz()) {
            zzcbn.zzj("#004 The webview is destroyed. Ignoring action.");
            return;
        }
        String[] strArr = new String[1];
        String str5 = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzP);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("version", str5);
            jSONObject.put("sdk", "Google Mobile Ads");
            jSONObject.put("sdkVersion", "12.4.51-000");
            str4 = "<script>Object.defineProperty(window,'MRAID_ENV',{get:function(){return " + jSONObject.toString() + "}});</script>";
        } catch (JSONException e2) {
            zzcbn.zzk("Unable to build MRAID_ENV", e2);
            str4 = null;
        }
        strArr[0] = str4;
        super.loadDataWithBaseURL(str, zzcib.zza(str2, strArr), "text/html", C.UTF8_NAME, null);
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final void zzac() {
        if (this.zzJ == null) {
            this.zzK.zza();
            zzbdr zzbdrVarZzf = zzbdu.zzf();
            this.zzJ = zzbdrVarZzf;
            this.zzK.zzb("native:view_load", zzbdrVarZzf);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final void zzad(String str, zzbkd zzbkdVar) {
        zzchc zzchcVar = this.zzn;
        if (zzchcVar != null) {
            zzchcVar.zzz(str, zzbkdVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final void zzae() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized void zzaf(com.google.android.gms.ads.internal.overlay.zzl zzlVar) {
        this.zzo = zzlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized void zzag(zzcik zzcikVar) {
        this.zzq = zzcikVar;
        requestLayout();
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized void zzah(zzaxd zzaxdVar) {
        this.zzE = zzaxdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized void zzai(boolean z) {
        this.zzx = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final void zzaj() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final void zzak(Context context) {
        this.zzb.setBaseContext(context);
        this.zzO.zze(this.zzb.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized void zzal(boolean z) {
        com.google.android.gms.ads.internal.overlay.zzl zzlVar = this.zzo;
        if (zzlVar != null) {
            zzlVar.zzy(this.zzn.zzK(), z);
        } else {
            this.zzs = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized void zzam(zzbft zzbftVar) {
        this.zzD = zzbftVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized void zzan(boolean z) {
        boolean z2 = this.zzu;
        this.zzu = z;
        zzaS();
        if (z != z2) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzQ)).booleanValue() || !this.zzq.zzi()) {
                new zzbss(this, "").zzk(true != z ? "default" : "expanded");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized void zzao(zzbfv zzbfvVar) {
        this.zzC = zzbfvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized void zzap(zzflf zzflfVar) {
        this.zzp = zzflfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized void zzaq(int i) {
        com.google.android.gms.ads.internal.overlay.zzl zzlVar = this.zzo;
        if (zzlVar != null) {
            zzlVar.zzA(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized void zzar(com.google.android.gms.ads.internal.overlay.zzl zzlVar) {
        this.zzM = zzlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized void zzas(boolean z) {
        com.google.android.gms.ads.internal.overlay.zzl zzlVar;
        int i = this.zzF + (true != z ? -1 : 1);
        this.zzF = i;
        if (i > 0 || (zzlVar = this.zzo) == null) {
            return;
        }
        zzlVar.zzE();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0010 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x000b A[Catch: all -> 0x0012, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0004, B:6:0x0007, B:8:0x000b), top: B:16:0x0004 }] */
    @Override // com.google.android.gms.internal.ads.zzcgv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized void zzat(boolean r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            if (r2 == 0) goto L7
            r0 = 0
            r1.setBackgroundColor(r0)     // Catch: java.lang.Throwable -> L12
        L7:
            com.google.android.gms.ads.internal.overlay.zzl r0 = r1.zzo     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L10
            r0.zzB(r2)     // Catch: java.lang.Throwable -> L12
            monitor-exit(r1)
            return
        L10:
            monitor-exit(r1)
            return
        L12:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcho.zzat(boolean):void");
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final void zzau(String str, zzbkd zzbkdVar) {
        zzchc zzchcVar = this.zzn;
        if (zzchcVar != null) {
            zzchcVar.zzH(str, zzbkdVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final void zzav(String str, Predicate predicate) {
        zzchc zzchcVar = this.zzn;
        if (zzchcVar != null) {
            zzchcVar.zzI(str, predicate);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized boolean zzaw() {
        return this.zzs;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized boolean zzax() {
        return this.zzF > 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final boolean zzay(final boolean z, final int i) {
        destroy();
        this.zzV.zzb(new zzayo() { // from class: com.google.android.gms.internal.ads.zzchl
            @Override // com.google.android.gms.internal.ads.zzayo
            public final void zza(zzbae zzbaeVar) {
                int i2 = zzcho.zza;
                zzbcj zzbcjVarZza = zzbck.zza();
                boolean zZzc = zzbcjVarZza.zzc();
                boolean z2 = z;
                if (zZzc != z2) {
                    zzbcjVarZza.zza(z2);
                }
                zzbcjVarZza.zzb(i);
                zzbaeVar.zzj((zzbck) zzbcjVarZza.zzal());
            }
        });
        this.zzV.zzc(10003);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv
    public final synchronized boolean zzaz() {
        return this.zzt;
    }

    @Override // com.google.android.gms.internal.ads.zzbnk
    public final void zzb(String str, String str2) {
        zzaO(str + "(" + str2 + ");");
    }

    @Override // com.google.android.gms.internal.ads.zzdge
    public final void zzbL() {
        zzchc zzchcVar = this.zzn;
        if (zzchcVar != null) {
            zzchcVar.zzbL();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzl
    public final synchronized void zzbk() {
        com.google.android.gms.ads.internal.zzl zzlVar = this.zzf;
        if (zzlVar != null) {
            zzlVar.zzbk();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzl
    public final synchronized void zzbl() {
        com.google.android.gms.ads.internal.zzl zzlVar = this.zzf;
        if (zzlVar != null) {
            zzlVar.zzbl();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdw
    public final synchronized String zzbm() {
        zzfdy zzfdyVar = this.zzk;
        if (zzfdyVar == null) {
            return null;
        }
        return zzfdyVar.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzcdw
    public final synchronized String zzbn() {
        return this.zzy;
    }

    @Override // com.google.android.gms.internal.ads.zzavq
    public final void zzbu(zzavp zzavpVar) {
        boolean z;
        synchronized (this) {
            z = zzavpVar.zzj;
            this.zzA = z;
        }
        zzaV(z);
    }

    @Override // com.google.android.gms.internal.ads.zzbmx
    public final void zzd(String str, Map map) {
        try {
            zze(str, com.google.android.gms.ads.internal.client.zzay.zzb().zzi(map));
        } catch (JSONException unused) {
            zzcbn.zzj("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbmx
    public final void zze(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String string = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("',");
        sb.append(string);
        sb.append(");");
        zzcbn.zze("Dispatching AFMA event: ".concat(sb.toString()));
        zzaO(sb.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcdw
    public final synchronized int zzf() {
        return this.zzL;
    }

    @Override // com.google.android.gms.internal.ads.zzcdw
    public final int zzg() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzcdw
    public final int zzh() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzcgv, com.google.android.gms.internal.ads.zzchw, com.google.android.gms.internal.ads.zzcdw
    public final Activity zzi() {
        return this.zzb.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzcgv, com.google.android.gms.internal.ads.zzcdw
    public final com.google.android.gms.ads.internal.zza zzj() {
        return this.zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzcdw
    public final zzbdr zzk() {
        return this.zzI;
    }

    @Override // com.google.android.gms.internal.ads.zzbnk
    public final void zzl(String str, JSONObject jSONObject) {
        zzb(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcgv, com.google.android.gms.internal.ads.zzcdw
    public final zzbds zzm() {
        return this.zzK;
    }

    @Override // com.google.android.gms.internal.ads.zzcgv, com.google.android.gms.internal.ads.zzcie, com.google.android.gms.internal.ads.zzcdw
    public final zzcbt zzn() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzcdw
    public final zzcdl zzo() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcdw
    public final synchronized zzcfh zzp(String str) {
        Map map = this.zzT;
        if (map == null) {
            return null;
        }
        return (zzcfh) map.get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcgv, com.google.android.gms.internal.ads.zzcdw
    public final synchronized zzchr zzq() {
        return this.zzz;
    }

    @Override // com.google.android.gms.internal.ads.zzdge
    public final void zzs() {
        zzchc zzchcVar = this.zzn;
        if (zzchcVar != null) {
            zzchcVar.zzs();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcgv, com.google.android.gms.internal.ads.zzcdw
    public final synchronized void zzt(String str, zzcfh zzcfhVar) {
        if (this.zzT == null) {
            this.zzT = new HashMap();
        }
        this.zzT.put(str, zzcfhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcdw
    public final void zzu() {
        com.google.android.gms.ads.internal.overlay.zzl zzlVarZzL = zzL();
        if (zzlVarZzL != null) {
            zzlVarZzL.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdw
    public final void zzv(boolean z, long j) {
        HashMap map = new HashMap(2);
        map.put("success", true != z ? "0" : "1");
        map.put("duration", Long.toString(j));
        zzd("onCacheAccessComplete", map);
    }

    @Override // com.google.android.gms.internal.ads.zzcdw
    public final synchronized void zzw() {
        zzbft zzbftVar = this.zzD;
        if (zzbftVar != null) {
            final zzdok zzdokVar = (zzdok) zzbftVar;
            com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdoi
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        zzdokVar.zzd();
                    } catch (RemoteException e2) {
                        zzcbn.zzl("#007 Could not call remote method.", e2);
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcdw
    public final void zzx(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcdw
    public final void zzy(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcdw
    public final void zzz(boolean z) {
        this.zzn.zzC(false);
    }
}
