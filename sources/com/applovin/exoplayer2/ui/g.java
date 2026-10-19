package com.applovin.exoplayer2.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import com.applovin.exoplayer2.ab;
import com.applovin.exoplayer2.ac;
import com.applovin.exoplayer2.ak;
import com.applovin.exoplayer2.am;
import com.applovin.exoplayer2.an;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.h.ad;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.u;
import com.applovin.exoplayer2.ui.AspectRatioFrameLayout;
import com.applovin.exoplayer2.ui.f;
import com.applovin.exoplayer2.w1;
import com.applovin.exoplayer2.x1;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class g extends FrameLayout {
    private final a XH;

    @Nullable
    private final AspectRatioFrameLayout XI;

    @Nullable
    private final View XJ;

    @Nullable
    private final View XK;
    private final boolean XL;

    @Nullable
    private final ImageView XM;

    @Nullable
    private final SubtitleView XN;

    @Nullable
    private final View XO;

    @Nullable
    private final TextView XP;

    @Nullable
    private final f XQ;

    @Nullable
    private final FrameLayout XR;

    @Nullable
    private final FrameLayout XS;
    private boolean XT;

    @Nullable
    private f.d XU;
    private boolean XV;

    @Nullable
    private Drawable XW;
    private int XX;
    private boolean XY;

    @Nullable
    private com.applovin.exoplayer2.l.k<? super ak> XZ;

    @Nullable
    private CharSequence Ya;
    private int Yb;
    private boolean Yc;
    private boolean Yd;
    private boolean Ye;
    private int Yf;
    private boolean Yg;

    @Nullable
    private an jb;

    private final class a implements View.OnClickListener, View.OnLayoutChangeListener, an.d, f.d {

        @Nullable
        private Object Yh;
        private final ba.a bI = new ba.a();

        public a() {
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.b.g
        public /* synthetic */ void A(boolean z) {
            x1.a(this, z);
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public void Z(int i) {
            g.this.nO();
            g.this.nP();
            g.this.nR();
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
        public void a(an.e eVar, an.e eVar2, int i) {
            if (g.this.aP() && g.this.Yd) {
                g.this.nG();
            }
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public /* synthetic */ void a(an anVar, an.c cVar) {
            x1.g(this, anVar, cVar);
        }

        @Override // com.applovin.exoplayer2.an.d
        public /* synthetic */ void a(com.applovin.exoplayer2.g.a aVar) {
            x1.h(this, aVar);
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public void a(ad adVar, com.applovin.exoplayer2.j.h hVar) {
            an anVar = (an) com.applovin.exoplayer2.l.a.checkNotNull(g.this.jb);
            ba baVarAX = anVar.aX();
            if (baVarAX.isEmpty()) {
                this.Yh = null;
            } else if (anVar.aU().isEmpty()) {
                Object obj = this.Yh;
                if (obj != null) {
                    int iC = baVarAX.c(obj);
                    if (iC != -1) {
                        if (anVar.aL() == baVarAX.a(iC, this.bI).cN) {
                            return;
                        }
                    }
                    this.Yh = null;
                }
            } else {
                this.Yh = baVarAX.a(anVar.aK(), this.bI, true).ch;
            }
            g.this.aq(false);
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.m.n
        public void a(com.applovin.exoplayer2.m.o oVar) {
            g.this.nL();
        }

        @Override // com.applovin.exoplayer2.an.d
        public /* synthetic */ void a(com.applovin.exoplayer2.o oVar) {
            x1.k(this, oVar);
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

        @Override // com.applovin.exoplayer2.an.b
        public /* synthetic */ void cD() {
            w1.n(this);
        }

        @Override // com.applovin.exoplayer2.an.d
        public void cE() {
            if (g.this.XJ != null) {
                g.this.XJ.setVisibility(4);
            }
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
        public void e(List<com.applovin.exoplayer2.i.a> list) {
            if (g.this.XN != null) {
                g.this.XN.setCues(list);
            }
        }

        @Override // com.applovin.exoplayer2.an.d, com.applovin.exoplayer2.an.b
        public void e(boolean z, int i) {
            g.this.nO();
            g.this.nR();
        }

        @Override // com.applovin.exoplayer2.ui.f.d
        public void eZ(int i) {
            g.this.nQ();
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
            g.this.nJ();
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            g.a((TextureView) view, g.this.Yf);
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

    public g(Context context) {
        this(context, null);
    }

    public g(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public g(Context context, @Nullable AttributeSet attributeSet, int i) {
        int i2;
        boolean z;
        int i3;
        boolean z2;
        int integer;
        boolean z3;
        int i4;
        int i5;
        boolean z4;
        boolean z5;
        int i6;
        boolean z6;
        boolean z7;
        boolean z8;
        super(context, attributeSet, i);
        a aVar = new a();
        this.XH = aVar;
        if (isInEditMode()) {
            this.XI = null;
            this.XJ = null;
            this.XK = null;
            this.XL = false;
            this.XM = null;
            this.XN = null;
            this.XO = null;
            this.XP = null;
            this.XQ = null;
            this.XR = null;
            this.XS = null;
            ImageView imageView = new ImageView(context);
            if (ai.acV >= 23) {
                a(getResources(), imageView);
            } else {
                b(getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i7 = R.layout.applovin_exo_player_view;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.AppLovinPlayerView, i, 0);
            try {
                int i8 = R.styleable.AppLovinPlayerView_al_shutter_background_color;
                boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i8);
                int color = typedArrayObtainStyledAttributes.getColor(i8, 0);
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AppLovinPlayerView_al_player_layout_id, i7);
                boolean z9 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AppLovinPlayerView_al_use_artwork, true);
                int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.AppLovinPlayerView_al_default_artwork, 0);
                boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AppLovinPlayerView_al_use_controller, true);
                int i9 = typedArrayObtainStyledAttributes.getInt(R.styleable.AppLovinPlayerView_al_surface_type, 1);
                int i10 = typedArrayObtainStyledAttributes.getInt(R.styleable.AppLovinPlayerView_al_resize_mode, 0);
                int i11 = typedArrayObtainStyledAttributes.getInt(R.styleable.AppLovinPlayerView_al_show_timeout, 5000);
                boolean z11 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AppLovinPlayerView_al_hide_on_touch, true);
                boolean z12 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AppLovinPlayerView_al_auto_show, true);
                integer = typedArrayObtainStyledAttributes.getInteger(R.styleable.AppLovinPlayerView_al_show_buffering, 0);
                this.XY = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AppLovinPlayerView_al_keep_content_on_player_reset, this.XY);
                boolean z13 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.AppLovinPlayerView_al_hide_during_ads, true);
                typedArrayObtainStyledAttributes.recycle();
                z3 = z11;
                z = z12;
                i3 = i10;
                z6 = z10;
                i6 = resourceId2;
                z5 = z9;
                z4 = zHasValue;
                i5 = color;
                i4 = i9;
                i7 = resourceId;
                i2 = i11;
                z2 = z13;
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        } else {
            i2 = 5000;
            z = true;
            i3 = 0;
            z2 = true;
            integer = 0;
            z3 = true;
            i4 = 1;
            i5 = 0;
            z4 = false;
            z5 = true;
            i6 = 0;
            z6 = true;
        }
        LayoutInflater.from(context).inflate(i7, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(R.id.al_exo_content_frame);
        this.XI = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            a(aspectRatioFrameLayout, i3);
        }
        View viewFindViewById = findViewById(R.id.al_exo_shutter);
        this.XJ = viewFindViewById;
        if (viewFindViewById != null && z4) {
            viewFindViewById.setBackgroundColor(i5);
        }
        if (aspectRatioFrameLayout == null || i4 == 0) {
            this.XK = null;
            z7 = false;
        } else {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i4 == 2) {
                this.XK = new TextureView(context);
            } else if (i4 == 3) {
                try {
                    this.XK = (View) Class.forName("com.applovin.exoplayer2.m.a.i").getConstructor(Context.class).newInstance(context);
                    z8 = true;
                    this.XK.setLayoutParams(layoutParams);
                    this.XK.setOnClickListener(aVar);
                    this.XK.setClickable(false);
                    aspectRatioFrameLayout.addView(this.XK, 0);
                    z7 = z8;
                } catch (Exception e2) {
                    throw new IllegalStateException("spherical_gl_surface_view requires an ExoPlayer dependency", e2);
                }
            } else if (i4 != 4) {
                this.XK = new SurfaceView(context);
            } else {
                try {
                    this.XK = (View) Class.forName("com.applovin.exoplayer2.m.i").getConstructor(Context.class).newInstance(context);
                } catch (Exception e3) {
                    throw new IllegalStateException("video_decoder_gl_surface_view requires an ExoPlayer dependency", e3);
                }
            }
            z8 = false;
            this.XK.setLayoutParams(layoutParams);
            this.XK.setOnClickListener(aVar);
            this.XK.setClickable(false);
            aspectRatioFrameLayout.addView(this.XK, 0);
            z7 = z8;
        }
        this.XL = z7;
        this.XR = (FrameLayout) findViewById(R.id.al_exo_ad_overlay);
        this.XS = (FrameLayout) findViewById(R.id.al_exo_overlay);
        ImageView imageView2 = (ImageView) findViewById(R.id.al_exo_artwork);
        this.XM = imageView2;
        this.XV = z5 && imageView2 != null;
        if (i6 != 0) {
            this.XW = ContextCompat.getDrawable(getContext(), i6);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(R.id.al_exo_subtitles);
        this.XN = subtitleView;
        if (subtitleView != null) {
            subtitleView.nX();
            subtitleView.nW();
        }
        View viewFindViewById2 = findViewById(R.id.al_exo_buffering);
        this.XO = viewFindViewById2;
        if (viewFindViewById2 != null) {
            viewFindViewById2.setVisibility(8);
        }
        this.XX = integer;
        TextView textView = (TextView) findViewById(R.id.al_exo_error_message);
        this.XP = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        int i12 = R.id.al_exo_controller;
        f fVar = (f) findViewById(i12);
        View viewFindViewById3 = findViewById(R.id.al_exo_controller_placeholder);
        if (fVar != null) {
            this.XQ = fVar;
        } else if (viewFindViewById3 != null) {
            f fVar2 = new f(context, null, 0, attributeSet);
            this.XQ = fVar2;
            fVar2.setId(i12);
            fVar2.setLayoutParams(viewFindViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) viewFindViewById3.getParent();
            int iIndexOfChild = viewGroup.indexOfChild(viewFindViewById3);
            viewGroup.removeView(viewFindViewById3);
            viewGroup.addView(fVar2, iIndexOfChild);
        } else {
            this.XQ = null;
        }
        f fVar3 = this.XQ;
        this.Yb = fVar3 != null ? i2 : 0;
        this.Ye = z3;
        this.Yc = z;
        this.Yd = z2;
        this.XT = z6 && fVar3 != null;
        nG();
        nQ();
        f fVar4 = this.XQ;
        if (fVar4 != null) {
            fVar4.a(aVar);
        }
    }

    @RequiresApi(23)
    private static void a(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(R.drawable.applovin_exo_edit_mode_logo, null));
        imageView.setBackgroundColor(resources.getColor(R.color.al_exo_edit_mode_background_color, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void a(TextureView textureView, int i) {
        Matrix matrix = new Matrix();
        float width = textureView.getWidth();
        float height = textureView.getHeight();
        if (width != 0.0f && height != 0.0f && i != 0) {
            float f2 = width / 2.0f;
            float f3 = height / 2.0f;
            matrix.postRotate(i, f2, f3);
            RectF rectF = new RectF(0.0f, 0.0f, width, height);
            RectF rectF2 = new RectF();
            matrix.mapRect(rectF2, rectF);
            matrix.postScale(width / rectF2.width(), height / rectF2.height(), f2, f3);
        }
        textureView.setTransform(matrix);
    }

    private static void a(AspectRatioFrameLayout aspectRatioFrameLayout, int i) {
        aspectRatioFrameLayout.setResizeMode(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean aP() {
        an anVar = this.jb;
        return anVar != null && anVar.aP() && this.jb.aE();
    }

    private void ao(boolean z) {
        if (!(aP() && this.Yd) && nH()) {
            boolean z2 = this.XQ.mx() && this.XQ.getShowTimeoutMs() <= 0;
            boolean zNK = nK();
            if (z || z2 || zNK) {
                ap(zNK);
            }
        }
    }

    private void ap(boolean z) {
        if (nH()) {
            this.XQ.setShowTimeoutMs(z ? 0 : this.Yb);
            this.XQ.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aq(boolean z) {
        an anVar = this.jb;
        if (anVar == null || anVar.aU().isEmpty()) {
            if (this.XY) {
                return;
            }
            nM();
            nN();
            return;
        }
        if (z && !this.XY) {
            nN();
        }
        com.applovin.exoplayer2.j.h hVarAV = anVar.aV();
        for (int i = 0; i < hVarAV.fR; i++) {
            com.applovin.exoplayer2.j.g gVarEU = hVarAV.eU(i);
            if (gVarEU != null) {
                for (int i2 = 0; i2 < gVarEU.kD(); i2++) {
                    if (u.ba(gVarEU.dZ(i2).dz) == 2) {
                        nM();
                        return;
                    }
                }
            }
        }
        nN();
        if (nI() && (b(anVar.aW()) || b(this.XW))) {
            return;
        }
        nM();
    }

    private static void b(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(R.drawable.applovin_exo_edit_mode_logo));
        imageView.setBackgroundColor(resources.getColor(R.color.al_exo_edit_mode_background_color));
    }

    private boolean b(@Nullable Drawable drawable) {
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth > 0 && intrinsicHeight > 0) {
                a(this.XI, intrinsicWidth / intrinsicHeight);
                this.XM.setImageDrawable(drawable);
                this.XM.setVisibility(0);
                return true;
            }
        }
        return false;
    }

    private boolean b(ac acVar) {
        byte[] bArr = acVar.eX;
        if (bArr == null) {
            return false;
        }
        return b(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
    }

    @SuppressLint({"InlinedApi"})
    private boolean fa(int i) {
        return i == 19 || i == 270 || i == 22 || i == 271 || i == 20 || i == 269 || i == 21 || i == 268 || i == 23;
    }

    private boolean nH() {
        if (!this.XT) {
            return false;
        }
        com.applovin.exoplayer2.l.a.N(this.XQ);
        return true;
    }

    private boolean nI() {
        if (!this.XV) {
            return false;
        }
        com.applovin.exoplayer2.l.a.N(this.XM);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean nJ() {
        if (!nH() || this.jb == null) {
            return false;
        }
        if (!this.XQ.mx()) {
            ao(true);
        } else if (this.Ye) {
            this.XQ.nt();
        }
        return true;
    }

    private boolean nK() {
        an anVar = this.jb;
        if (anVar == null) {
            return true;
        }
        int iAB = anVar.aB();
        return this.Yc && (iAB == 1 || iAB == 4 || !this.jb.aE());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nL() {
        an anVar = this.jb;
        com.applovin.exoplayer2.m.o oVarAY = anVar != null ? anVar.aY() : com.applovin.exoplayer2.m.o.afk;
        int i = oVarAY.dE;
        int i2 = oVarAY.height;
        int i3 = oVarAY.afl;
        float f2 = (i2 == 0 || i == 0) ? 0.0f : (i * oVarAY.dH) / i2;
        View view = this.XK;
        if (view instanceof TextureView) {
            if (f2 > 0.0f && (i3 == 90 || i3 == 270)) {
                f2 = 1.0f / f2;
            }
            if (this.Yf != 0) {
                view.removeOnLayoutChangeListener(this.XH);
            }
            this.Yf = i3;
            if (i3 != 0) {
                this.XK.addOnLayoutChangeListener(this.XH);
            }
            a((TextureView) this.XK, this.Yf);
        }
        a(this.XI, this.XL ? 0.0f : f2);
    }

    private void nM() {
        ImageView imageView = this.XM;
        if (imageView != null) {
            imageView.setImageResource(android.R.color.transparent);
            this.XM.setVisibility(4);
        }
    }

    private void nN() {
        View view = this.XJ;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nO() {
        int i;
        if (this.XO != null) {
            an anVar = this.jb;
            boolean z = true;
            if (anVar == null || anVar.aB() != 2 || ((i = this.XX) != 2 && (i != 1 || !this.jb.aE()))) {
                z = false;
            }
            this.XO.setVisibility(z ? 0 : 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nP() {
        com.applovin.exoplayer2.l.k<? super ak> kVar;
        TextView textView = this.XP;
        if (textView != null) {
            CharSequence charSequence = this.Ya;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.XP.setVisibility(0);
                return;
            }
            an anVar = this.jb;
            ak akVarAx = anVar != null ? anVar.ax() : null;
            if (akVarAx == null || (kVar = this.XZ) == null) {
                this.XP.setVisibility(8);
            } else {
                this.XP.setText((CharSequence) kVar.k(akVarAx).second);
                this.XP.setVisibility(0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nQ() {
        f fVar = this.XQ;
        if (fVar == null || !this.XT) {
            setContentDescription(null);
        } else if (fVar.getVisibility() == 0) {
            setContentDescription(this.Ye ? getResources().getString(R.string.al_exo_controls_hide) : null);
        } else {
            setContentDescription(getResources().getString(R.string.al_exo_controls_show));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void nR() {
        if (aP() && this.Yd) {
            nG();
        } else {
            ao(false);
        }
    }

    protected void a(@Nullable AspectRatioFrameLayout aspectRatioFrameLayout, float f2) {
        if (aspectRatioFrameLayout != null) {
            aspectRatioFrameLayout.setAspectRatio(f2);
        }
    }

    public boolean a(KeyEvent keyEvent) {
        return nH() && this.XQ.a(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        an anVar = this.jb;
        if (anVar != null && anVar.aP()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        boolean zFa = fa(keyEvent.getKeyCode());
        if ((zFa && nH() && !this.XQ.mx()) || a(keyEvent) || super.dispatchKeyEvent(keyEvent)) {
            ao(true);
            return true;
        }
        if (!zFa || !nH()) {
            return false;
        }
        ao(true);
        return false;
    }

    public List<com.applovin.exoplayer2.ui.a> getAdOverlayInfos() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.XS;
        if (frameLayout != null) {
            arrayList.add(new com.applovin.exoplayer2.ui.a(frameLayout, 3, "Transparent overlay does not impact viewability"));
        }
        f fVar = this.XQ;
        if (fVar != null) {
            arrayList.add(new com.applovin.exoplayer2.ui.a(fVar, 0));
        }
        return com.applovin.exoplayer2.common.a.s.d(arrayList);
    }

    public ViewGroup getAdViewGroup() {
        return (ViewGroup) com.applovin.exoplayer2.l.a.q(this.XR, "exo_ad_overlay must be present for ad playback");
    }

    public boolean getControllerAutoShow() {
        return this.Yc;
    }

    public boolean getControllerHideOnTouch() {
        return this.Ye;
    }

    public int getControllerShowTimeoutMs() {
        return this.Yb;
    }

    @Nullable
    public Drawable getDefaultArtwork() {
        return this.XW;
    }

    @Nullable
    public FrameLayout getOverlayFrameLayout() {
        return this.XS;
    }

    @Nullable
    public an getPlayer() {
        return this.jb;
    }

    public int getResizeMode() {
        com.applovin.exoplayer2.l.a.N(this.XI);
        return this.XI.getResizeMode();
    }

    @Nullable
    public SubtitleView getSubtitleView() {
        return this.XN;
    }

    public boolean getUseArtwork() {
        return this.XV;
    }

    public boolean getUseController() {
        return this.XT;
    }

    @Nullable
    public View getVideoSurfaceView() {
        return this.XK;
    }

    public void nF() {
        ap(nK());
    }

    public void nG() {
        f fVar = this.XQ;
        if (fVar != null) {
            fVar.nt();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!nH() || this.jb == null) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.Yg = true;
            return true;
        }
        if (action != 1 || !this.Yg) {
            return false;
        }
        this.Yg = false;
        performClick();
        return true;
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!nH() || this.jb == null) {
            return false;
        }
        ao(true);
        return true;
    }

    @Override // android.view.View
    public boolean performClick() {
        super.performClick();
        return nJ();
    }

    public void setAspectRatioListener(@Nullable AspectRatioFrameLayout.a aVar) {
        com.applovin.exoplayer2.l.a.N(this.XI);
        this.XI.setAspectRatioListener(aVar);
    }

    @Deprecated
    public void setControlDispatcher(com.applovin.exoplayer2.i iVar) {
        com.applovin.exoplayer2.l.a.N(this.XQ);
        this.XQ.setControlDispatcher(iVar);
    }

    public void setControllerAutoShow(boolean z) {
        this.Yc = z;
    }

    public void setControllerHideDuringAds(boolean z) {
        this.Yd = z;
    }

    public void setControllerHideOnTouch(boolean z) {
        com.applovin.exoplayer2.l.a.N(this.XQ);
        this.Ye = z;
        nQ();
    }

    public void setControllerShowTimeoutMs(int i) {
        com.applovin.exoplayer2.l.a.N(this.XQ);
        this.Yb = i;
        if (this.XQ.mx()) {
            nF();
        }
    }

    public void setControllerVisibilityListener(@Nullable f.d dVar) {
        com.applovin.exoplayer2.l.a.N(this.XQ);
        f.d dVar2 = this.XU;
        if (dVar2 == dVar) {
            return;
        }
        if (dVar2 != null) {
            this.XQ.b(dVar2);
        }
        this.XU = dVar;
        if (dVar != null) {
            this.XQ.a(dVar);
        }
    }

    public void setCustomErrorMessage(@Nullable CharSequence charSequence) {
        com.applovin.exoplayer2.l.a.checkState(this.XP != null);
        this.Ya = charSequence;
        nP();
    }

    public void setDefaultArtwork(@Nullable Drawable drawable) {
        if (this.XW != drawable) {
            this.XW = drawable;
            aq(false);
        }
    }

    public void setErrorMessageProvider(@Nullable com.applovin.exoplayer2.l.k<? super ak> kVar) {
        if (this.XZ != kVar) {
            this.XZ = kVar;
            nP();
        }
    }

    public void setKeepContentOnPlayerReset(boolean z) {
        if (this.XY != z) {
            this.XY = z;
            aq(false);
        }
    }

    public void setPlayer(@Nullable an anVar) {
        com.applovin.exoplayer2.l.a.checkState(Looper.myLooper() == Looper.getMainLooper());
        com.applovin.exoplayer2.l.a.checkArgument(anVar == null || anVar.az() == Looper.getMainLooper());
        an anVar2 = this.jb;
        if (anVar2 == anVar) {
            return;
        }
        if (anVar2 != null) {
            anVar2.b(this.XH);
            if (anVar2.n(26)) {
                View view = this.XK;
                if (view instanceof TextureView) {
                    anVar2.b((TextureView) view);
                } else if (view instanceof SurfaceView) {
                    anVar2.b((SurfaceView) view);
                }
            }
        }
        SubtitleView subtitleView = this.XN;
        if (subtitleView != null) {
            subtitleView.setCues(null);
        }
        this.jb = anVar;
        if (nH()) {
            this.XQ.setPlayer(anVar);
        }
        nO();
        nP();
        aq(true);
        if (anVar == null) {
            nG();
            return;
        }
        if (anVar.n(26)) {
            View view2 = this.XK;
            if (view2 instanceof TextureView) {
                anVar.a((TextureView) view2);
            } else if (view2 instanceof SurfaceView) {
                anVar.a((SurfaceView) view2);
            }
            nL();
        }
        if (this.XN != null && anVar.n(27)) {
            this.XN.setCues(anVar.bd());
        }
        anVar.a(this.XH);
        ao(false);
    }

    public void setRepeatToggleModes(int i) {
        com.applovin.exoplayer2.l.a.N(this.XQ);
        this.XQ.setRepeatToggleModes(i);
    }

    public void setResizeMode(int i) {
        com.applovin.exoplayer2.l.a.N(this.XI);
        this.XI.setResizeMode(i);
    }

    public void setShowBuffering(int i) {
        if (this.XX != i) {
            this.XX = i;
            nO();
        }
    }

    public void setShowFastForwardButton(boolean z) {
        com.applovin.exoplayer2.l.a.N(this.XQ);
        this.XQ.setShowFastForwardButton(z);
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        com.applovin.exoplayer2.l.a.N(this.XQ);
        this.XQ.setShowMultiWindowTimeBar(z);
    }

    public void setShowNextButton(boolean z) {
        com.applovin.exoplayer2.l.a.N(this.XQ);
        this.XQ.setShowNextButton(z);
    }

    public void setShowPreviousButton(boolean z) {
        com.applovin.exoplayer2.l.a.N(this.XQ);
        this.XQ.setShowPreviousButton(z);
    }

    public void setShowRewindButton(boolean z) {
        com.applovin.exoplayer2.l.a.N(this.XQ);
        this.XQ.setShowRewindButton(z);
    }

    public void setShowShuffleButton(boolean z) {
        com.applovin.exoplayer2.l.a.N(this.XQ);
        this.XQ.setShowShuffleButton(z);
    }

    public void setShutterBackgroundColor(int i) {
        View view = this.XJ;
        if (view != null) {
            view.setBackgroundColor(i);
        }
    }

    public void setUseArtwork(boolean z) {
        com.applovin.exoplayer2.l.a.checkState((z && this.XM == null) ? false : true);
        if (this.XV != z) {
            this.XV = z;
            aq(false);
        }
    }

    public void setUseController(boolean z) {
        com.applovin.exoplayer2.l.a.checkState((z && this.XQ == null) ? false : true);
        if (this.XT == z) {
            return;
        }
        this.XT = z;
        if (nH()) {
            this.XQ.setPlayer(this.jb);
        } else {
            f fVar = this.XQ;
            if (fVar != null) {
                fVar.nt();
                this.XQ.setPlayer(null);
            }
        }
        nQ();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        View view = this.XK;
        if (view instanceof SurfaceView) {
            view.setVisibility(i);
        }
    }
}
