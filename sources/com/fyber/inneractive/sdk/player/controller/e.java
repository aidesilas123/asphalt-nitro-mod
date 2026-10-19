package com.fyber.inneractive.sdk.player.controller;

import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.a0;
import com.fyber.inneractive.sdk.config.b0;
import com.fyber.inneractive.sdk.config.c0;
import com.fyber.inneractive.sdk.config.enums.Skip;
import com.fyber.inneractive.sdk.config.enums.TapAction;
import com.fyber.inneractive.sdk.config.global.features.r;
import com.fyber.inneractive.sdk.external.InneractiveAdManager;
import com.fyber.inneractive.sdk.player.enums.VideoClickOrigin;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.k0;

/* JADX INFO: loaded from: classes2.dex */
public class e extends n<w> {
    public boolean C;
    public boolean D;
    public boolean E;

    public e(com.fyber.inneractive.sdk.player.c cVar, com.fyber.inneractive.sdk.player.ui.l lVar, b0 b0Var, com.fyber.inneractive.sdk.config.global.s sVar, boolean z, boolean z2, Skip skip, boolean z3, String str, boolean z4) {
        super(cVar, lVar, b0Var, sVar, z2, skip, str, z4);
        this.C = false;
        this.D = false;
        this.C = z;
        this.E = z3;
    }

    public static boolean d(int i) {
        return i > -1 && i <= 8;
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n
    public void A() {
        super.A();
        this.f2176d.b(false);
        if (this.C) {
            this.f2176d.i();
        }
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n
    public boolean B() {
        return !this.C;
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n
    public void D() {
        g gVar;
        super.D();
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        if (cVar == null || (gVar = cVar.b) == null || !gVar.f2173e.equals(com.fyber.inneractive.sdk.player.enums.b.Completed) || !this.C) {
            return;
        }
        this.f2176d.i();
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n
    public void a(k0 k0Var) {
        r.b bVar;
        TapAction tapAction = ((a0) this.b).f1942f.i;
        if (tapAction == TapAction.CTR) {
            a(false, VideoClickOrigin.VIDEO, k0Var);
            return;
        }
        if (tapAction != TapAction.FULLSCREEN && tapAction != TapAction.DO_NOTHING) {
            IAlog.a("% sonVideoClicked called, but we recieved an unknown tap action %s", IAlog.a(this), tapAction);
            return;
        }
        com.fyber.inneractive.sdk.config.global.features.r rVar = (com.fyber.inneractive.sdk.config.global.features.r) this.c.a(com.fyber.inneractive.sdk.config.global.features.r.class);
        rVar.getClass();
        String strA = rVar.a("click_action", com.fyber.inneractive.sdk.config.global.features.r.f1961e.mKey);
        r.b[] bVarArrValues = r.b.values();
        int length = bVarArrValues.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                bVar = r.b.NONE;
                break;
            }
            bVar = bVarArrValues[i];
            if (strA.equalsIgnoreCase(bVar.mKey)) {
                break;
            } else {
                i++;
            }
        }
        if (!bVar.equals(r.b.OPEN)) {
            if (!(this.w != com.fyber.inneractive.sdk.ignite.k.NONE && IAConfigManager.M.E.d())) {
                return;
            }
        }
        a(false, VideoClickOrigin.VIDEO, k0Var);
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n, com.fyber.inneractive.sdk.player.ui.i
    public void a(boolean z) {
        com.fyber.inneractive.sdk.player.c cVar;
        g gVar;
        if (z && (cVar = this.a) != null && (gVar = cVar.b) != null && !gVar.f2173e.equals(com.fyber.inneractive.sdk.player.enums.b.Completed) && !this.f2176d.f()) {
            h(false);
        }
        super.a(z);
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n, com.fyber.inneractive.sdk.player.ui.i
    public void b() {
        if (this.h) {
            v();
        } else {
            k();
        }
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n, com.fyber.inneractive.sdk.player.controller.b
    public void d(boolean z) {
        g gVar;
        com.fyber.inneractive.sdk.player.enums.b bVar;
        super.d(z);
        if (this.C) {
            this.f2176d.i();
            this.f2176d.d(false);
            this.f2178f = 0;
        }
        C();
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        this.f2176d.b((cVar == null || (gVar = cVar.b) == null || ((bVar = gVar.f2173e) != com.fyber.inneractive.sdk.player.enums.b.Preparing && bVar != com.fyber.inneractive.sdk.player.enums.b.Prepared)) ? false : true);
        this.f2176d.c(false);
        com.fyber.inneractive.sdk.player.ui.l lVar = this.f2176d;
        com.fyber.inneractive.sdk.player.ui.c cVar2 = new com.fyber.inneractive.sdk.player.ui.c();
        cVar2.b = false;
        lVar.d(new com.fyber.inneractive.sdk.player.ui.b(cVar2));
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x006e  */
    @Override // com.fyber.inneractive.sdk.player.controller.n
    @android.annotation.SuppressLint({"NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean k() {
        /*
            r7 = this;
            super.k()
            com.fyber.inneractive.sdk.player.c r0 = r7.a
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L76
            com.fyber.inneractive.sdk.player.controller.g r0 = r0.b
            if (r0 == 0) goto L76
            boolean r0 = r7.D
            if (r0 == 0) goto L12
            goto L76
        L12:
            r0 = 2
            com.fyber.inneractive.sdk.player.ui.l r3 = r7.f2176d     // Catch: java.lang.Throwable -> L2a
            android.content.Context r3 = r3.getContext()     // Catch: java.lang.Throwable -> L2a
            java.lang.String r4 = "audio"
            java.lang.Object r3 = r3.getSystemService(r4)     // Catch: java.lang.Throwable -> L2a
            android.media.AudioManager r3 = (android.media.AudioManager) r3     // Catch: java.lang.Throwable -> L2a
            int r4 = r3.getRingerMode()     // Catch: java.lang.Throwable -> L2a
            int r3 = r3.getStreamVolume(r0)     // Catch: java.lang.Throwable -> L2b
            goto L2c
        L2a:
            r4 = 0
        L2b:
            r3 = 0
        L2c:
            boolean r5 = r7.C
            if (r5 != 0) goto L40
            com.fyber.inneractive.sdk.config.b0 r5 = r7.b
            com.fyber.inneractive.sdk.config.a0 r5 = (com.fyber.inneractive.sdk.config.a0) r5
            com.fyber.inneractive.sdk.config.c0 r5 = r5.f1942f
            java.lang.Boolean r5 = r5.f1947d
            boolean r5 = r5.booleanValue()
            if (r5 == 0) goto L40
            r5 = 1
            goto L41
        L40:
            r5 = 0
        L41:
            if (r5 != 0) goto L6e
            boolean r5 = r7.E
            if (r5 == 0) goto L55
            com.fyber.inneractive.sdk.config.b0 r5 = r7.b
            com.fyber.inneractive.sdk.config.a0 r5 = (com.fyber.inneractive.sdk.config.a0) r5
            com.fyber.inneractive.sdk.config.c0 r5 = r5.f1942f
            com.fyber.inneractive.sdk.config.enums.UnitDisplayType r5 = r5.j
            com.fyber.inneractive.sdk.config.enums.UnitDisplayType r6 = com.fyber.inneractive.sdk.config.enums.UnitDisplayType.REWARDED
            if (r5 == r6) goto L55
            r5 = 1
            goto L56
        L55:
            r5 = 0
        L56:
            if (r5 == 0) goto L59
            goto L6e
        L59:
            if (r3 <= 0) goto L71
            if (r4 != r0) goto L71
            java.lang.Object[] r0 = new java.lang.Object[r1]
            java.lang.String r3 = com.fyber.inneractive.sdk.util.IAlog.a(r7)
            r0[r2] = r3
            java.lang.String r3 = "%s setting default volume. unmuting player"
            com.fyber.inneractive.sdk.util.IAlog.a(r3, r0)
            r7.i(r2)
            goto L71
        L6e:
            r7.g(r2)
        L71:
            r7.E()
            r7.D = r1
        L76:
            r7.h(r2)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.controller.e.k():boolean");
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n
    public int o() {
        return IAConfigManager.M.u.b.a("VideoFullscreenBufferingTimeout", 12, 1) * 1000;
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n
    public int s() {
        c0 c0Var;
        com.fyber.inneractive.sdk.config.global.features.b bVarP = p();
        int iD = bVarP != null ? bVarP.d() : -1;
        com.fyber.inneractive.sdk.config.i iVar = IAConfigManager.M.u.b;
        b0 b0Var = this.b;
        Skip skip = this.A;
        boolean zIsCurrentUserAChild = InneractiveAdManager.isCurrentUserAChild();
        com.fyber.inneractive.sdk.config.g gVarA = iVar.a("vast_configuration");
        gVarA.getClass();
        int i = gVarA.a.containsKey("skip_d") ? Integer.parseInt(gVarA.a.get("skip_d")) : -1;
        int iMax = Math.max(i, -1);
        if (skip == null && b0Var != null && (c0Var = ((a0) b0Var).f1942f) != null) {
            skip = c0Var.h;
        }
        if (zIsCurrentUserAChild) {
            if (d(iD)) {
                return iD;
            }
            if (!d(iMax)) {
                if (d(skip.value().intValue())) {
                    return skip.value().intValue();
                }
                return 5;
            }
        } else if (iMax <= -1 || iMax > 5) {
            if (skip == Skip.DEFAULT) {
                return 99999;
            }
            return skip.value().intValue();
        }
        return iMax;
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n
    public void u() {
        this.u = true;
        IAlog.a("%s onBufferingTimeout reached. Skipping to end card", IAlog.a(this));
        c(false);
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n
    public void w() {
        ListenerT listenert = this.f2179g;
        if (listenert != 0) {
            listenert.k();
        }
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n
    public void y() {
        this.f2176d.d(true);
        C();
        n();
        k();
        h(true);
    }
}
