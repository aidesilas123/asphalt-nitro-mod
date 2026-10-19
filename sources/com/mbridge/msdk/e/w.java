package com.mbridge.msdk.e;

import android.util.Log;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;

/* JADX INFO: compiled from: TrackConfig.java */
/* JADX INFO: loaded from: classes4.dex */
public final class w {
    public final int a;
    public final int b;
    public final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f6994d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f6995e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f6996f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final o f6997g;
    public final d h;
    public final v i;
    public final f j;

    /* JADX INFO: compiled from: TrackConfig.java */
    public static final class a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private o f6998d;
        private d h;
        private v i;
        private f j;
        private int a = 50;
        private int b = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;
        private int c = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f6999e = 2;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f7000f = 50;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f7001g = 604800000;

        public final a a(int i) {
            if (i <= 0) {
                this.a = 50;
            } else {
                this.a = i;
            }
            return this;
        }

        public final a a(int i, o oVar) {
            this.c = i;
            this.f6998d = oVar;
            return this;
        }

        public final a a(d dVar) {
            this.h = dVar;
            return this;
        }

        public final a a(f fVar) {
            this.j = fVar;
            return this;
        }

        public final a a(v vVar) {
            this.i = vVar;
            return this;
        }

        public final w a() {
            if (y.a(this.h) && com.mbridge.msdk.e.a.a) {
                Log.e("TrackManager", "decorate can not be null");
            }
            if (y.a(this.i) && com.mbridge.msdk.e.a.a) {
                Log.e("TrackManager", "responseHandler can not be null");
            }
            if ((y.a(this.f6998d) || y.a(this.f6998d.c())) && com.mbridge.msdk.e.a.a) {
                Log.e("TrackManager", "networkStackConfig or stack can not be null");
            }
            return new w(this);
        }

        public final a b(int i) {
            if (i < 0) {
                this.b = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;
            } else {
                this.b = i;
            }
            return this;
        }

        public final a c(int i) {
            if (i <= 0) {
                this.f6999e = 2;
            } else {
                this.f6999e = i;
            }
            return this;
        }

        public final a d(int i) {
            if (i < 0) {
                this.f7000f = 50;
            } else {
                this.f7000f = i;
            }
            return this;
        }

        public final a e(int i) {
            if (i < 0) {
                this.f7001g = 604800000;
            } else {
                this.f7001g = i;
            }
            return this;
        }
    }

    private w(a aVar) {
        this.a = aVar.a;
        this.b = aVar.b;
        this.c = aVar.c;
        this.f6994d = aVar.f6999e;
        this.f6995e = aVar.f7000f;
        this.f6996f = aVar.f7001g;
        this.f6997g = aVar.f6998d;
        this.h = aVar.h;
        this.i = aVar.i;
        this.j = aVar.j;
    }
}
