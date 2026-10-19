package com.applovin.exoplayer2.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.applovin.exoplayer2.ab;
import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.ak;
import com.applovin.exoplayer2.am;
import com.applovin.exoplayer2.an;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.h.ad;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.ui.k;
import com.applovin.exoplayer2.w1;
import com.applovin.exoplayer2.x1;
import com.applovin.sdk.R;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Formatter;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
public class f extends FrameLayout {
    private final ba.c U;
    private boolean WG;
    private long[] WJ;
    private boolean[] WK;
    private final b WL;
    private final CopyOnWriteArrayList<d> WM;

    @Nullable
    private final View WN;

    @Nullable
    private final View WO;

    @Nullable
    private final View WP;

    @Nullable
    private final View WQ;

    @Nullable
    private final View WR;

    @Nullable
    private final View WS;

    @Nullable
    private final ImageView WT;

    @Nullable
    private final ImageView WU;

    @Nullable
    private final View WV;

    @Nullable
    private final TextView WW;

    @Nullable
    private final TextView WX;

    @Nullable
    private final k WY;
    private final Runnable WZ;
    private final StringBuilder Wu;
    private final Formatter Wv;
    private long XA;
    private long[] XB;
    private boolean[] XC;
    private long XD;
    private long XE;
    private long XF;
    private final Runnable Xa;
    private final Drawable Xb;
    private final Drawable Xc;
    private final Drawable Xd;
    private final String Xe;
    private final String Xf;
    private final String Xg;
    private final Drawable Xh;
    private final Drawable Xi;
    private final float Xj;
    private final float Xk;
    private final String Xl;
    private final String Xm;
    private com.applovin.exoplayer2.i Xn;

    @Nullable
    private c Xo;
    private boolean Xp;
    private boolean Xq;
    private boolean Xr;
    private int Xs;
    private int Xt;
    private int Xu;
    private boolean Xv;
    private boolean Xw;
    private boolean Xx;
    private boolean Xy;
    private boolean Xz;
    private final ba.a bI;

    @Nullable
    private an jb;

    @RequiresApi(21)
    private static final class a {
        public static boolean g(View view) {
            return view.isAccessibilityFocused();
        }
    }

    private final class b implements View.OnClickListener, an.d, k.a {
        private b() {
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.b.g
        public /* synthetic */ void A(boolean z) {
            x1.a(this, z);
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public /* synthetic */ void Z(int i) {
            x1.b(this, i);
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public /* synthetic */ void a(ab abVar, int i) {
            x1.c(this, abVar, i);
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public /* synthetic */ void a(ac acVar) {
            x1.d(this, acVar);
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public /* synthetic */ void a(ak akVar) {
            x1.e(this, akVar);
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public /* synthetic */ void a(an.e eVar, an.e eVar2, int i) {
            x1.f(this, eVar, eVar2, i);
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public void a(an anVar, an.c cVar) {
            if (cVar.b(4, 5)) {
                f.this.nw();
            }
            if (cVar.b(4, 5, 7)) {
                f.this.nB();
            }
            if (cVar.X(8)) {
                f.this.ny();
            }
            if (cVar.X(9)) {
                f.this.nz();
            }
            if (cVar.b(8, 9, 11, 0, 13)) {
                f.this.nx();
            }
            if (cVar.b(11, 0)) {
                f.this.nA();
            }
        }

        @Override // com.applovin.exoplayer2.an.d
        public /* synthetic */ void a(com.applovin.exoplayer2.g.a aVar) {
            x1.h(this, aVar);
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public /* synthetic */ void a(ad adVar, com.applovin.exoplayer2.j.h hVar) {
            x1.i(this, adVar, hVar);
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.m.n
        public /* synthetic */ void a(com.applovin.exoplayer2.m.o oVar) {
            x1.j(this, oVar);
        }

        @Override // com.applovin.exoplayer2.an.d
        public /* synthetic */ void a(com.applovin.exoplayer2.o oVar) {
            x1.k(this, oVar);
        }

        @Override // com.applovin.exoplayer2.ui.k.a
        public void a(k kVar, long j) {
            f.this.WG = true;
            if (f.this.WX != null) {
                f.this.WX.setText(ai.a(f.this.Wu, f.this.Wv, j));
            }
        }

        @Override // com.applovin.exoplayer2.ui.k.a
        public void a(k kVar, long j, boolean z) {
            f.this.WG = false;
            if (z || f.this.jb == null) {
                return;
            }
            f fVar = f.this;
            fVar.b(fVar.jb, j);
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public /* synthetic */ void aa(int i) {
            x1.l(this, i);
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public /* synthetic */ void ab(int i) {
            x1.m(this, i);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void ac(int i) {
            w1.j(this, i);
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public /* synthetic */ void b(ak akVar) {
            x1.n(this, akVar);
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public /* synthetic */ void b(am amVar) {
            x1.o(this, amVar);
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public /* synthetic */ void b(ba baVar, int i) {
            x1.p(this, baVar, i);
        }

        @Override // com.applovin.exoplayer2.ui.k.a
        public void b(k kVar, long j) {
            if (f.this.WX != null) {
                f.this.WX.setText(ai.a(f.this.Wu, f.this.Wv, j));
            }
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void cD() {
            w1.n(this);
        }

        @Override // com.applovin.exoplayer2.an.d
        public /* synthetic */ void cE() {
            x1.q(this);
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public /* synthetic */ void d(an.a aVar) {
            x1.r(this, aVar);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void d(boolean z, int i) {
            w1.p(this, z, i);
        }

        @Override // com.applovin.exoplayer2.an.d
        public /* synthetic */ void e(int i, boolean z) {
            x1.s(this, i, z);
        }

        @Override // com.applovin.exoplayer2.an.d
        public /* synthetic */ void e(List list) {
            x1.t(this, list);
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public /* synthetic */ void e(boolean z, int i) {
            x1.u(this, z, i);
        }

        @Override // com.applovin.exoplayer2.an.d
        public /* synthetic */ void f(int i, int i2) {
            x1.v(this, i, i2);
        }

        @Override // com.applovin.exoplayer2.an.d
        public /* synthetic */ void g(float f2) {
            x1.w(this, f2);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            an anVar = f.this.jb;
            if (anVar == null) {
                return;
            }
            if (f.this.WO == view) {
                f.this.Xn.c(anVar);
                return;
            }
            if (f.this.WN == view) {
                f.this.Xn.b(anVar);
                return;
            }
            if (f.this.WR == view) {
                if (anVar.aB() != 4) {
                    f.this.Xn.e(anVar);
                    return;
                }
                return;
            }
            if (f.this.WS == view) {
                f.this.Xn.d(anVar);
                return;
            }
            if (f.this.WP == view) {
                f.this.i(anVar);
                return;
            }
            if (f.this.WQ == view) {
                f.this.j(anVar);
            } else if (f.this.WT == view) {
                f.this.Xn.a(anVar, com.applovin.exoplayer2.l.ab.L(anVar.aF(), f.this.Xu));
            } else if (f.this.WU == view) {
                f.this.Xn.b(anVar, !anVar.aG());
            }
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public /* synthetic */ void w(boolean z) {
            x1.x(this, z);
        }

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void x(boolean z) {
            w1.s(this, z);
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public /* synthetic */ void y(boolean z) {
            x1.y(this, z);
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public /* synthetic */ void z(boolean z) {
            x1.z(this, z);
        }
    }

    public interface c {
        void z(long j, long j2);
    }

    public interface d {
        void eZ(int i);
    }

    static {
        com.applovin.exoplayer2.t.f("goog.exo.ui");
    }

    public f(Context context, @Nullable AttributeSet attributeSet, int i, @Nullable AttributeSet attributeSet2) {
        super(context, attributeSet, i);
        int resourceId = R.layout.applovin_exo_player_control_view;
        this.Xs = 5000;
        this.Xu = 0;
        this.Xt = 200;
        this.XA = C.TIME_UNSET;
        this.Xv = true;
        this.Xw = true;
        this.Xx = true;
        this.Xy = true;
        this.Xz = false;
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R.styleable.AppLovinPlayerControlView, i, 0);
            try {
                this.Xs = typedArrayObtainStyledAttributes.getInt(R.styleable.AppLovinPlayerControlView_al_show_timeout, this.Xs);
                resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AppLovinPlayerControlView_al_controller_layout_id, resourceId);
                this.Xu = a(typedArrayObtainStyledAttributes, this.Xu);
                this.Xv = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AppLovinPlayerControlView_al_show_rewind_button, this.Xv);
                this.Xw = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AppLovinPlayerControlView_al_show_fastforward_button, this.Xw);
                this.Xx = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AppLovinPlayerControlView_al_show_previous_button, this.Xx);
                this.Xy = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AppLovinPlayerControlView_al_show_next_button, this.Xy);
                this.Xz = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AppLovinPlayerControlView_al_show_shuffle_button, this.Xz);
                setTimeBarMinUpdateInterval(typedArrayObtainStyledAttributes.getInt(R.styleable.AppLovinPlayerControlView_al_time_bar_min_update_interval, this.Xt));
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
        this.WM = new CopyOnWriteArrayList<>();
        this.bI = new ba.a();
        this.U = new ba.c();
        StringBuilder sb = new StringBuilder();
        this.Wu = sb;
        this.Wv = new Formatter(sb, Locale.getDefault());
        this.WJ = new long[0];
        this.WK = new boolean[0];
        this.XB = new long[0];
        this.XC = new boolean[0];
        b bVar = new b();
        this.WL = bVar;
        this.Xn = new com.applovin.exoplayer2.j();
        this.WZ = new Runnable() { // from class: com.applovin.exoplayer2.ui.p
            @Override // java.lang.Runnable
            public final void run() {
                this.a.nB();
            }
        };
        this.Xa = new Runnable() { // from class: com.applovin.exoplayer2.ui.m
            @Override // java.lang.Runnable
            public final void run() {
                this.a.nt();
            }
        };
        LayoutInflater.from(context).inflate(resourceId, this);
        setDescendantFocusability(262144);
        int i2 = R.id.al_exo_progress;
        k kVar = (k) findViewById(i2);
        View viewFindViewById = findViewById(R.id.al_exo_progress_placeholder);
        if (kVar != null) {
            this.WY = kVar;
        } else if (viewFindViewById != null) {
            com.applovin.exoplayer2.ui.d dVar = new com.applovin.exoplayer2.ui.d(context, null, 0, attributeSet2);
            dVar.setId(i2);
            dVar.setLayoutParams(viewFindViewById.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById);
            viewGroup.removeView(viewFindViewById);
            viewGroup.addView(dVar, iIndexOfChild);
            this.WY = dVar;
        } else {
            this.WY = null;
        }
        this.WW = (TextView) findViewById(R.id.al_exo_duration);
        this.WX = (TextView) findViewById(R.id.al_exo_position);
        k kVar2 = this.WY;
        if (kVar2 != null) {
            kVar2.a(bVar);
        }
        View viewFindViewById2 = findViewById(R.id.al_exo_play);
        this.WP = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setOnClickListener(bVar);
        }
        View viewFindViewById3 = findViewById(R.id.al_exo_pause);
        this.WQ = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.setOnClickListener(bVar);
        }
        View viewFindViewById4 = findViewById(R.id.al_exo_prev);
        this.WN = viewFindViewById4;
        if (viewFindViewById4 != null) {
            viewFindViewById4.setOnClickListener(bVar);
        }
        View viewFindViewById5 = findViewById(R.id.al_exo_next);
        this.WO = viewFindViewById5;
        if (viewFindViewById5 != null) {
            viewFindViewById5.setOnClickListener(bVar);
        }
        View viewFindViewById6 = findViewById(R.id.al_exo_rew);
        this.WS = viewFindViewById6;
        if (viewFindViewById6 != null) {
            viewFindViewById6.setOnClickListener(bVar);
        }
        View viewFindViewById7 = findViewById(R.id.al_exo_ffwd);
        this.WR = viewFindViewById7;
        if (viewFindViewById7 != null) {
            viewFindViewById7.setOnClickListener(bVar);
        }
        ImageView imageView = (ImageView) findViewById(R.id.al_exo_repeat_toggle);
        this.WT = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(bVar);
        }
        ImageView imageView2 = (ImageView) findViewById(R.id.al_exo_shuffle);
        this.WU = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(bVar);
        }
        View viewFindViewById8 = findViewById(R.id.al_exo_vr);
        this.WV = viewFindViewById8;
        setShowVrButton(false);
        a(false, false, viewFindViewById8);
        Resources resources = context.getResources();
        this.Xj = resources.getInteger(R.integer.al_exo_media_button_opacity_percentage_enabled) / 100.0f;
        this.Xk = resources.getInteger(R.integer.al_exo_media_button_opacity_percentage_disabled) / 100.0f;
        this.Xb = resources.getDrawable(R.drawable.al_exo_controls_repeat_off);
        this.Xc = resources.getDrawable(R.drawable.al_exo_controls_repeat_one);
        this.Xd = resources.getDrawable(R.drawable.al_exo_controls_repeat_all);
        this.Xh = resources.getDrawable(R.drawable.al_exo_controls_shuffle_on);
        this.Xi = resources.getDrawable(R.drawable.al_exo_controls_shuffle_off);
        this.Xe = resources.getString(R.string.al_exo_controls_repeat_off_description);
        this.Xf = resources.getString(R.string.al_exo_controls_repeat_one_description);
        this.Xg = resources.getString(R.string.al_exo_controls_repeat_all_description);
        this.Xl = resources.getString(R.string.al_exo_controls_shuffle_on_description);
        this.Xm = resources.getString(R.string.al_exo_controls_shuffle_off_description);
    }

    private static int a(TypedArray typedArray, int i) {
        return typedArray.getInt(R.styleable.AppLovinPlayerControlView_al_repeat_toggle_modes, i);
    }

    private void a(boolean z, boolean z2, @Nullable View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z2);
        view.setAlpha(z2 ? this.Xj : this.Xk);
        view.setVisibility(z ? 0 : 8);
    }

    private static boolean a(ba baVar, ba.c cVar) {
        if (baVar.cP() > 100) {
            return false;
        }
        int iCP = baVar.cP();
        for (int i = 0; i < iCP; i++) {
            if (baVar.a(i, cVar).fH == C.TIME_UNSET) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(an anVar, long j) {
        int iAL;
        ba baVarAX = anVar.aX();
        if (this.Xr && !baVarAX.isEmpty()) {
            int iCP = baVarAX.cP();
            iAL = 0;
            while (true) {
                long jDl = baVarAX.a(iAL, this.U).dl();
                if (j < jDl) {
                    break;
                }
                if (iAL == iCP - 1) {
                    j = jDl;
                    break;
                } else {
                    j -= jDl;
                    iAL++;
                }
            }
        } else {
            iAL = anVar.aL();
        }
        b(anVar, iAL, j);
        nB();
    }

    private boolean b(an anVar, int i, long j) {
        return this.Xn.a(anVar, i, j);
    }

    @SuppressLint({"InlinedApi"})
    private static boolean eY(int i) {
        return i == 90 || i == 89 || i == 85 || i == 79 || i == 126 || i == 127 || i == 87 || i == 88;
    }

    private void h(an anVar) {
        int iAB = anVar.aB();
        if (iAB == 1 || iAB == 4 || !anVar.aE()) {
            i(anVar);
        } else {
            j(anVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(an anVar) {
        int iAB = anVar.aB();
        if (iAB == 1) {
            this.Xn.a(anVar);
        } else if (iAB == 4) {
            b(anVar, anVar.aL(), C.TIME_UNSET);
        }
        this.Xn.a(anVar, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(an anVar) {
        this.Xn.a(anVar, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00d4 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void nA() {
        /*
            Method dump skipped, instruction units count: 309
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.ui.f.nA():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nB() {
        long jAT;
        if (mx() && this.Xp) {
            an anVar = this.jb;
            long jAS = 0;
            if (anVar != null) {
                jAS = this.XD + anVar.aS();
                jAT = this.XD + anVar.aT();
            } else {
                jAT = 0;
            }
            boolean z = jAS != this.XE;
            boolean z2 = jAT != this.XF;
            this.XE = jAS;
            this.XF = jAT;
            TextView textView = this.WX;
            if (textView != null && !this.WG && z) {
                textView.setText(ai.a(this.Wu, this.Wv, jAS));
            }
            k kVar = this.WY;
            if (kVar != null) {
                kVar.setPosition(jAS);
                this.WY.setBufferedPosition(jAT);
            }
            c cVar = this.Xo;
            if (cVar != null && (z || z2)) {
                cVar.z(jAS, jAT);
            }
            removeCallbacks(this.WZ);
            int iAB = anVar == null ? 1 : anVar.aB();
            if (anVar == null || !anVar.v()) {
                if (iAB == 4 || iAB == 1) {
                    return;
                }
                postDelayed(this.WZ, 1000L);
                return;
            }
            k kVar2 = this.WY;
            long jMin = Math.min(kVar2 != null ? kVar2.getPreferredUpdateDelay() : 1000L, 1000 - (jAS % 1000));
            float f2 = anVar.av().gD;
            postDelayed(this.WZ, ai.b(f2 > 0.0f ? (long) (jMin / f2) : 1000L, this.Xt, 1000L));
        }
    }

    private void nC() {
        View view;
        View view2;
        boolean zNE = nE();
        if (!zNE && (view2 = this.WP) != null) {
            view2.requestFocus();
        } else {
            if (!zNE || (view = this.WQ) == null) {
                return;
            }
            view.requestFocus();
        }
    }

    private void nD() {
        View view;
        View view2;
        boolean zNE = nE();
        if (!zNE && (view2 = this.WP) != null) {
            view2.sendAccessibilityEvent(8);
        } else {
            if (!zNE || (view = this.WQ) == null) {
                return;
            }
            view.sendAccessibilityEvent(8);
        }
    }

    private boolean nE() {
        an anVar = this.jb;
        return (anVar == null || anVar.aB() == 4 || this.jb.aB() == 1 || !this.jb.aE()) ? false : true;
    }

    private void nu() {
        removeCallbacks(this.Xa);
        if (this.Xs <= 0) {
            this.XA = C.TIME_UNSET;
            return;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        int i = this.Xs;
        this.XA = jUptimeMillis + ((long) i);
        if (this.Xp) {
            postDelayed(this.Xa, i);
        }
    }

    private void nv() {
        nw();
        nx();
        ny();
        nz();
        nA();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nw() {
        boolean z;
        boolean z2;
        if (mx() && this.Xp) {
            boolean zNE = nE();
            View view = this.WP;
            boolean z3 = true;
            if (view != null) {
                z = (zNE && view.isFocused()) | false;
                z2 = (ai.acV < 21 ? z : zNE && a.g(this.WP)) | false;
                this.WP.setVisibility(zNE ? 8 : 0);
            } else {
                z = false;
                z2 = false;
            }
            View view2 = this.WQ;
            if (view2 != null) {
                z |= !zNE && view2.isFocused();
                if (ai.acV < 21) {
                    z3 = z;
                } else if (zNE || !a.g(this.WQ)) {
                    z3 = false;
                }
                z2 |= z3;
                this.WQ.setVisibility(zNE ? 0 : 8);
            }
            if (z) {
                nC();
            }
            if (z2) {
                nD();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nx() {
        boolean z;
        boolean zN;
        boolean z2;
        boolean z3;
        if (mx() && this.Xp) {
            an anVar = this.jb;
            boolean z4 = false;
            if (anVar != null) {
                boolean zN2 = anVar.n(4);
                boolean zN3 = anVar.n(6);
                z3 = anVar.n(10) && this.Xn.aj();
                if (anVar.n(11) && this.Xn.ak()) {
                    z4 = true;
                }
                zN = anVar.n(8);
                z = z4;
                z4 = zN3;
                z2 = zN2;
            } else {
                z = false;
                zN = false;
                z2 = false;
                z3 = false;
            }
            a(this.Xx, z4, this.WN);
            a(this.Xv, z3, this.WS);
            a(this.Xw, z, this.WR);
            a(this.Xy, zN, this.WO);
            k kVar = this.WY;
            if (kVar != null) {
                kVar.setEnabled(z2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ny() {
        ImageView imageView;
        if (mx() && this.Xp && (imageView = this.WT) != null) {
            if (this.Xu == 0) {
                a(false, false, (View) imageView);
                return;
            }
            an anVar = this.jb;
            if (anVar == null) {
                a(true, false, (View) imageView);
                this.WT.setImageDrawable(this.Xb);
                this.WT.setContentDescription(this.Xe);
                return;
            }
            a(true, true, (View) imageView);
            int iAF = anVar.aF();
            if (iAF == 0) {
                this.WT.setImageDrawable(this.Xb);
                this.WT.setContentDescription(this.Xe);
            } else if (iAF == 1) {
                this.WT.setImageDrawable(this.Xc);
                this.WT.setContentDescription(this.Xf);
            } else if (iAF == 2) {
                this.WT.setImageDrawable(this.Xd);
                this.WT.setContentDescription(this.Xg);
            }
            this.WT.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nz() {
        ImageView imageView;
        if (mx() && this.Xp && (imageView = this.WU) != null) {
            an anVar = this.jb;
            if (!this.Xz) {
                a(false, false, (View) imageView);
                return;
            }
            if (anVar == null) {
                a(true, false, (View) imageView);
                this.WU.setImageDrawable(this.Xi);
                this.WU.setContentDescription(this.Xm);
            } else {
                a(true, true, (View) imageView);
                this.WU.setImageDrawable(anVar.aG() ? this.Xh : this.Xi);
                this.WU.setContentDescription(anVar.aG() ? this.Xl : this.Xm);
            }
        }
    }

    public void a(d dVar) {
        com.applovin.exoplayer2.l.a.checkNotNull(dVar);
        this.WM.add(dVar);
    }

    public boolean a(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        an anVar = this.jb;
        if (anVar == null || !eY(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() != 0) {
            return true;
        }
        if (keyCode == 90) {
            if (anVar.aB() == 4) {
                return true;
            }
            this.Xn.e(anVar);
            return true;
        }
        if (keyCode == 89) {
            this.Xn.d(anVar);
            return true;
        }
        if (keyEvent.getRepeatCount() != 0) {
            return true;
        }
        if (keyCode == 79 || keyCode == 85) {
            h(anVar);
            return true;
        }
        if (keyCode == 87) {
            this.Xn.c(anVar);
            return true;
        }
        if (keyCode == 88) {
            this.Xn.b(anVar);
            return true;
        }
        if (keyCode == 126) {
            i(anVar);
            return true;
        }
        if (keyCode != 127) {
            return true;
        }
        j(anVar);
        return true;
    }

    public void b(d dVar) {
        this.WM.remove(dVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return a(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            removeCallbacks(this.Xa);
        } else if (motionEvent.getAction() == 1) {
            nu();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Nullable
    public an getPlayer() {
        return this.jb;
    }

    public int getRepeatToggleModes() {
        return this.Xu;
    }

    public boolean getShowShuffleButton() {
        return this.Xz;
    }

    public int getShowTimeoutMs() {
        return this.Xs;
    }

    public boolean getShowVrButton() {
        View view = this.WV;
        return view != null && view.getVisibility() == 0;
    }

    public boolean mx() {
        return getVisibility() == 0;
    }

    public void nt() {
        if (mx()) {
            setVisibility(8);
            Iterator<d> it = this.WM.iterator();
            while (it.hasNext()) {
                it.next().eZ(getVisibility());
            }
            removeCallbacks(this.WZ);
            removeCallbacks(this.Xa);
            this.XA = C.TIME_UNSET;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.Xp = true;
        long j = this.XA;
        if (j != C.TIME_UNSET) {
            long jUptimeMillis = j - SystemClock.uptimeMillis();
            if (jUptimeMillis <= 0) {
                nt();
            } else {
                postDelayed(this.Xa, jUptimeMillis);
            }
        } else if (mx()) {
            nu();
        }
        nv();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.Xp = false;
        removeCallbacks(this.WZ);
        removeCallbacks(this.Xa);
    }

    @Deprecated
    public void setControlDispatcher(com.applovin.exoplayer2.i iVar) {
        if (this.Xn != iVar) {
            this.Xn = iVar;
            nx();
        }
    }

    public void setPlayer(@Nullable an anVar) {
        boolean z = true;
        com.applovin.exoplayer2.l.a.checkState(Looper.myLooper() == Looper.getMainLooper());
        if (anVar != null && anVar.az() != Looper.getMainLooper()) {
            z = false;
        }
        com.applovin.exoplayer2.l.a.checkArgument(z);
        an anVar2 = this.jb;
        if (anVar2 == anVar) {
            return;
        }
        if (anVar2 != null) {
            anVar2.b(this.WL);
        }
        this.jb = anVar;
        if (anVar != null) {
            anVar.a(this.WL);
        }
        nv();
    }

    public void setProgressUpdateListener(@Nullable c cVar) {
        this.Xo = cVar;
    }

    public void setRepeatToggleModes(int i) {
        this.Xu = i;
        an anVar = this.jb;
        if (anVar != null) {
            int iAF = anVar.aF();
            if (i == 0 && iAF != 0) {
                this.Xn.a(this.jb, 0);
            } else if (i == 1 && iAF == 2) {
                this.Xn.a(this.jb, 1);
            } else if (i == 2 && iAF == 1) {
                this.Xn.a(this.jb, 2);
            }
        }
        ny();
    }

    public void setShowFastForwardButton(boolean z) {
        this.Xw = z;
        nx();
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        this.Xq = z;
        nA();
    }

    public void setShowNextButton(boolean z) {
        this.Xy = z;
        nx();
    }

    public void setShowPreviousButton(boolean z) {
        this.Xx = z;
        nx();
    }

    public void setShowRewindButton(boolean z) {
        this.Xv = z;
        nx();
    }

    public void setShowShuffleButton(boolean z) {
        this.Xz = z;
        nz();
    }

    public void setShowTimeoutMs(int i) {
        this.Xs = i;
        if (mx()) {
            nu();
        }
    }

    public void setShowVrButton(boolean z) {
        View view = this.WV;
        if (view != null) {
            view.setVisibility(z ? 0 : 8);
        }
    }

    public void setTimeBarMinUpdateInterval(int i) {
        this.Xt = ai.k(i, 16, 1000);
    }

    public void setVrButtonListener(@Nullable View.OnClickListener onClickListener) {
        View view = this.WV;
        if (view != null) {
            view.setOnClickListener(onClickListener);
            a(getShowVrButton(), onClickListener != null, this.WV);
        }
    }

    public void show() {
        if (!mx()) {
            setVisibility(0);
            Iterator<d> it = this.WM.iterator();
            while (it.hasNext()) {
                it.next().eZ(getVisibility());
            }
            nv();
            nC();
            nD();
        }
        nu();
    }
}
