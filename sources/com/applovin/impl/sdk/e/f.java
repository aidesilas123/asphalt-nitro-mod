package com.applovin.impl.sdk.e;

import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.applovin.impl.mediation.h;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.e.b;
import com.applovin.impl.sdk.e.c;
import com.applovin.impl.sdk.network.b;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinSdkUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.model.AdPayload;
import java.io.Closeable;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class f extends d implements h.a {
    private final com.applovin.impl.sdk.t aBF;
    protected final com.applovin.impl.sdk.d.e aHi;
    private AppLovinAdLoadListener aTG;
    private final Collection<Character> aTH;
    private boolean aTI;
    protected ExecutorService aTJ;
    protected List<com.applovin.impl.sdk.e.a> aTK;
    protected String aTL;
    protected ExecutorService aTt;
    protected final com.applovin.impl.sdk.ad.e aiL;

    public interface a {
        void du(String str);
    }

    f(String str, com.applovin.impl.sdk.ad.e eVar, com.applovin.impl.sdk.n nVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        super(str, nVar);
        if (eVar == null) {
            throw new IllegalArgumentException("No ad specified.");
        }
        this.aiL = eVar;
        this.aTG = appLovinAdLoadListener;
        this.aBF = nVar.Cc();
        this.aTH = Kf();
        this.aHi = new com.applovin.impl.sdk.d.e();
        if (((Boolean) nVar.a(com.applovin.impl.sdk.c.b.aLQ)).booleanValue()) {
            this.aTL = StringUtils.isValidString(eVar.GB()) ? eVar.GB() : UUID.randomUUID().toString();
            this.aTt = nVar.BO().f("com.applovin.sdk.caching." + this.aTL, ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aLR)).intValue());
            this.aTJ = nVar.BO().f("com.applovin.sdk.caching.html." + this.aTL, ((Integer) nVar.a(com.applovin.impl.sdk.c.b.aLS)).intValue());
        }
    }

    private Uri K(String str, String str2) {
        String strA;
        String cachePrefix = this.aiL.getCachePrefix();
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aLY)).booleanValue()) {
            strA = com.applovin.impl.sdk.utils.u.a(Uri.parse(str2), cachePrefix, this.sdk);
        } else {
            String strReplace = str2.replace("/", "_");
            if (StringUtils.isValidString(cachePrefix)) {
                strA = cachePrefix + strReplace;
            } else {
                strA = strReplace;
            }
        }
        File fileA = this.aBF.a(strA, com.applovin.impl.sdk.n.getApplicationContext());
        if (fileA == null) {
            return null;
        }
        if (this.aBF.g(fileA)) {
            this.aHi.bX(fileA.length());
            return Uri.parse(AdPayload.FILE_SCHEME + fileA.getAbsolutePath());
        }
        if (!this.aBF.a(fileA, str + str2, Arrays.asList(str), this.aHi)) {
            return null;
        }
        return Uri.parse(AdPayload.FILE_SCHEME + fileA.getAbsolutePath());
    }

    private Collection<Character> Kf() {
        HashSet hashSet = new HashSet();
        for (char c : ((String) this.sdk.a(com.applovin.impl.sdk.c.b.aLL)).toCharArray()) {
            hashSet.add(Character.valueOf(c));
        }
        hashSet.add('\"');
        return hashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Kp() {
        AppLovinAdLoadListener appLovinAdLoadListener = this.aTG;
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.adReceived(this.aiL);
            this.aTG = null;
        }
    }

    protected List<Future<Boolean>> K(List<com.applovin.impl.sdk.e.a> list) {
        this.aTK = list;
        return this.sdk.BO().a(list, this.aTt);
    }

    protected void Ki() {
        this.sdk.CA().b(this);
        ExecutorService executorService = this.aTt;
        if (executorService != null) {
            executorService.shutdown();
            this.aTt = null;
        }
        ExecutorService executorService2 = this.aTJ;
        if (executorService2 != null) {
            executorService2.shutdown();
            this.aTJ = null;
        }
    }

    protected boolean Kj() {
        return this.aTI;
    }

    protected void Kk() {
        this.aTI = true;
        List<com.applovin.impl.sdk.e.a> list = this.aTK;
        if (list != null && !list.isEmpty()) {
            Iterator<com.applovin.impl.sdk.e.a> it = this.aTK.iterator();
            while (it.hasNext()) {
                it.next().be(true);
            }
        }
        ExecutorService executorService = this.aTt;
        if (executorService != null) {
            executorService.shutdown();
            this.aTt = null;
        }
        ExecutorService executorService2 = this.aTJ;
        if (executorService2 != null) {
            executorService2.shutdown();
            this.aTJ = null;
        }
    }

    protected List<com.applovin.impl.sdk.e.a> Kl() {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Caching mute images...");
        }
        ArrayList arrayList = new ArrayList();
        if (this.aiL.Hv() != null) {
            arrayList.add(a(this.aiL.Hv().toString(), new c.a() { // from class: com.applovin.impl.sdk.e.f.1
                @Override // com.applovin.impl.sdk.e.c.a
                public void q(@Nullable Uri uri) {
                    f.this.aiL.n(uri);
                    com.applovin.impl.sdk.x xVar = f.this.logger;
                    if (com.applovin.impl.sdk.x.Fn()) {
                        f fVar = f.this;
                        fVar.logger.f(fVar.tag, "Ad updated with muteImageUri = " + uri);
                    }
                }
            }));
        }
        if (this.aiL.Hw() != null) {
            arrayList.add(a(this.aiL.Hw().toString(), new c.a() { // from class: com.applovin.impl.sdk.e.f.2
                @Override // com.applovin.impl.sdk.e.c.a
                public void q(@Nullable Uri uri) {
                    f.this.aiL.o(uri);
                    com.applovin.impl.sdk.x xVar = f.this.logger;
                    if (com.applovin.impl.sdk.x.Fn()) {
                        f fVar = f.this;
                        fVar.logger.f(fVar.tag, "Ad updated with unmuteImageUri = " + uri);
                    }
                }
            }));
        }
        return arrayList;
    }

    void Km() {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Caching mute images...");
        }
        Uri uriC = c(this.aiL.Hv(), CampaignEx.JSON_NATIVE_VIDEO_MUTE);
        if (uriC != null) {
            this.aiL.n(uriC);
        }
        Uri uriC2 = c(this.aiL.Hw(), CampaignEx.JSON_NATIVE_VIDEO_UNMUTE);
        if (uriC2 != null) {
            this.aiL.o(uriC2);
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Ad updated with muteImageFilename = " + this.aiL.Hv() + ", unmuteImageFilename = " + this.aiL.Hw());
        }
    }

    void Kn() {
        AppLovinAdLoadListener appLovinAdLoadListener = this.aTG;
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.failedToReceiveAd(AppLovinErrorCodes.UNABLE_TO_PRECACHE_VIDEO_RESOURCES);
            this.aTG = null;
        }
        Kk();
    }

    void Ko() {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Rendered new ad:" + this.aiL);
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.e.a0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.Kp();
            }
        });
    }

    Uri a(String str, List<String> list, boolean z) {
        if (!StringUtils.isValidString(str)) {
            return null;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Caching video " + str + "...");
        }
        String strA = this.aBF.a(rQ(), str, this.aiL.getCachePrefix(), list, z, this.aHi);
        if (!StringUtils.isValidString(strA)) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.i(this.tag, "Failed to cache video");
            }
            Kn();
            return null;
        }
        File fileA = this.aBF.a(strA, rQ());
        if (fileA == null) {
            if (!com.applovin.impl.sdk.x.Fn()) {
                return null;
            }
            this.logger.i(this.tag, "Unable to cache video = " + str + "Video file was missing or null");
            return null;
        }
        Uri uriFromFile = Uri.fromFile(fileA);
        if (uriFromFile == null) {
            if (!com.applovin.impl.sdk.x.Fn()) {
                return null;
            }
            this.logger.i(this.tag, "Unable to create URI from cached video file = " + fileA);
            return null;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Finish caching video for ad #" + this.aiL.getAdIdNumber() + ". Updating ad with cachedVideoFilename = " + strA);
        }
        return uriFromFile;
    }

    protected b a(String str, List<String> list, final a aVar) {
        return new b(str, this.aiL, list, this.aHi, this.aTJ, this.sdk, new b.a() { // from class: com.applovin.impl.sdk.e.f.4
            @Override // com.applovin.impl.sdk.e.b.a
            public void d(String str2, boolean z) {
                if (z) {
                    f.this.Kn();
                    return;
                }
                a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.du(str2);
                }
            }
        });
    }

    protected c a(String str, c.a aVar) {
        return new c(str, this.aiL, this.aHi, this.sdk, aVar);
    }

    @Nullable
    protected c a(String str, List<String> list, boolean z, final c.a aVar) {
        if (TextUtils.isEmpty(str)) {
            if (!com.applovin.impl.sdk.x.Fn()) {
                return null;
            }
            this.logger.f(this.tag, "No video to cache, skipping...");
            return null;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Caching video " + str + "...");
        }
        return new c(str, this.aiL, list, z, this.aHi, this.sdk, new c.a() { // from class: com.applovin.impl.sdk.e.f.3
            @Override // com.applovin.impl.sdk.e.c.a
            public void q(@Nullable Uri uri) {
                if (uri == null) {
                    com.applovin.impl.sdk.x xVar = f.this.logger;
                    if (com.applovin.impl.sdk.x.Fn()) {
                        f fVar = f.this;
                        fVar.logger.i(fVar.tag, "Failed to cache video");
                    }
                    f.this.Kn();
                    return;
                }
                com.applovin.impl.sdk.x xVar2 = f.this.logger;
                if (com.applovin.impl.sdk.x.Fn()) {
                    f fVar2 = f.this;
                    fVar2.logger.f(fVar2.tag, "Finish caching video for ad #" + f.this.aiL.getAdIdNumber() + ". Updating ad with cachedVideoURL = " + uri);
                }
                aVar.q(uri);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x003c, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    java.lang.String a(java.lang.String r13, java.util.List<java.lang.String> r14, com.applovin.impl.sdk.ad.e r15) {
        /*
            Method dump skipped, instruction units count: 341
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.e.f.a(java.lang.String, java.util.List, com.applovin.impl.sdk.ad.e):java.lang.String");
    }

    Uri b(String str, List<String> list, boolean z) {
        try {
            String strA = this.aBF.a(rQ(), str, this.aiL.getCachePrefix(), list, z, this.aHi);
            if (StringUtils.isValidString(strA)) {
                File fileA = this.aBF.a(strA, rQ());
                if (fileA != null) {
                    Uri uriFromFile = Uri.fromFile(fileA);
                    if (uriFromFile != null) {
                        return uriFromFile;
                    }
                    if (com.applovin.impl.sdk.x.Fn()) {
                        this.logger.i(this.tag, "Unable to extract Uri from image file");
                    }
                } else if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.i(this.tag, "Unable to retrieve File from cached image filename = " + strA);
                }
            }
            return null;
        } catch (Throwable th) {
            if (!com.applovin.impl.sdk.x.Fn()) {
                return null;
            }
            this.logger.c(this.tag, "Failed to cache image at url = " + str, th);
            return null;
        }
    }

    @Nullable
    protected c b(String str, c.a aVar) {
        return a(str, this.aiL.Gx(), true, aVar);
    }

    void b(AppLovinAdBase appLovinAdBase) {
        com.applovin.impl.sdk.d.d.a(this.aHi, appLovinAdBase, this.sdk);
    }

    protected Uri c(Uri uri, String str) {
        if (uri == null) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "No " + str + " image to cache");
            }
            return null;
        }
        String string = uri.toString();
        if (TextUtils.isEmpty(string)) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "Failed to cache " + str + " image");
            }
            return null;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Caching " + str + " image...");
        }
        return ds(string);
    }

    String c(String str, List<String> list) {
        InputStream inputStreamA;
        if (StringUtils.isValidString(str)) {
            Uri uri = Uri.parse(str);
            if (uri == null) {
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.f(this.tag, "Nothing to cache, skipping...");
                }
                return null;
            }
            try {
                File fileA = this.aBF.a(com.applovin.impl.sdk.utils.u.a(uri, this.aiL.getCachePrefix(), this.sdk), rQ());
                if (this.aBF.g(fileA)) {
                    return this.aBF.a(fileA);
                }
                try {
                    inputStreamA = this.aBF.a(str, list, true, this.aHi);
                    if (inputStreamA != null) {
                        try {
                            this.aBF.a(inputStreamA, fileA);
                        } catch (Throwable th) {
                            th = th;
                            com.applovin.impl.sdk.utils.u.a((Closeable) inputStreamA, this.sdk);
                            throw th;
                        }
                    }
                    com.applovin.impl.sdk.utils.u.a((Closeable) inputStreamA, this.sdk);
                    return this.aBF.a(fileA);
                } catch (Throwable th2) {
                    th = th2;
                    inputStreamA = null;
                }
            } catch (Throwable th3) {
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.c(this.tag, "Resource at " + str + " failed to load.", th3);
                }
            }
        }
        return null;
    }

    Uri dr(String str) {
        return a(str, this.aiL.Gx(), true);
    }

    protected Uri ds(String str) {
        return b(str, this.aiL.Gx(), true);
    }

    String dt(final String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        com.applovin.impl.sdk.network.c cVarIg = com.applovin.impl.sdk.network.c.D(this.sdk).cW(str).cX("GET").ad("").gE(0).Ig();
        final AtomicReference atomicReference = new AtomicReference(null);
        this.sdk.BQ().a(cVarIg, new b.a(), new b.d<String>() { // from class: com.applovin.impl.sdk.e.f.5
            @Override // com.applovin.impl.sdk.network.b.d
            public void a(int i, String str2, String str3) {
                com.applovin.impl.sdk.x xVar = f.this.logger;
                if (com.applovin.impl.sdk.x.Fn()) {
                    f fVar = f.this;
                    fVar.logger.i(fVar.tag, "Failed to load resource from '" + str + "'");
                }
            }

            @Override // com.applovin.impl.sdk.network.b.d
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public void d(String str2, int i) {
                atomicReference.set(str2);
            }
        });
        String str2 = (String) atomicReference.get();
        if (str2 != null) {
            this.aHi.bW(str2.length());
        }
        return str2;
    }

    @Override // com.applovin.impl.mediation.h.a
    public void f(com.applovin.impl.mediation.b.a aVar) {
        if (aVar.xA().equalsIgnoreCase(this.aiL.GB())) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.i(this.tag, "Updating flag for timeout...");
            }
            Kk();
        }
        this.sdk.CA().b(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.aiL.GA()) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f(this.tag, "Subscribing to timeout events...");
            }
            this.sdk.CA().a(this);
        }
    }
}
