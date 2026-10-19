package com.fyber.inneractive.sdk.player.controller;

import android.animation.ObjectAnimator;
import android.app.Application;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.os.AsyncTask;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.fyber.inneractive.sdk.R;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.a0;
import com.fyber.inneractive.sdk.config.b0;
import com.fyber.inneractive.sdk.config.enums.Skip;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.config.f0;
import com.fyber.inneractive.sdk.config.global.features.r;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.player.controller.g;
import com.fyber.inneractive.sdk.player.controller.w;
import com.fyber.inneractive.sdk.player.e;
import com.fyber.inneractive.sdk.player.enums.VideoClickOrigin;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.k0;
import com.fyber.inneractive.sdk.util.x;
import com.fyber.inneractive.sdk.web.c0;
import com.iab.omid.library.fyber.adsession.AdSession;
import com.iab.omid.library.fyber.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.fyber.adsession.media.InteractionType;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class n<ListenerT extends w> implements com.fyber.inneractive.sdk.player.controller.b<ListenerT>, g.f, g.e, com.fyber.inneractive.sdk.player.ui.i {
    public Skip A;
    public boolean B;
    public com.fyber.inneractive.sdk.player.c a;
    public b0 b;
    public com.fyber.inneractive.sdk.config.global.s c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public com.fyber.inneractive.sdk.player.ui.l f2176d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public g.InterfaceC0172g f2177e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2178f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ListenerT f2179g;
    public boolean h;
    public float i;
    public Runnable j;
    public boolean k;
    public boolean l;
    public Application.ActivityLifecycleCallbacks m;
    public boolean n;
    public boolean o;
    public Bitmap p;
    public AsyncTask<?, ?, ?> q;
    public boolean r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public com.fyber.inneractive.sdk.ignite.k w;
    public com.fyber.inneractive.sdk.player.ui.f x;
    public String y;
    public boolean z;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[com.fyber.inneractive.sdk.player.enums.b.values().length];
            a = iArr;
            try {
                iArr[com.fyber.inneractive.sdk.player.enums.b.Prepared.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[com.fyber.inneractive.sdk.player.enums.b.Buffering.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[com.fyber.inneractive.sdk.player.enums.b.Playing.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[com.fyber.inneractive.sdk.player.enums.b.Paused.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[com.fyber.inneractive.sdk.player.enums.b.Completed.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[com.fyber.inneractive.sdk.player.enums.b.Error.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[com.fyber.inneractive.sdk.player.enums.b.Preparing.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[com.fyber.inneractive.sdk.player.enums.b.Seeking.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public class b extends GestureDetector.SimpleOnGestureListener {
        public b(n nVar) {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            return true;
        }
    }

    public class c implements f {
        public c() {
        }

        @Override // com.fyber.inneractive.sdk.player.controller.n.f
        public void a(Bitmap bitmap) {
            n nVar = n.this;
            nVar.a(nVar.f2176d, bitmap, true, true);
        }
    }

    public class d extends AsyncTask<Integer, Void, Bitmap> {
        public d() {
        }

        @Override // android.os.AsyncTask
        public Bitmap doInBackground(Integer[] numArr) {
            Integer[] numArr2 = numArr;
            int iIntValue = numArr2[0].intValue();
            int iIntValue2 = numArr2[1].intValue();
            n.this.getClass();
            Application application = com.fyber.inneractive.sdk.util.l.a;
            Bitmap bitmapCreateBitmap = null;
            if (application != null && application.getResources() != null && application.getResources().getDisplayMetrics() != null) {
                DisplayMetrics displayMetrics = application.getResources().getDisplayMetrics();
                try {
                    bitmapCreateBitmap = Bitmap.createBitmap(iIntValue, iIntValue2, Bitmap.Config.ARGB_8888);
                    if (bitmapCreateBitmap != null) {
                        bitmapCreateBitmap.setDensity(displayMetrics.densityDpi);
                    }
                } catch (Throwable unused) {
                }
            }
            return bitmapCreateBitmap;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            super.onPostExecute(bitmap2);
            n nVar = n.this;
            nVar.p = bitmap2;
            nVar.q = null;
        }
    }

    public class e implements Runnable {
        public final /* synthetic */ boolean a;
        public final /* synthetic */ f b;

        public class a implements Runnable {
            public final /* synthetic */ Bitmap a;

            public a(Bitmap bitmap) {
                this.a = bitmap;
            }

            @Override // java.lang.Runnable
            public void run() {
                f fVar = e.this.b;
                if (fVar != null) {
                    fVar.a(this.a);
                }
            }
        }

        public e(boolean z, f fVar) {
            this.a = z;
            this.b = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.fyber.inneractive.sdk.player.c cVar;
            g gVar;
            n nVar = n.this;
            boolean z = this.a;
            Bitmap bitmap = null;
            if (nVar.p != null && (cVar = nVar.a) != null && (gVar = cVar.b) != null) {
                if (nVar.o) {
                    bitmap = cVar.k;
                } else {
                    TextureView textureView = gVar.j;
                    Object[] objArr = new Object[3];
                    boolean z2 = false;
                    objArr[0] = IAlog.a(nVar);
                    objArr[1] = textureView;
                    if (textureView != null && textureView.isAvailable()) {
                        z2 = true;
                    }
                    objArr[2] = Boolean.valueOf(z2);
                    IAlog.a("%sSave snapshot entered: tv = %s avail = %s", objArr);
                    if (textureView != null && textureView.isAvailable()) {
                        try {
                            Bitmap bitmap2 = textureView.getBitmap(nVar.p);
                            if (nVar.f2176d.getVideoWidth() > 0 && nVar.f2176d.getVideoHeight() > 0) {
                                nVar.p = null;
                                nVar.a(nVar.f2176d.getVideoWidth(), nVar.f2176d.getVideoHeight());
                            }
                            if (z) {
                                com.fyber.inneractive.sdk.util.c cVar2 = new com.fyber.inneractive.sdk.util.c();
                                cVar2.c = 20;
                                cVar2.f2739d = 1;
                                cVar2.a = bitmap2.getWidth();
                                cVar2.b = bitmap2.getHeight();
                                nVar.a.a(com.fyber.inneractive.sdk.util.b.a(nVar.f2176d.getContext(), bitmap2, cVar2));
                                nVar.o = true;
                            } else {
                                nVar.a.a(bitmap2);
                            }
                            IAlog.a(nVar);
                            bitmap = nVar.a.k;
                        } catch (Exception unused) {
                            IAlog.a(nVar);
                        }
                    }
                }
            }
            com.fyber.inneractive.sdk.util.m.b.post(new a(bitmap));
        }
    }

    public interface f {
        void a(Bitmap bitmap);
    }

    public n(com.fyber.inneractive.sdk.player.c cVar, com.fyber.inneractive.sdk.player.ui.l lVar, b0 b0Var, com.fyber.inneractive.sdk.config.global.s sVar, boolean z, Skip skip, String str, boolean z2) {
        this.f2178f = 0;
        this.h = false;
        this.i = -0.1f;
        this.l = false;
        this.o = false;
        this.p = null;
        this.q = null;
        this.r = false;
        this.s = false;
        this.t = false;
        this.u = false;
        this.v = false;
        this.w = com.fyber.inneractive.sdk.ignite.k.NONE;
        this.A = null;
        this.B = false;
        this.A = skip;
        this.a = cVar;
        this.b = b0Var;
        this.c = sVar;
        this.f2176d = lVar;
        this.n = z;
        this.y = str;
        this.z = z2;
        lVar.setListener(this);
        i();
        new GestureDetector(lVar.getContext(), new b(this));
    }

    public n(com.fyber.inneractive.sdk.player.c cVar, com.fyber.inneractive.sdk.player.ui.l lVar, b0 b0Var, com.fyber.inneractive.sdk.config.global.s sVar, boolean z, String str, boolean z2) {
        this(cVar, lVar, b0Var, sVar, z, null, str, z2);
    }

    public static boolean a(n nVar) {
        return nVar.c() != null && nVar.c().c;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void A() {
        /*
            r5 = this;
            com.fyber.inneractive.sdk.player.ui.l r0 = r5.f2176d
            r1 = 0
            r0.a(r1)
            com.fyber.inneractive.sdk.player.ui.l r0 = r5.f2176d
            r0.c(r1)
            com.fyber.inneractive.sdk.player.ui.l r0 = r5.f2176d
            com.fyber.inneractive.sdk.player.ui.c r2 = new com.fyber.inneractive.sdk.player.ui.c
            r2.<init>()
            r2.b = r1
            com.fyber.inneractive.sdk.player.ui.b r3 = new com.fyber.inneractive.sdk.player.ui.b
            r3.<init>(r2)
            r0.d(r3)
            r5.j()
            com.fyber.inneractive.sdk.player.c r0 = r5.a
            r2 = 1
            if (r0 == 0) goto L7c
            boolean r0 = r5.B()
            if (r0 == 0) goto L7c
            boolean r0 = r5.h
            if (r0 != 0) goto L7c
            com.fyber.inneractive.sdk.player.c r0 = r5.a
            com.fyber.inneractive.sdk.player.controller.g r0 = r0.b
            int r0 = r0.d()
            com.fyber.inneractive.sdk.player.c r3 = r5.a
            r4 = r3
            com.fyber.inneractive.sdk.player.e r4 = (com.fyber.inneractive.sdk.player.e) r4
            com.fyber.inneractive.sdk.config.b0 r4 = r4.y
            int r3 = com.fyber.inneractive.sdk.player.c.a(r3)
            boolean r0 = com.fyber.inneractive.sdk.player.c.a(r0, r4, r3)
            if (r0 == 0) goto L7c
            int r0 = r5.f2178f
            if (r0 > 0) goto L54
            com.fyber.inneractive.sdk.player.ui.l r0 = r5.f2176d
            r0.d(r2)
            r5.n()
            goto L7c
        L54:
            com.fyber.inneractive.sdk.player.c r0 = r5.a
            if (r0 == 0) goto L6c
            com.fyber.inneractive.sdk.player.controller.g r0 = r0.b
            if (r0 == 0) goto L6c
            int r0 = r0.d()
            int r0 = r0 / 1000
            int r3 = r5.f2178f
            if (r3 < r0) goto L6c
            com.fyber.inneractive.sdk.player.ui.l r0 = r5.f2176d
            r0.d(r1)
            goto L7c
        L6c:
            boolean r0 = r5.s
            if (r0 != 0) goto L7c
            com.fyber.inneractive.sdk.player.ui.l r0 = r5.f2176d
            r0.d(r2)
            int r0 = r5.f2178f
            r5.c(r0)
            r5.s = r2
        L7c:
            ListenerT extends com.fyber.inneractive.sdk.player.controller.w r0 = r5.f2179g
            if (r0 == 0) goto L89
            boolean r3 = r5.k
            if (r3 != 0) goto L89
            r5.k = r2
            r0.l()
        L89:
            r5.o = r1
            r5.t = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.controller.n.A():void");
    }

    public abstract boolean B();

    public void C() {
        com.fyber.inneractive.sdk.config.global.s sVar;
        com.fyber.inneractive.sdk.config.global.s sVar2 = this.c;
        String str = null;
        com.fyber.inneractive.sdk.config.global.features.r rVar = sVar2 != null ? (com.fyber.inneractive.sdk.config.global.features.r) sVar2.a(com.fyber.inneractive.sdk.config.global.features.r.class) : null;
        boolean zA = rVar != null ? rVar.a("show_cta", true) : true;
        ListenerT listenert = this.f2179g;
        if (listenert != null) {
            this.w = listenert.q();
        }
        com.fyber.inneractive.sdk.ignite.k kVar = this.w;
        boolean z = kVar == com.fyber.inneractive.sdk.ignite.k.NONE ? zA : true;
        com.fyber.inneractive.sdk.player.ui.l lVar = this.f2176d;
        if (lVar.k != null) {
            lVar.k.setAllCaps((!z || (sVar = lVar.K) == null || sVar.a(com.fyber.inneractive.sdk.config.global.features.r.class) == null) ? false : ((com.fyber.inneractive.sdk.config.global.features.r) lVar.K.a(com.fyber.inneractive.sdk.config.global.features.r.class)).d());
            com.fyber.inneractive.sdk.config.global.s sVar3 = lVar.K;
            com.fyber.inneractive.sdk.config.global.features.c cVar = sVar3 != null ? (com.fyber.inneractive.sdk.config.global.features.c) sVar3.a(com.fyber.inneractive.sdk.config.global.features.c.class) : null;
            if (cVar != null) {
                cVar.e(IAConfigManager.M.p);
                com.fyber.inneractive.sdk.model.vast.a aVar = cVar.f1959e;
                if (aVar != null && aVar.f2072d) {
                    str = aVar.a;
                }
            }
            if (IAConfigManager.M.E.d() && kVar.e()) {
                lVar.k.setText(R.string.ia_video_instant_install_text);
            } else if (TextUtils.isEmpty(str)) {
                lVar.k.setText(R.string.ia_video_install_now_text);
            } else {
                lVar.k.setText(str);
            }
            if (!TextUtils.isEmpty(lVar.N)) {
                lVar.k.setText(lVar.N);
            }
            lVar.k.setVisibility(z ? 0 : 4);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:147:0x01fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void D() {
        /*
            Method dump skipped, instruction units count: 702
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.controller.n.D():void");
    }

    public void E() {
        com.fyber.inneractive.sdk.player.ui.l lVar = this.f2176d;
        if (lVar.u != null) {
            lVar.setMuteButtonState(t());
        }
    }

    public final int a(com.fyber.inneractive.sdk.config.global.features.r rVar) {
        if (rVar == null) {
            return 500;
        }
        Integer numB = rVar.b("endcard_animation_duration");
        int iIntValue = numB != null ? numB.intValue() : 500;
        if (iIntValue < 500 || iIntValue > 3000) {
            return 500;
        }
        return iIntValue;
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00b9  */
    @Override // com.fyber.inneractive.sdk.player.controller.g.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(int r10) {
        /*
            Method dump skipped, instruction units count: 319
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.controller.n.a(int):void");
    }

    public final void a(int i, int i2) {
        Bitmap bitmap = this.p;
        if (!(bitmap != null && bitmap.getWidth() == i && this.p.getHeight() == i2) && i2 > 0 && i > 0) {
            AsyncTask<?, ?, ?> asyncTask = this.q;
            if (asyncTask != null) {
                asyncTask.cancel(true);
            }
            this.p = null;
            d dVar = new d();
            this.q = dVar;
            dVar.executeOnExecutor(com.fyber.inneractive.sdk.util.m.a, Integer.valueOf(i), Integer.valueOf(i2));
        }
    }

    public void a(int i, k0 k0Var) {
        String str;
        IAlog.a("onClicked called with %d", Integer.valueOf(i));
        switch (i) {
            case 1:
                if (t()) {
                    i(true);
                    com.fyber.inneractive.sdk.player.c cVar = this.a;
                    if (cVar != null) {
                        com.fyber.inneractive.sdk.player.e eVar = (com.fyber.inneractive.sdk.player.e) cVar;
                        eVar.a(eVar.v, VideoClickOrigin.MUTE, com.fyber.inneractive.sdk.model.vast.t.EVENT_UNMUTE);
                    }
                } else {
                    g(true);
                    com.fyber.inneractive.sdk.player.c cVar2 = this.a;
                    if (cVar2 != null) {
                        com.fyber.inneractive.sdk.player.e eVar2 = (com.fyber.inneractive.sdk.player.e) cVar2;
                        eVar2.a(eVar2.v, VideoClickOrigin.MUTE, com.fyber.inneractive.sdk.model.vast.t.EVENT_MUTE);
                    }
                }
                E();
                break;
            case 2:
                y();
                break;
            case 3:
                a(f0.b.CTA_BUTTON.value);
                a(false, VideoClickOrigin.CTA, k0Var);
                break;
            case 4:
                a(f0.b.COMPANION.value);
                com.fyber.inneractive.sdk.player.c cVar3 = this.a;
                com.fyber.inneractive.sdk.model.vast.c cVarC = cVar3 != null ? cVar3.c() : null;
                if (cVarC == null || cVarC.a != com.fyber.inneractive.sdk.model.vast.h.Static) {
                    str = null;
                } else {
                    str = cVarC.f2080g;
                    com.fyber.inneractive.sdk.player.c cVar4 = this.a;
                    if (cVar4 != null) {
                        cVar4.a(cVarC, VideoClickOrigin.COMPANION, com.fyber.inneractive.sdk.model.vast.t.EVENT_CLICK);
                    }
                }
                m();
                ListenerT listenert = this.f2179g;
                if (listenert != null) {
                    listenert.a(str, k0Var, null, false);
                }
                break;
            case 5:
                w();
                break;
            case 6:
                c(true);
                break;
            case 7:
                a(k0Var);
                break;
            case 8:
                a(f0.b.COMPANION.value);
                a(true, VideoClickOrigin.COMPANION, k0Var);
                break;
            case 9:
                com.fyber.inneractive.sdk.player.c cVar5 = this.a;
                if (cVar5 != null && !this.f2176d.h) {
                    cVar5.j = true;
                    h(false);
                    break;
                }
                break;
            case 10:
                a(f0.b.APP_INFO.value);
                a(false, VideoClickOrigin.APP_INFO, k0Var);
                break;
        }
    }

    @Override // com.fyber.inneractive.sdk.player.controller.b
    public void a(long j) {
        View view;
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        View viewB = cVar != null ? cVar.b() : null;
        com.fyber.inneractive.sdk.player.ui.l lVar = this.f2176d;
        boolean z = viewB == null;
        ObjectAnimator objectAnimator = lVar.L;
        if (objectAnimator != null) {
            if (objectAnimator.getDuration() <= j) {
                ViewGroup viewGroup = lVar.z;
                if (viewGroup != null) {
                    lVar.a((View) viewGroup.getParent(), 4);
                }
                lVar.L.start();
                lVar.L.addListener(new com.fyber.inneractive.sdk.player.ui.m(lVar));
            } else {
                lVar.M = true;
                lVar.L = null;
                ViewGroup viewGroup2 = lVar.z;
                if (viewGroup2 != null && viewGroup2.getParent() != null) {
                    ((View) lVar.z.getParent()).setOnTouchListener(null);
                }
            }
            if (z && (view = lVar.y) != null) {
                view.setVisibility(0);
                return;
            }
            ViewGroup viewGroup3 = lVar.z;
            if (viewGroup3 != null) {
                viewGroup3.setVisibility(0);
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.player.controller.b
    public void a(Bitmap bitmap) {
        g gVar;
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        if (cVar == null || (gVar = cVar.b) == null || gVar.f2173e == com.fyber.inneractive.sdk.player.enums.b.Completed) {
            return;
        }
        this.f2176d.a(cVar.j);
        this.f2176d.b(true);
        this.f2176d.setLastFrameBitmap(bitmap);
    }

    @Override // com.fyber.inneractive.sdk.player.controller.b
    public void a(com.fyber.inneractive.sdk.model.vast.h hVar, int i) {
        com.fyber.inneractive.sdk.config.global.s sVar;
        com.fyber.inneractive.sdk.flow.vast.c cVar;
        com.fyber.inneractive.sdk.web.b bVar;
        com.fyber.inneractive.sdk.flow.m mVar;
        com.fyber.inneractive.sdk.model.vast.c cVar2;
        com.fyber.inneractive.sdk.player.c cVar3 = this.a;
        if (cVar3 != null) {
            com.fyber.inneractive.sdk.player.e eVar = (com.fyber.inneractive.sdk.player.e) cVar3;
            IAlog.a("notifyCompanionDisplayed", new Object[0]);
            int i2 = e.b.a[hVar.ordinal()];
            if (i2 == 1) {
                if (eVar.A) {
                    return;
                }
                com.fyber.inneractive.sdk.network.r rVar = com.fyber.inneractive.sdk.network.r.VAST_DEFAULT_COMPANION_DISPLAYED;
                InneractiveAdRequest inneractiveAdRequest = eVar.f2138f;
                com.fyber.inneractive.sdk.flow.f0 f0Var = eVar.f2137e;
                new s.a(rVar, inneractiveAdRequest, f0Var != null ? (com.fyber.inneractive.sdk.response.g) f0Var.b : null, (f0Var == null || (sVar = f0Var.c) == null) ? null : sVar.c()).a((String) null);
                eVar.A = true;
                return;
            }
            if (i2 != 2) {
                if (eVar.b() == null || (mVar = eVar.z) == null || mVar.f2017g || (cVar2 = eVar.v.h) == null) {
                    return;
                }
                eVar.a(cVar2, VideoClickOrigin.COMPANION, com.fyber.inneractive.sdk.model.vast.t.EVENT_CREATIVE_VIEW);
                com.fyber.inneractive.sdk.flow.m mVar2 = eVar.z;
                if (!mVar2.f2017g) {
                    com.fyber.inneractive.sdk.network.r rVar2 = com.fyber.inneractive.sdk.network.r.VAST_COMPANION_DISPLAYED;
                    InneractiveAdRequest inneractiveAdRequest2 = mVar2.b;
                    com.fyber.inneractive.sdk.response.g gVar = mVar2.c;
                    com.fyber.inneractive.sdk.config.global.s sVar2 = mVar2.f2014d;
                    s.a aVar = new s.a(rVar2, inneractiveAdRequest2, gVar, sVar2 == null ? null : sVar2.c());
                    aVar.a("companion_data", mVar2.f2015e.h.a());
                    aVar.a((String) null);
                }
                mVar2.f2017g = true;
                return;
            }
            com.fyber.inneractive.sdk.flow.m mVar3 = eVar.z;
            if (mVar3 == null || (cVar = mVar3.l) == null) {
                return;
            }
            cVar.c = true;
            InneractiveAdRequest inneractiveAdRequest3 = mVar3.b;
            com.fyber.inneractive.sdk.response.g gVar2 = mVar3.c;
            com.fyber.inneractive.sdk.config.global.s sVar3 = mVar3.f2014d;
            cVar.f2032d = i;
            c0 c0Var = cVar.f2041g.a;
            cVar.f2033e = (!(c0Var instanceof com.fyber.inneractive.sdk.web.c) || (bVar = ((com.fyber.inneractive.sdk.web.c) c0Var).N) == null) ? null : bVar.b;
            if (cVar.h) {
                return;
            }
            s.a aVar2 = new s.a(com.fyber.inneractive.sdk.network.r.FMP_COMPANION_SUCCESSFULLY_SHOWN, inneractiveAdRequest3, gVar2, sVar3 == null ? null : sVar3.c());
            cVar.a(aVar2);
            aVar2.a((String) null);
            cVar.h = true;
        }
    }

    @Override // com.fyber.inneractive.sdk.player.controller.b
    public void a(com.fyber.inneractive.sdk.player.controller.c cVar) {
        s sVar = new s(this);
        c0 c0Var = cVar.a;
        if (c0Var != null) {
            c0Var.setListener(sVar);
        }
    }

    @Override // com.fyber.inneractive.sdk.player.controller.b
    public void a(ListenerT listenert) {
        this.f2179g = listenert;
    }

    @Override // com.fyber.inneractive.sdk.player.controller.g.f
    public void a(com.fyber.inneractive.sdk.player.enums.b bVar) {
        IAlog.a("%sonPlayerStateChanged with %s", IAlog.a(this), bVar);
        a(bVar, true);
    }

    public final void a(com.fyber.inneractive.sdk.player.enums.b bVar, boolean z) {
        ListenerT listenert;
        switch (a.a[bVar.ordinal()]) {
            case 1:
                if (this.r) {
                    this.f2176d.b(true);
                    D();
                    z();
                }
                break;
            case 2:
                if (this.r) {
                    this.f2176d.a(true);
                    this.f2176d.c(false);
                    Runnable runnable = this.j;
                    if (runnable == null) {
                        if (runnable == null) {
                            this.j = new o(this);
                        }
                        int iO = o();
                        IAlog.a("%s Starting buffering timeout with %d", IAlog.a(this), Integer.valueOf(iO));
                        this.f2176d.postDelayed(this.j, iO);
                    }
                }
                break;
            case 3:
                if (this.r) {
                    A();
                }
                break;
            case 4:
                x();
                break;
            case 5:
                if (this.r || (!this.z && !this.v)) {
                    this.v = true;
                    v();
                    if (z && (listenert = this.f2179g) != null) {
                        listenert.onCompleted();
                        break;
                    }
                }
                break;
            case 6:
                if (this.r) {
                    c(false);
                }
                break;
        }
    }

    public void a(com.fyber.inneractive.sdk.player.ui.l lVar, Bitmap bitmap, boolean z, boolean z2) {
        if (bitmap == null) {
            IAlog.a("IAVideoUIControllerBase : Unable set bitmap it is null", new Object[0]);
            return;
        }
        if (lVar == null) {
            IAlog.a("IAVideoUIControllerBase : Unable set last frame", new Object[0]);
            return;
        }
        lVar.setLastFrameBitmap(bitmap);
        if (z) {
            lVar.b(z2);
        }
    }

    public abstract void a(k0 k0Var);

    @Override // com.fyber.inneractive.sdk.player.controller.g.f
    public void a(Exception exc) {
    }

    public final void a(String str) {
        com.fyber.inneractive.sdk.config.c0 c0Var;
        f0 f0Var = IAConfigManager.M.x;
        b0 b0Var = this.b;
        if (b0Var == null || (c0Var = ((a0) b0Var).f1942f) == null) {
            return;
        }
        f0Var.a(c0Var.j, "LAST_VAST_CLICKED_TYPE", str);
    }

    public void a(boolean z) {
        com.fyber.inneractive.sdk.player.c cVar;
        g gVar;
        g.InterfaceC0172g interfaceC0172g;
        com.fyber.inneractive.sdk.player.ui.l lVar;
        Application application;
        if (this.r == z || (cVar = this.a) == null || cVar.b == null) {
            return;
        }
        IAlog.a("%sonVisibilityChanged: %s my video view is%s", IAlog.a(this), Boolean.valueOf(z), this.f2176d);
        if (!z) {
            this.r = false;
            com.fyber.inneractive.sdk.player.c cVar2 = this.a;
            if (cVar2 != null && (gVar = cVar2.b) != null && (interfaceC0172g = gVar.f2172d) != null && interfaceC0172g.equals(this.f2177e)) {
                IAlog.a("%sonVisibilityChanged pausing video", IAlog.a(this));
                pauseVideo();
                if (this.a.b.f2173e == com.fyber.inneractive.sdk.player.enums.b.Completed || ((lVar = this.f2176d) != null && lVar.f())) {
                    com.fyber.inneractive.sdk.player.ui.l lVar2 = this.f2176d;
                    if (lVar2.G != null) {
                        IAlog.a("Autoclick paused", new Object[0]);
                        lVar2.G.a();
                    }
                }
            }
            l();
            return;
        }
        this.r = true;
        com.fyber.inneractive.sdk.player.enums.b bVar = this.a.b.f2173e;
        if (bVar.equals(com.fyber.inneractive.sdk.player.enums.b.Completed) || this.f2176d.f()) {
            if (!this.v) {
                this.v = true;
                if (!this.B) {
                    v();
                    ListenerT listenert = this.f2179g;
                    if (listenert != null) {
                        listenert.onCompleted();
                    }
                }
            }
            com.fyber.inneractive.sdk.player.ui.l lVar3 = this.f2176d;
            if (lVar3 == null || lVar3.G == null) {
                return;
            }
            IAlog.a("Autoclick resumed", new Object[0]);
            lVar3.G.b();
            return;
        }
        if (!bVar.equals(com.fyber.inneractive.sdk.player.enums.b.Error)) {
            if (!bVar.equals(com.fyber.inneractive.sdk.player.enums.b.Idle)) {
                if (bVar == com.fyber.inneractive.sdk.player.enums.b.Start_in_progress || bVar == com.fyber.inneractive.sdk.player.enums.b.Playing) {
                    A();
                }
                com.fyber.inneractive.sdk.player.c cVar3 = this.a;
                if (!cVar3.p) {
                    com.fyber.inneractive.sdk.player.e eVar = (com.fyber.inneractive.sdk.player.e) cVar3;
                    eVar.a(eVar.v, VideoClickOrigin.InvalidOrigin, com.fyber.inneractive.sdk.model.vast.t.EVENT_CREATIVE_VIEW);
                    cVar3.p = true;
                }
                k();
                if (this.m != null || (application = com.fyber.inneractive.sdk.util.l.a) == null) {
                    return;
                }
                q qVar = new q(this);
                this.m = qVar;
                application.registerActivityLifecycleCallbacks(qVar);
                return;
            }
            this.a.getClass();
        }
        c(false);
    }

    public void a(boolean z, f fVar) {
        com.fyber.inneractive.sdk.util.m.a(new e(z, fVar));
    }

    public boolean a(boolean z, VideoClickOrigin videoClickOrigin, k0 k0Var) {
        m();
        ListenerT listenert = this.f2179g;
        boolean z2 = true;
        if (listenert == null) {
            z2 = false;
        } else {
            if (z) {
                com.fyber.inneractive.sdk.player.c cVar = this.a;
                if (cVar != null) {
                    com.fyber.inneractive.sdk.model.vast.b bVar = ((com.fyber.inneractive.sdk.player.e) cVar).v;
                    listenert.a(bVar != null ? bVar.b : null, k0Var, null, true);
                    com.fyber.inneractive.sdk.player.e eVar = (com.fyber.inneractive.sdk.player.e) this.a;
                    eVar.a(eVar.v, videoClickOrigin, com.fyber.inneractive.sdk.model.vast.t.EVENT_CLICK);
                }
            } else {
                x.a aVarA = listenert.a(k0Var, videoClickOrigin == VideoClickOrigin.VIDEO ? com.fyber.inneractive.sdk.util.e.VIDEO_CLICK : videoClickOrigin == VideoClickOrigin.APP_INFO ? com.fyber.inneractive.sdk.util.e.VIDEO_APP_INFO : com.fyber.inneractive.sdk.util.e.VIDEO_CTA);
                com.fyber.inneractive.sdk.player.c cVar2 = this.a;
                if (cVar2 != null) {
                    com.fyber.inneractive.sdk.player.e eVar2 = (com.fyber.inneractive.sdk.player.e) cVar2;
                    eVar2.a(eVar2.v, videoClickOrigin, com.fyber.inneractive.sdk.model.vast.t.EVENT_CLICK);
                    com.fyber.inneractive.sdk.measurement.d dVar = this.a.h;
                    if (dVar != null && dVar.c != null) {
                        IAlog.a("%s click", "OMVideo");
                        try {
                            dVar.c.adUserInteraction(InteractionType.CLICK);
                        } catch (Throwable th) {
                            dVar.a(th);
                        }
                    }
                }
                if (aVarA.a == x.d.FAILED) {
                }
            }
            z2 = false;
        }
        if (videoClickOrigin == VideoClickOrigin.VIDEO) {
            a(f0.b.VIDEO.value);
        }
        return z2;
    }

    public final r.c b(com.fyber.inneractive.sdk.config.global.features.r rVar) {
        if (rVar == null) {
            return com.fyber.inneractive.sdk.config.global.features.r.f1962f;
        }
        String strA = rVar.a("endcard_animation_type", com.fyber.inneractive.sdk.config.global.features.r.f1962f.mKey);
        for (r.c cVar : r.c.values()) {
            if (strA.equalsIgnoreCase(cVar.mKey)) {
                return cVar;
            }
        }
        return r.c.NONE;
    }

    public void b() {
    }

    public final int c(com.fyber.inneractive.sdk.config.global.features.r rVar) {
        if (rVar == null) {
            return 3;
        }
        Integer numB = rVar.b("autoClickDelay");
        int iIntValue = numB != null ? numB.intValue() : 3;
        if (iIntValue < 0 || iIntValue > 10) {
            return 3;
        }
        return iIntValue;
    }

    @Override // com.fyber.inneractive.sdk.player.controller.b
    public com.fyber.inneractive.sdk.flow.vast.e c() {
        com.fyber.inneractive.sdk.flow.m mVar;
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        if (cVar == null || (mVar = ((com.fyber.inneractive.sdk.player.e) cVar).z) == null) {
            return null;
        }
        return mVar.l;
    }

    public final void c(int i) {
        if (this.f2176d != null) {
            com.fyber.inneractive.sdk.config.global.s sVar = this.c;
            String str = null;
            com.fyber.inneractive.sdk.config.global.features.c cVar = sVar != null ? (com.fyber.inneractive.sdk.config.global.features.c) sVar.a(com.fyber.inneractive.sdk.config.global.features.c.class) : null;
            if (cVar != null) {
                cVar.e(IAConfigManager.M.p);
                com.fyber.inneractive.sdk.model.vast.a aVar = cVar.f1959e;
                if (aVar != null && aVar.f2072d) {
                    str = aVar.c;
                }
            }
            if (!TextUtils.isEmpty(this.y) || str == null) {
                this.f2176d.setSkipText(String.valueOf(i));
            } else {
                this.f2176d.setSkipText(str.replaceFirst("\\[TIME\\]", Integer.toString(i)));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0043  */
    @Override // com.fyber.inneractive.sdk.player.controller.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void c(boolean r6) {
        /*
            r5 = this;
            com.fyber.inneractive.sdk.config.b0 r0 = r5.b
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L14
            com.fyber.inneractive.sdk.config.a0 r0 = (com.fyber.inneractive.sdk.config.a0) r0
            com.fyber.inneractive.sdk.config.c0 r0 = r0.f1942f
            if (r0 == 0) goto L14
            com.fyber.inneractive.sdk.config.enums.UnitDisplayType r0 = r0.j
            com.fyber.inneractive.sdk.config.enums.UnitDisplayType r3 = com.fyber.inneractive.sdk.config.enums.UnitDisplayType.REWARDED
            if (r0 != r3) goto L14
            r0 = 1
            goto L15
        L14:
            r0 = 0
        L15:
            boolean r3 = com.fyber.inneractive.sdk.external.InneractiveAdManager.isCurrentUserAChild()
            if (r3 == 0) goto L43
            if (r0 == 0) goto L43
            com.fyber.inneractive.sdk.player.ui.l r0 = r5.f2176d
            if (r0 == 0) goto L43
            com.fyber.inneractive.sdk.player.c r0 = r5.a
            if (r0 == 0) goto L43
            com.fyber.inneractive.sdk.player.controller.g r0 = r0.b
            if (r0 == 0) goto L43
            int r0 = r0.c()
            int r0 = r0 / 1000
            int r3 = r5.q()
            com.fyber.inneractive.sdk.player.c r4 = r5.a
            com.fyber.inneractive.sdk.player.controller.g r4 = r4.b
            int r4 = r4.d()
            int r4 = r4 / 1000
            int r4 = r4 - r0
            if (r4 <= 0) goto L44
            if (r0 >= r3) goto L43
            goto L44
        L43:
            r1 = 0
        L44:
            if (r1 == 0) goto L60
            com.fyber.inneractive.sdk.player.controller.v r0 = new com.fyber.inneractive.sdk.player.controller.v
            com.fyber.inneractive.sdk.player.ui.l r1 = r5.f2176d
            android.content.Context r1 = r1.getContext()
            com.fyber.inneractive.sdk.config.global.features.b r2 = r5.p()
            com.fyber.inneractive.sdk.player.controller.r r3 = new com.fyber.inneractive.sdk.player.controller.r
            r3.<init>(r5, r6)
            r0.<init>(r1, r2, r3)
            android.app.Dialog r6 = r0.c
            r6.show()
            goto L63
        L60:
            r5.f(r6)
        L63:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.controller.n.c(boolean):void");
    }

    @Override // com.fyber.inneractive.sdk.player.controller.b
    public void d(boolean z) {
        IAlog.a("%sinitUI", IAlog.a(this));
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        if (cVar == null || cVar.b == null) {
            return;
        }
        this.f2176d.setUnitConfig(this.b);
        com.fyber.inneractive.sdk.player.ui.l lVar = this.f2176d;
        int iH = this.a.b.h();
        int iG = this.a.b.g();
        boolean z2 = this.n;
        lVar.r = iH;
        lVar.s = iG;
        lVar.t = z2;
        if (this.a.b.h() > 0 && this.a.b.g() > 0) {
            a(this.a.b.h(), this.a.b.g());
        }
        if (B()) {
            this.f2178f = s();
        } else {
            this.f2176d.d(false);
        }
        if (!z) {
            a(this.a.b.c());
            a(this.a.b.f2173e, false);
        }
        E();
    }

    @Override // com.fyber.inneractive.sdk.player.controller.b
    public boolean d() {
        return this.z;
    }

    public final boolean d(com.fyber.inneractive.sdk.config.global.features.r rVar) {
        return rVar != null && rVar.a("shouldEnableEndCardAutoClick", false);
    }

    @Override // com.fyber.inneractive.sdk.player.controller.b
    public void destroy() {
        g gVar;
        Application application;
        Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.m;
        if (activityLifecycleCallbacks != null && (application = com.fyber.inneractive.sdk.util.l.a) != null) {
            application.unregisterActivityLifecycleCallbacks(activityLifecycleCallbacks);
        }
        IAlog.a("%sdestroy called", IAlog.a(this));
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        if (cVar != null && (gVar = cVar.b) != null) {
            gVar.b.remove(this);
            this.a.b.c.remove(this);
        }
        l();
        j();
        AsyncTask<?, ?, ?> asyncTask = this.q;
        if (asyncTask != null) {
            asyncTask.cancel(true);
        }
        this.f2179g = null;
    }

    @Override // com.fyber.inneractive.sdk.player.controller.g.f
    public void e(boolean z) {
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x002f  */
    @Override // com.fyber.inneractive.sdk.player.controller.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean e() {
        /*
            r5 = this;
            com.fyber.inneractive.sdk.player.c r0 = r5.a
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            boolean r2 = r5.h
            r3 = 1
            if (r2 != 0) goto L50
            com.fyber.inneractive.sdk.player.controller.g r0 = r0.b
            if (r0 == 0) goto L11
            r0 = 1
            goto L12
        L11:
            r0 = 0
        L12:
            if (r0 == 0) goto L50
            com.fyber.inneractive.sdk.player.ui.l r0 = r5.f2176d
            if (r0 == 0) goto L2f
            android.widget.TextView r2 = r0.o
            if (r2 == 0) goto L2c
            int r2 = r2.getVisibility()
            if (r2 != 0) goto L2c
            android.widget.TextView r0 = r0.o
            boolean r0 = r0.isEnabled()
            if (r0 == 0) goto L2c
            r0 = 1
            goto L2d
        L2c:
            r0 = 0
        L2d:
            if (r0 != 0) goto L50
        L2f:
            com.fyber.inneractive.sdk.player.c r0 = r5.a
            com.fyber.inneractive.sdk.player.controller.g r0 = r0.b
            int r0 = r0.d()
            com.fyber.inneractive.sdk.player.c r2 = r5.a
            r4 = r2
            com.fyber.inneractive.sdk.player.e r4 = (com.fyber.inneractive.sdk.player.e) r4
            com.fyber.inneractive.sdk.config.b0 r4 = r4.y
            int r2 = com.fyber.inneractive.sdk.player.c.a(r2)
            boolean r0 = com.fyber.inneractive.sdk.player.c.a(r0, r4, r2)
            if (r0 == 0) goto L51
            boolean r0 = r5.h
            if (r0 != 0) goto L51
            int r0 = r5.f2178f
            if (r0 != 0) goto L51
        L50:
            r1 = 1
        L51:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.controller.n.e():boolean");
    }

    public void f() {
        IAlog.a("%sonVideoViewDetachedFromWindow", IAlog.a(this));
        l();
    }

    public final void f(boolean z) {
        com.fyber.inneractive.sdk.player.c cVar;
        g gVar;
        com.fyber.inneractive.sdk.config.c0 c0Var;
        ListenerT listenert;
        com.fyber.inneractive.sdk.player.c cVar2;
        g gVar2;
        g gVar3;
        com.fyber.inneractive.sdk.measurement.d dVar;
        b0 b0Var;
        com.fyber.inneractive.sdk.config.c0 c0Var2;
        this.t = true;
        f0 f0Var = IAConfigManager.M.x;
        if (z && f0Var != null && (b0Var = this.b) != null && (c0Var2 = ((a0) b0Var).f1942f) != null) {
            f0Var.a(c0Var2.j, "LAST_VAST_SKIPED", "1");
        }
        com.fyber.inneractive.sdk.player.c cVar3 = this.a;
        if (cVar3 != null && (gVar3 = cVar3.b) != null) {
            gVar3.m();
            this.a.b.k();
            if (z && (dVar = this.a.h) != null && dVar.c != null) {
                IAlog.a("%s skipped", "OMVideo");
                try {
                    dVar.c.skipped();
                } catch (Throwable th) {
                    dVar.a(th);
                }
            }
        }
        if (!this.f2176d.f()) {
            this.f2176d.a(false);
            j();
            D();
            this.k = false;
            this.h = true;
            b0 b0Var2 = this.b;
            if (b0Var2 != null && (c0Var = ((a0) b0Var2).f1942f) != null && c0Var.j == UnitDisplayType.REWARDED && (listenert = this.f2179g) != null) {
                if (!this.t || (cVar2 = this.a) == null || (gVar2 = cVar2.b) == null) {
                    listenert.onCompleted();
                } else {
                    int iC = gVar2.c();
                    if (gVar2.d() - iC <= 0 || iC >= q() * 1000) {
                        this.f2179g.onCompleted();
                    } else {
                        this.B = true;
                    }
                }
            }
        }
        if (this.f2179g != null && (this.f2178f <= 0 || this.h || ((cVar = this.a) != null && (gVar = cVar.b) != null && gVar.f2173e.equals(com.fyber.inneractive.sdk.player.enums.b.Completed)))) {
            this.f2179g.a(z);
        }
        l();
    }

    @Override // com.fyber.inneractive.sdk.player.controller.g.f
    public void g() {
        if (this.r && !this.l) {
            this.l = true;
            this.f2176d.b(false);
        }
    }

    public void g(boolean z) {
        g gVar;
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        if (cVar != null && (gVar = cVar.b) != null) {
            gVar.b(z);
        }
        this.f2176d.setMuteButtonState(true);
    }

    @Override // com.fyber.inneractive.sdk.player.controller.b
    public void h() {
        com.fyber.inneractive.sdk.player.ui.f fVar;
        com.fyber.inneractive.sdk.player.ui.l lVar = this.f2176d;
        if (lVar != null) {
            lVar.j();
        }
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        if (cVar != null && cVar.b != null && (fVar = this.x) != null) {
            fVar.invalidate();
            this.x.requestLayout();
        }
        com.fyber.inneractive.sdk.player.ui.l lVar2 = this.f2176d;
        if (lVar2 != null) {
            lVar2.invalidate();
            this.f2176d.requestLayout();
        }
    }

    public void h(boolean z) {
        g gVar;
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        if (cVar != null) {
            if (!cVar.j) {
                D();
            } else if (!z || (gVar = cVar.b) == null) {
                cVar.d();
            } else {
                gVar.a(0, true);
            }
        }
    }

    public void i() {
        g gVar;
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        if (cVar == null || (gVar = cVar.b) == null) {
            return;
        }
        if (!gVar.b.contains(this)) {
            gVar.b.add(this);
        }
        g gVar2 = this.a.b;
        if (gVar2.c.contains(this)) {
            return;
        }
        gVar2.c.add(this);
    }

    public void i(boolean z) {
        g gVar;
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        if (cVar != null && (gVar = cVar.b) != null) {
            gVar.d(z);
        }
        this.f2176d.setMuteButtonState(false);
    }

    public final void j() {
        Runnable runnable = this.j;
        if (runnable != null) {
            this.f2176d.removeCallbacks(runnable);
            this.j = null;
        }
    }

    public boolean k() {
        g gVar;
        g gVar2;
        com.fyber.inneractive.sdk.player.ui.f fVar;
        TextureView textureView;
        com.fyber.inneractive.sdk.measurement.d dVar;
        if (this.x == null) {
            com.fyber.inneractive.sdk.player.ui.f fVar2 = new com.fyber.inneractive.sdk.player.ui.f(this.f2176d);
            this.x = fVar2;
            com.fyber.inneractive.sdk.player.c cVar = this.a;
            if (cVar != null && (dVar = cVar.h) != null) {
                View[] trackingFriendlyView = this.f2176d.getTrackingFriendlyView();
                AdSession adSession = dVar.a;
                if (adSession != null) {
                    try {
                        adSession.registerAdView(fVar2);
                    } catch (Throwable th) {
                        dVar.a(th);
                    }
                }
                if (dVar.a != null && trackingFriendlyView != null) {
                    for (View view : trackingFriendlyView) {
                        if (view != null) {
                            try {
                                dVar.a.addFriendlyObstruction(view, FriendlyObstructionPurpose.VIDEO_CONTROLS, null);
                            } catch (Throwable th2) {
                                dVar.a(th2);
                            }
                        }
                    }
                }
                View[] trackingFriendlyViewObstructionPurposeOther = this.f2176d.getTrackingFriendlyViewObstructionPurposeOther();
                if (dVar.a != null) {
                    for (View view2 : trackingFriendlyViewObstructionPurposeOther) {
                        if (view2 != null) {
                            try {
                                dVar.a.addFriendlyObstruction(view2, FriendlyObstructionPurpose.OTHER, null);
                            } catch (Throwable th3) {
                                dVar.a(th3);
                            }
                        }
                    }
                }
            }
        }
        IAlog.a("%sconnectToTextureView called %s", IAlog.a(this), this.f2176d.getTextureHost());
        if (this.x == null || !this.f2176d.getTextureHost().equals(this.x.getParent())) {
            com.fyber.inneractive.sdk.player.c cVar2 = this.a;
            if (cVar2 != null && (gVar2 = cVar2.b) != null && (textureView = gVar2.j) != (fVar = this.x)) {
                if (textureView != null) {
                    textureView.setSurfaceTextureListener(null);
                }
                gVar2.j = fVar;
                if (gVar2.m == null) {
                    gVar2.m = new com.fyber.inneractive.sdk.player.controller.f(gVar2);
                }
                if (fVar != null) {
                    fVar.setSurfaceTextureListener(gVar2.m);
                }
                if (gVar2.k != null) {
                    IAlog.a("%scalling setSurfaceTexture with cached texture", IAlog.a(gVar2));
                    if (gVar2.j.getSurfaceTexture() == null || !gVar2.j.getSurfaceTexture().equals(gVar2.k)) {
                        IAlog.a("%scalling setSurfaceTexture with cached texture success", IAlog.a(gVar2));
                        gVar2.j.setSurfaceTexture(gVar2.k);
                    } else {
                        IAlog.a("%scalling setSurfaceTexture with cached texture failed", IAlog.a(gVar2));
                    }
                }
            }
            com.fyber.inneractive.sdk.player.ui.f fVar3 = this.x;
            if (fVar3 != null) {
                fVar3.setId(R.id.inn_texture_view);
            }
            IAlog.a("%supdateView adding texture to parent", IAlog.a(this));
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(0, 0, 0, 0);
            layoutParams.gravity = 17;
            if (this.x.getParent() == null) {
                this.f2176d.getTextureHost().addView(this.x, layoutParams);
            }
            this.l = false;
            m mVar = new m(this);
            this.f2177e = mVar;
            com.fyber.inneractive.sdk.player.c cVar3 = this.a;
            if (cVar3 != null && (gVar = cVar3.b) != null) {
                gVar.f2172d = mVar;
            }
        } else {
            IAlog.a("%sconnectToTextureView called but already connected", IAlog.a(this));
        }
        return true;
    }

    public void l() {
        if (this.x != null) {
            IAlog.a("%sdestroyTextureView", IAlog.a(this));
            if (this.p != null) {
                a(false, (f) new c());
            }
        }
    }

    public final void m() {
        com.fyber.inneractive.sdk.player.ui.l lVar = this.f2176d;
        if (lVar != null) {
            lVar.g();
            lVar.H = true;
        }
    }

    public void n() {
        if (B()) {
            com.fyber.inneractive.sdk.config.global.s sVar = this.c;
            String str = null;
            com.fyber.inneractive.sdk.config.global.features.c cVar = sVar != null ? (com.fyber.inneractive.sdk.config.global.features.c) sVar.a(com.fyber.inneractive.sdk.config.global.features.c.class) : null;
            if (cVar != null) {
                cVar.e(IAConfigManager.M.p);
                com.fyber.inneractive.sdk.model.vast.a aVar = cVar.f1959e;
                if (aVar != null && aVar.f2072d) {
                    str = aVar.b;
                }
            }
            if (!TextUtils.isEmpty(this.y) || str == null) {
                com.fyber.inneractive.sdk.player.ui.l lVar = this.f2176d;
                lVar.setSkipText(lVar.getContext().getString(R.string.ia_video_skip_text));
            } else {
                this.f2176d.setSkipText(str);
            }
            this.f2176d.c();
            this.f2178f = 0;
            ListenerT listenert = this.f2179g;
            if (listenert != null) {
                listenert.e();
            }
        }
    }

    public abstract int o();

    public com.fyber.inneractive.sdk.config.global.features.b p() {
        com.fyber.inneractive.sdk.config.global.s sVar = this.c;
        if ((sVar == null || sVar.a(com.fyber.inneractive.sdk.config.global.features.b.class) == null || ((ArrayList) ((com.fyber.inneractive.sdk.config.global.features.b) this.c.a(com.fyber.inneractive.sdk.config.global.features.b.class)).c()).size() <= 0) ? false : true) {
            return (com.fyber.inneractive.sdk.config.global.features.b) this.c.a(com.fyber.inneractive.sdk.config.global.features.b.class);
        }
        return null;
    }

    @Override // com.fyber.inneractive.sdk.player.controller.b
    public void pauseVideo() {
        g gVar;
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        if (cVar == null || (gVar = cVar.b) == null) {
            return;
        }
        if (gVar.f2173e == com.fyber.inneractive.sdk.player.enums.b.Paused) {
            IAlog.a("%spauseVideo called in bad state! %s", IAlog.a(this), this.a.b.f2173e);
            return;
        }
        IAlog.a("%spauseVideo %s", IAlog.a(this), this.f2176d);
        TextureView textureView = this.a.b.j;
        if (textureView == null || textureView.getParent() == null || !textureView.getParent().equals(this.f2176d.getTextureHost())) {
            return;
        }
        this.a.b.k();
    }

    public int q() {
        int i;
        com.fyber.inneractive.sdk.config.i iVar = IAConfigManager.M.u.b;
        String string = Integer.toString(30);
        if (iVar.a.containsKey("max_rv_tsec")) {
            string = iVar.a.get("max_rv_tsec");
        }
        try {
            i = Integer.parseInt(string);
        } catch (Throwable unused) {
            i = 30;
        }
        if (i < 1) {
            return 30;
        }
        return i;
    }

    public final float r() {
        try {
            return ((AudioManager) this.f2176d.getContext().getSystemService("audio")).getStreamVolume(3);
        } catch (Throwable unused) {
            return 1.0f;
        }
    }

    public abstract int s();

    public boolean t() {
        g gVar;
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        if (cVar == null || (gVar = cVar.b) == null) {
            return false;
        }
        return gVar.i() || r() == 0.0f;
    }

    public abstract void u();

    public void v() {
        if (this.f2176d.f()) {
            return;
        }
        this.f2176d.a(false);
        j();
        D();
        this.k = false;
        this.h = true;
    }

    public abstract void w();

    public void x() {
        j();
        this.f2176d.a(false);
        D();
    }

    public abstract void y();

    public void z() {
    }
}
