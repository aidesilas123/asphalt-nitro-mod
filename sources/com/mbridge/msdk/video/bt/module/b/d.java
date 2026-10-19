package com.mbridge.msdk.video.bt.module.b;

import android.content.Context;

/* JADX INFO: compiled from: ProxyShowRewardListener.java */
/* JADX INFO: loaded from: classes4.dex */
public final class d extends b {
    private h a;
    private com.mbridge.msdk.videocommon.d.c b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7501d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f7502e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Context f7503f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f7504g = false;
    private boolean h = false;
    private boolean i = false;

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public d(android.content.Context r4, boolean r5, com.mbridge.msdk.videocommon.d.c r6, com.mbridge.msdk.foundation.entity.CampaignEx r7, com.mbridge.msdk.video.bt.module.b.h r8, java.lang.String r9, java.lang.String r10) {
        /*
            r3 = this;
            r3.<init>()
            r0 = 0
            r3.f7504g = r0
            r3.h = r0
            r3.i = r0
            r3.a = r8
            r3.b = r6
            r3.c = r10
            r3.f7501d = r9
            r3.f7502e = r5
            r3.f7503f = r4
            com.mbridge.msdk.foundation.controller.b r4 = com.mbridge.msdk.foundation.controller.b.d()     // Catch: java.lang.Exception -> L72
            java.lang.String r4 = r4.h()     // Catch: java.lang.Exception -> L72
            boolean r5 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Exception -> L72
            r8 = 0
            if (r5 != 0) goto L43
            com.mbridge.msdk.c.f r5 = com.mbridge.msdk.c.f.a()     // Catch: java.lang.Exception -> L72
            com.mbridge.msdk.c.e r4 = r5.b(r4)     // Catch: java.lang.Exception -> L72
            if (r4 != 0) goto L38
            com.mbridge.msdk.c.f r4 = com.mbridge.msdk.c.f.a()     // Catch: java.lang.Exception -> L72
            com.mbridge.msdk.c.e r4 = r4.b()     // Catch: java.lang.Exception -> L72
        L38:
            if (r4 == 0) goto L43
            long r4 = r4.Q()     // Catch: java.lang.Exception -> L72
            r1 = 1000(0x3e8, double:4.94E-321)
            long r4 = r4 * r1
            goto L44
        L43:
            r4 = r8
        L44:
            com.mbridge.msdk.videocommon.d.b r10 = com.mbridge.msdk.videocommon.d.b.a()     // Catch: java.lang.Exception -> L72
            com.mbridge.msdk.videocommon.d.a r10 = r10.b()     // Catch: java.lang.Exception -> L72
            if (r10 == 0) goto L52
            long r8 = r10.f()     // Catch: java.lang.Exception -> L72
        L52:
            if (r7 == 0) goto L72
            boolean r4 = r7.isSpareOffer(r8, r4)     // Catch: java.lang.Exception -> L72
            if (r4 == 0) goto L6c
            r4 = 1
            r7.setSpareOfferFlag(r4)     // Catch: java.lang.Exception -> L72
            int r5 = r6.z()     // Catch: java.lang.Exception -> L72
            if (r5 != r4) goto L68
            r7.setCbt(r4)     // Catch: java.lang.Exception -> L72
            goto L72
        L68:
            r7.setCbt(r0)     // Catch: java.lang.Exception -> L72
            goto L72
        L6c:
            r7.setSpareOfferFlag(r0)     // Catch: java.lang.Exception -> L72
            r7.setCbt(r0)     // Catch: java.lang.Exception -> L72
        L72:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.bt.module.b.d.<init>(android.content.Context, boolean, com.mbridge.msdk.videocommon.d.c, com.mbridge.msdk.foundation.entity.CampaignEx, com.mbridge.msdk.video.bt.module.b.h, java.lang.String, java.lang.String):void");
    }

    @Override // com.mbridge.msdk.video.bt.module.b.b, com.mbridge.msdk.video.bt.module.b.h
    public final void a() {
        super.a();
        h hVar = this.a;
        if (hVar == null || this.f7504g) {
            return;
        }
        this.f7504g = true;
        hVar.a();
        this.a.a(2, this.f7501d, this.c);
    }

    @Override // com.mbridge.msdk.video.bt.module.b.b, com.mbridge.msdk.video.bt.module.b.h
    public final void a(String str) {
        super.a(str);
        h hVar = this.a;
        if (hVar == null || this.h) {
            return;
        }
        this.h = true;
        hVar.a(str);
        this.a.a(4, this.f7501d, this.c);
    }

    @Override // com.mbridge.msdk.video.bt.module.b.b, com.mbridge.msdk.video.bt.module.b.h
    public final void a(String str, String str2) {
        super.a(str, str2);
        h hVar = this.a;
        if (hVar != null) {
            hVar.a(str, str2);
            this.a.a(5, str, str2);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.b.b, com.mbridge.msdk.video.bt.module.b.h
    public final void a(boolean z, int i) {
        super.a(z, i);
        h hVar = this.a;
        if (hVar == null || this.i) {
            return;
        }
        hVar.a(z, i);
    }

    @Override // com.mbridge.msdk.video.bt.module.b.b, com.mbridge.msdk.video.bt.module.b.h
    public final void a(boolean z, com.mbridge.msdk.videocommon.b.c cVar) {
        super.a(z, cVar);
        h hVar = this.a;
        if (hVar == null || this.i) {
            return;
        }
        this.i = true;
        hVar.a(7, this.f7501d, this.c);
        this.a.a(z, cVar);
    }

    @Override // com.mbridge.msdk.video.bt.module.b.b, com.mbridge.msdk.video.bt.module.b.h
    public final void a(boolean z, String str, String str2) {
        super.a(z, str, str2);
        h hVar = this.a;
        if (hVar != null) {
            hVar.a(z, str, str2);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.b.b, com.mbridge.msdk.video.bt.module.b.h
    public final void b(String str, String str2) {
        super.b(str, str2);
        h hVar = this.a;
        if (hVar != null) {
            hVar.b(str, str2);
            this.a.a(6, str, str2);
        }
    }
}
