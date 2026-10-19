package com.applovin.impl.sdk.a;

import android.text.TextUtils;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.utils.StringUtils;
import com.iab.omid.library.applovin.adsession.AdSession;
import com.iab.omid.library.applovin.adsession.AdSessionConfiguration;
import com.iab.omid.library.applovin.adsession.AdSessionContext;
import com.iab.omid.library.applovin.adsession.CreativeType;
import com.iab.omid.library.applovin.adsession.ImpressionType;
import com.iab.omid.library.applovin.adsession.Owner;
import com.iab.omid.library.applovin.adsession.VerificationScriptResource;
import com.iab.omid.library.applovin.adsession.media.InteractionType;
import com.iab.omid.library.applovin.adsession.media.MediaEvents;
import com.iab.omid.library.applovin.adsession.media.Position;
import com.iab.omid.library.applovin.adsession.media.VastProperties;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class g extends b {
    static final /* synthetic */ boolean aIM = true;
    private final AtomicBoolean aIF;
    private MediaEvents aIG;
    private final VastProperties aIH;
    private final AtomicBoolean aII;
    private final AtomicBoolean aIJ;
    private final AtomicBoolean aIK;
    private final AtomicBoolean aIL;
    private final com.applovin.impl.b.a ajq;

    public g(com.applovin.impl.b.a aVar) {
        super(aVar);
        this.aIF = new AtomicBoolean();
        this.aII = new AtomicBoolean();
        this.aIJ = new AtomicBoolean();
        this.aIK = new AtomicBoolean();
        this.aIL = new AtomicBoolean();
        this.ajq = aVar;
        float fLP = aVar.LP();
        if (aVar.LP() == -1) {
            this.aIH = VastProperties.createVastPropertiesForNonSkippableMedia(true, Position.STANDALONE);
        } else {
            this.aIH = VastProperties.createVastPropertiesForSkippableMedia(fLP, true, Position.STANDALONE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Jh() {
        this.aIG.adUserInteraction(InteractionType.CLICK);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Ji() {
        this.aIG.skipped();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Jj() {
        this.aIG.bufferFinish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Jk() {
        this.aIG.bufferStart();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Jl() {
        this.aIG.resume();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Jm() {
        this.aIG.pause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Jn() {
        this.aIG.complete();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Jo() {
        this.aIG.thirdQuartile();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Jp() {
        this.aIG.midpoint();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Jq() {
        this.aIG.firstQuartile();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void Jr() {
        this.aIB.loaded(this.aIH);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void bd(boolean z) {
        this.aIG.volumeChange(z ? 0.0f : 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(float f2, boolean z) {
        this.aIG.start(f2, z ? 0.0f : 1.0f);
    }

    @Override // com.applovin.impl.sdk.a.b
    @Nullable
    protected AdSessionConfiguration II() {
        try {
            CreativeType creativeType = CreativeType.VIDEO;
            ImpressionType impressionType = ImpressionType.BEGIN_TO_RENDER;
            Owner owner = Owner.NATIVE;
            return AdSessionConfiguration.createAdSessionConfiguration(creativeType, impressionType, owner, owner, false);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.c(this.tag, "Failed to create ad session configuration", th);
            }
            return null;
        }
    }

    @Override // com.applovin.impl.sdk.a.b
    public void IK() {
        b("track loaded", new Runnable() { // from class: com.applovin.impl.sdk.a.z
            @Override // java.lang.Runnable
            public final void run() {
                this.a.Jr();
            }
        });
    }

    public void IX() {
        if (this.aIJ.compareAndSet(false, true)) {
            b("track first quartile", new Runnable() { // from class: com.applovin.impl.sdk.a.a0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.Jq();
                }
            });
        }
    }

    public void IY() {
        if (this.aIK.compareAndSet(false, true)) {
            b("track midpoint", new Runnable() { // from class: com.applovin.impl.sdk.a.u
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.Jp();
                }
            });
        }
    }

    public void IZ() {
        if (this.aIL.compareAndSet(false, true)) {
            b("track third quartile", new Runnable() { // from class: com.applovin.impl.sdk.a.s
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.Jo();
                }
            });
        }
    }

    public void Ja() {
        b("track completed", new Runnable() { // from class: com.applovin.impl.sdk.a.r
            @Override // java.lang.Runnable
            public final void run() {
                this.a.Jn();
            }
        });
    }

    public void Jb() {
        b("track paused", new Runnable() { // from class: com.applovin.impl.sdk.a.q
            @Override // java.lang.Runnable
            public final void run() {
                this.a.Jm();
            }
        });
    }

    public void Jc() {
        b("track resumed", new Runnable() { // from class: com.applovin.impl.sdk.a.y
            @Override // java.lang.Runnable
            public final void run() {
                this.a.Jl();
            }
        });
    }

    public void Jd() {
        if (this.aIF.compareAndSet(false, true)) {
            b("buffer started", new Runnable() { // from class: com.applovin.impl.sdk.a.x
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.Jk();
                }
            });
        }
    }

    public void Je() {
        if (this.aIF.compareAndSet(true, false)) {
            b("buffer finished", new Runnable() { // from class: com.applovin.impl.sdk.a.w
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.Jj();
                }
            });
        }
    }

    public void Jf() {
        b("track skipped", new Runnable() { // from class: com.applovin.impl.sdk.a.t
            @Override // java.lang.Runnable
            public final void run() {
                this.a.Ji();
            }
        });
    }

    public void Jg() {
        b("track clicked", new Runnable() { // from class: com.applovin.impl.sdk.a.v
            @Override // java.lang.Runnable
            public final void run() {
                this.a.Jh();
            }
        });
    }

    @Override // com.applovin.impl.sdk.a.b
    protected void a(AdSession adSession) {
        try {
            this.aIG = MediaEvents.createMediaEvents(adSession);
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.c(this.tag, "Failed to create media events", th);
            }
        }
    }

    public void b(final float f2, final boolean z) {
        if (this.aII.compareAndSet(false, true)) {
            b("track started", new Runnable() { // from class: com.applovin.impl.sdk.a.b0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.c(f2, z);
                }
            });
        }
    }

    public void bc(final boolean z) {
        b("track volume changed", new Runnable() { // from class: com.applovin.impl.sdk.a.c0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.bd(z);
            }
        });
    }

    @Override // com.applovin.impl.sdk.a.b
    @Nullable
    protected AdSessionContext h(@Nullable WebView webView) {
        if (!aIM && this.ajq.Mf() == null) {
            throw new AssertionError();
        }
        ArrayList arrayList = new ArrayList();
        for (com.applovin.impl.b.b bVar : this.ajq.Mf().Mm()) {
            List<com.applovin.impl.b.h> listMk = bVar.Mk();
            if (listMk.isEmpty()) {
                com.applovin.impl.b.m.a(bVar.Ml(), com.applovin.impl.b.f.FAILED_TO_LOAD_RESOURCE, this.sdk);
            } else {
                ArrayList arrayList2 = new ArrayList();
                for (com.applovin.impl.b.h hVar : listMk) {
                    if (CampaignEx.KEY_OMID.equalsIgnoreCase(hVar.My())) {
                        arrayList2.add(hVar);
                    }
                }
                if (arrayList2.isEmpty()) {
                    com.applovin.impl.b.m.a(bVar.Ml(), com.applovin.impl.b.f.API_FRAMEWORK_OR_LANGUAGE_TYPE_NOT_SUPPORTED, this.sdk);
                } else {
                    ArrayList<URL> arrayList3 = new ArrayList();
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        try {
                            arrayList3.add(new URL(((com.applovin.impl.b.h) it.next()).Mz()));
                        } catch (Throwable th) {
                            if (com.applovin.impl.sdk.x.Fn()) {
                                this.logger.c(this.tag, "Failed to parse JavaScript resource url", th);
                            }
                        }
                    }
                    if (arrayList3.isEmpty()) {
                        com.applovin.impl.b.m.a(bVar.Ml(), com.applovin.impl.b.f.FAILED_TO_LOAD_RESOURCE, this.sdk);
                    } else {
                        String verificationParameters = bVar.getVerificationParameters();
                        String strMj = bVar.Mj();
                        if (!StringUtils.isValidString(verificationParameters) || StringUtils.isValidString(strMj)) {
                            for (URL url : arrayList3) {
                                arrayList.add(StringUtils.isValidString(verificationParameters) ? VerificationScriptResource.createVerificationScriptResourceWithParameters(strMj, url, verificationParameters) : VerificationScriptResource.createVerificationScriptResourceWithoutParameters(url));
                            }
                        } else {
                            com.applovin.impl.b.m.a(bVar.Ml(), com.applovin.impl.b.f.FAILED_TO_LOAD_RESOURCE, this.sdk);
                        }
                    }
                }
            }
        }
        String strIT = this.sdk.Cp().IT();
        if (TextUtils.isEmpty(strIT)) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.i(this.tag, "JavaScript SDK content not loaded successfully");
            }
            return null;
        }
        try {
            return AdSessionContext.createNativeAdSessionContext(this.sdk.Cp().getPartner(), strIT, arrayList, this.ajq.getOpenMeasurementContentUrl(), this.ajq.getOpenMeasurementCustomReferenceData());
        } catch (Throwable th2) {
            if (!com.applovin.impl.sdk.x.Fn()) {
                return null;
            }
            this.logger.c(this.tag, "Failed to create ad session context", th2);
            return null;
        }
    }
}
