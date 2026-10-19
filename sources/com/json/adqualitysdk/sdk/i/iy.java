package com.json.adqualitysdk.sdk.i;

import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class iy {
    private static iy a;
    private boolean b;
    private Set<ij> c = new HashSet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Handler f5840d = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Choreographer.FrameCallback f5841e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private je f5842f;

    final class a extends il {

        /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.iy$a$a, reason: collision with other inner class name */
        final class C0348a extends il {

            /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.iy$a$a$a, reason: collision with other inner class name */
            final class C0349a extends il {
                C0349a() {
                }

                @Override // com.json.adqualitysdk.sdk.i.il
                /* JADX INFO: renamed from: ﻛ */
                public final void mo225() {
                    iy.j(iy.this);
                }
            }

            C0348a() {
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                jb.m899().m904(iy.this.f5842f);
                t.m1039(new C0349a());
            }
        }

        final class b extends je {

            /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.iy$a$b$a, reason: collision with other inner class name */
            final class C0350a extends il {
                C0350a() {
                }

                @Override // com.json.adqualitysdk.sdk.i.il
                /* JADX INFO: renamed from: ﻛ */
                public final void mo225() {
                    t.m1039(iy.this.new b());
                }
            }

            /* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.iy$a$b$b, reason: collision with other inner class name */
            final class C0351b extends il {
                C0351b() {
                }

                @Override // com.json.adqualitysdk.sdk.i.il
                /* JADX INFO: renamed from: ﻛ */
                public final void mo225() {
                    iy.j(iy.this);
                }
            }

            b() {
            }

            @Override // com.json.adqualitysdk.sdk.i.je, com.json.adqualitysdk.sdk.i.jc
            /* JADX INFO: renamed from: ﻛ */
            public final void mo272(Activity activity) {
                t.m1039(new C0350a());
            }

            @Override // com.json.adqualitysdk.sdk.i.je, com.json.adqualitysdk.sdk.i.jc
            /* JADX INFO: renamed from: ﾒ */
            public final void mo273(Activity activity) {
                t.m1039(new C0351b());
            }
        }

        a() {
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            if (iy.this.f5842f == null) {
                iy.this.f5842f = new b();
                iy.this.f5840d.post(new C0348a());
            }
        }
    }

    final class b extends il {
        b() {
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            iy.c(iy.this);
        }
    }

    final class c extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ ij f5849d;

        c(ij ijVar) {
            this.f5849d = ijVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            iy.this.c.add(this.f5849d);
            iy.j(iy.this);
        }
    }

    final class d extends il {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private /* synthetic */ ij f5851d;

        d(ij ijVar) {
            this.f5851d = ijVar;
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            iy.this.c.remove(this.f5851d);
        }
    }

    final class e extends il {

        final class a extends il {

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private /* synthetic */ ij f5854d;

            a(ij ijVar) {
                this.f5854d = ijVar;
            }

            @Override // com.json.adqualitysdk.sdk.i.il
            /* JADX INFO: renamed from: ﻛ */
            public final void mo225() {
                this.f5854d.mo571();
            }
        }

        final class b implements Choreographer.FrameCallback {
            private /* synthetic */ il a;

            b(il ilVar) {
                this.a = ilVar;
            }

            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                t.m1044(this.a);
            }
        }

        e() {
        }

        @Override // com.json.adqualitysdk.sdk.i.il
        /* JADX INFO: renamed from: ﻛ */
        public final void mo225() {
            if (!iy.this.b) {
                iy.this.f5841e = null;
                return;
            }
            Iterator it = iy.a(iy.this).iterator();
            while (it.hasNext()) {
                iy.this.f5840d.post(new a((ij) it.next()));
            }
            if (Build.VERSION.SDK_INT < 16) {
                t.m1042(this, 50L);
                return;
            }
            if (iy.this.f5841e == null) {
                iy.this.f5841e = new b(this);
            }
            Choreographer.getInstance().postFrameCallback(iy.this.f5841e);
        }
    }

    private iy() {
    }

    static /* synthetic */ Set a(iy iyVar) {
        return new HashSet(iyVar.c);
    }

    static /* synthetic */ boolean c(iy iyVar) {
        iyVar.b = false;
        return false;
    }

    static /* synthetic */ void j(iy iyVar) {
        if (iyVar.b || new HashSet(iyVar.c).isEmpty()) {
            return;
        }
        iyVar.b = true;
        t.m1039(iyVar.new e());
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static synchronized iy m886() {
        if (a == null) {
            a = new iy();
        }
        return a;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m887(ij ijVar) {
        t.m1039(new c(ijVar));
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final synchronized void m888() {
        t.m1039(new a());
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m889(ij ijVar) {
        t.m1039(new d(ijVar));
    }
}
