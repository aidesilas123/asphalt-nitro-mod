package com.hyprmx.android.sdk.om;

import android.text.TextUtils;
import android.view.View;
import com.hyprmx.android.sdk.om.f;
import com.hyprmx.android.sdk.p002assert.ThreadAssert;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.iab.omid.library.jungroup.adsession.k;
import com.iab.omid.library.jungroup.adsession.l;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class j implements f {
    public final com.iab.omid.library.jungroup.adsession.j a;
    public final String b;
    public final com.hyprmx.android.sdk.model.vast.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4592d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ThreadAssert f4593e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public com.iab.omid.library.jungroup.adsession.b f4594f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public com.iab.omid.library.jungroup.adsession.a f4595g;
    public com.iab.omid.library.jungroup.adsession.media.b h;

    public j(com.iab.omid.library.jungroup.adsession.j omPartner, String omJSContent, com.hyprmx.android.sdk.model.vast.a vastAd, String customReferenceData, ThreadAssert threadAssert) {
        Intrinsics.checkNotNullParameter(omPartner, "omPartner");
        Intrinsics.checkNotNullParameter(omJSContent, "omJSContent");
        Intrinsics.checkNotNullParameter(vastAd, "vastAd");
        Intrinsics.checkNotNullParameter(customReferenceData, "customReferenceData");
        Intrinsics.checkNotNullParameter(threadAssert, "assert");
        this.a = omPartner;
        this.b = omJSContent;
        this.c = vastAd;
        this.f4592d = customReferenceData;
        this.f4593e = threadAssert;
    }

    @Override // com.hyprmx.android.sdk.om.f
    public final com.hyprmx.android.sdk.tracking.a a(float f2) {
        com.iab.omid.library.jungroup.adsession.media.b bVar = this.h;
        if (bVar == null) {
            return new f.a();
        }
        Intrinsics.checkNotNull(bVar);
        return new i(bVar, f2);
    }

    public final com.iab.omid.library.jungroup.adsession.d a(ArrayList arrayList) {
        k verificationScriptResource;
        if (this.b.length() == 0) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            com.hyprmx.android.sdk.model.vast.b bVar = (com.hyprmx.android.sdk.model.vast.b) it.next();
            for (com.hyprmx.android.sdk.model.vast.d dVar : bVar.b) {
                try {
                    if (bVar.f4572d != null) {
                        String str = bVar.a;
                        URL url = new URL(dVar.a);
                        String str2 = bVar.f4572d;
                        if (TextUtils.isEmpty(str)) {
                            throw new IllegalArgumentException("VendorKey is null or empty");
                        }
                        if (TextUtils.isEmpty(str2)) {
                            throw new IllegalArgumentException("VerificationParameters is null or empty");
                        }
                        verificationScriptResource = new k(str, url, str2);
                    } else {
                        verificationScriptResource = new k(null, new URL(dVar.a), null);
                    }
                    Intrinsics.checkNotNullExpressionValue(verificationScriptResource, "verificationScriptResource");
                    arrayList2.add(verificationScriptResource);
                } catch (Exception e2) {
                    HyprMXLog.e("Error converting vast AdVerification to OM VerificationScriptResource - " + e2.getLocalizedMessage());
                }
            }
        }
        com.iab.omid.library.jungroup.adsession.j jVar = this.a;
        String str3 = this.b;
        String str4 = this.f4592d;
        com.iab.omid.library.jungroup.d.d.a("Partner is null", jVar);
        com.iab.omid.library.jungroup.d.d.a("OM SDK JS script content is null", str3);
        if (str4 == null || str4.length() <= 256) {
            return new com.iab.omid.library.jungroup.adsession.d(jVar, null, str3, arrayList2, str4, com.iab.omid.library.jungroup.adsession.e.NATIVE);
        }
        throw new IllegalArgumentException("CustomReferenceData is greater than 256 characters");
    }

    @Override // com.hyprmx.android.sdk.om.f
    public /* synthetic */ void a() {
        f.CC.b(this);
    }

    @Override // com.hyprmx.android.sdk.om.f
    public /* synthetic */ void a(View view) {
        f.CC.c(this, view);
    }

    @Override // com.hyprmx.android.sdk.om.f
    public /* synthetic */ void a(View view, com.iab.omid.library.jungroup.adsession.g gVar) {
        f.CC.d(this, view, gVar);
    }

    @Override // com.hyprmx.android.sdk.om.f
    public /* synthetic */ void b() {
        f.CC.e(this);
    }

    @Override // com.hyprmx.android.sdk.om.f
    public final void b(View adView) {
        StringBuilder sb;
        StringBuilder sb2;
        Intrinsics.checkNotNullParameter(adView, "adView");
        com.iab.omid.library.jungroup.adsession.i iVar = com.iab.omid.library.jungroup.adsession.i.NATIVE;
        try {
            com.iab.omid.library.jungroup.adsession.d dVarA = a(this.c.e());
            if (dVarA == null) {
                HyprMXLog.e("OM AdSessionContext is null.");
            } else {
                com.iab.omid.library.jungroup.adsession.c cVarA = com.iab.omid.library.jungroup.adsession.c.a(com.iab.omid.library.jungroup.adsession.f.VIDEO, com.iab.omid.library.jungroup.adsession.h.BEGIN_TO_RENDER, iVar, iVar);
                if (!com.iab.omid.library.jungroup.a.a.a) {
                    throw new IllegalStateException("Method called before OM SDK activation");
                }
                this.f4594f = new l(cVarA, dVarA);
            }
        } catch (IllegalArgumentException e2) {
            HyprMXLog.e("Error creating or configuring open measurement ad session: " + e2.getLocalizedMessage());
        }
        c(adView);
        com.iab.omid.library.jungroup.adsession.b bVar = this.f4594f;
        if (bVar != null) {
            try {
                this.f4595g = com.iab.omid.library.jungroup.adsession.a.a(bVar);
                this.h = com.iab.omid.library.jungroup.adsession.media.b.a(this.f4594f);
            } catch (IllegalArgumentException e3) {
                e = e3;
                sb = new StringBuilder("Error creating ad or video events with error msg - ");
                sb.append(e.getLocalizedMessage());
                HyprMXLog.e(sb.toString());
            } catch (IllegalStateException e4) {
                e = e4;
                sb = new StringBuilder("Error creating ad or video events with error msg - ");
                sb.append(e.getLocalizedMessage());
                HyprMXLog.e(sb.toString());
            }
        }
        com.iab.omid.library.jungroup.adsession.b bVarD = d();
        if (bVarD != null) {
            bVarD.a();
        }
        try {
            com.iab.omid.library.jungroup.adsession.a aVar = this.f4595g;
            if (aVar != null) {
                com.hyprmx.android.sdk.model.vast.e eVar = this.c.b;
                long j = eVar.b;
                aVar.a((j > 0L ? 1 : (j == 0L ? 0 : -1)) != 0 && (j > eVar.a ? 1 : (j == eVar.a ? 0 : -1)) < 0 ? new com.iab.omid.library.jungroup.adsession.media.d(true, Float.valueOf(j / ((long) 1000))) : new com.iab.omid.library.jungroup.adsession.media.d(false, null));
            }
        } catch (Exception e5) {
            HyprMXLog.e("Error signaling ad load event with error msg - " + e5.getLocalizedMessage());
        }
        try {
            com.iab.omid.library.jungroup.adsession.a aVar2 = this.f4595g;
            if (aVar2 != null) {
                aVar2.a();
            }
        } catch (IllegalArgumentException e6) {
            e = e6;
            sb2 = new StringBuilder("Error signaling impression with error msg - ");
            sb2.append(e.getLocalizedMessage());
            HyprMXLog.e(sb2.toString());
        } catch (IllegalStateException e7) {
            e = e7;
            sb2 = new StringBuilder("Error signaling impression with error msg - ");
            sb2.append(e.getLocalizedMessage());
            HyprMXLog.e(sb2.toString());
        }
    }

    @Override // com.hyprmx.android.sdk.om.f
    public final void c() {
        this.f4594f = null;
    }

    @Override // com.hyprmx.android.sdk.om.f
    public /* synthetic */ void c(View view) {
        f.CC.f(this, view);
    }

    @Override // com.hyprmx.android.sdk.om.f
    public final com.iab.omid.library.jungroup.adsession.b d() {
        return this.f4594f;
    }
}
