package com.applovin.exoplayer2.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.ui.k;
import com.applovin.sdk.R;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes.dex */
public class d extends View implements k {
    private int NK;
    private long WA;
    private int WB;
    private Rect WC;
    private ValueAnimator WD;
    private float WE;
    private boolean WF;
    private boolean WG;
    private long WH;
    private long WI;

    @Nullable
    private long[] WJ;

    @Nullable
    private boolean[] WK;
    private final Rect Wa;
    private final Rect Wb;
    private final Rect Wc;
    private final Rect Wd;
    private final Paint We;
    private final Paint Wf;
    private final Paint Wg;
    private final Paint Wh;
    private final Paint Wi;
    private final Paint Wj;

    @Nullable
    private final Drawable Wk;
    private final int Wl;
    private final int Wm;
    private final int Wn;
    private final int Wo;
    private final int Wp;
    private final int Wq;
    private final int Wr;
    private final int Ws;
    private final int Wt;
    private final StringBuilder Wu;
    private final Formatter Wv;
    private final Runnable Ww;
    private final Point Wx;
    private final float Wy;
    private int Wz;
    private final CopyOnWriteArraySet<k.a> hv;
    private long uc;
    private long zE;

    public d(Context context, @Nullable AttributeSet attributeSet, int i, @Nullable AttributeSet attributeSet2) {
        this(context, attributeSet, i, attributeSet2, 0);
    }

    public d(Context context, @Nullable AttributeSet attributeSet, int i, @Nullable AttributeSet attributeSet2, int i2) {
        super(context, attributeSet, i);
        this.Wa = new Rect();
        this.Wb = new Rect();
        this.Wc = new Rect();
        this.Wd = new Rect();
        Paint paint = new Paint();
        this.We = paint;
        Paint paint2 = new Paint();
        this.Wf = paint2;
        Paint paint3 = new Paint();
        this.Wg = paint3;
        Paint paint4 = new Paint();
        this.Wh = paint4;
        Paint paint5 = new Paint();
        this.Wi = paint5;
        Paint paint6 = new Paint();
        this.Wj = paint6;
        paint6.setAntiAlias(true);
        this.hv = new CopyOnWriteArraySet<>();
        this.Wx = new Point();
        float f2 = context.getResources().getDisplayMetrics().density;
        this.Wy = f2;
        this.Wt = e(f2, -50);
        int iE = e(f2, 4);
        int iE2 = e(f2, 26);
        int iE3 = e(f2, 4);
        int iE4 = e(f2, 12);
        int iE5 = e(f2, 0);
        int iE6 = e(f2, 16);
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R.styleable.AppLovinDefaultTimeBar, i, i2);
            try {
                Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.AppLovinDefaultTimeBar_al_scrubber_drawable);
                this.Wk = drawable;
                if (drawable != null) {
                    a(drawable);
                    iE2 = Math.max(drawable.getMinimumHeight(), iE2);
                }
                this.Wl = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AppLovinDefaultTimeBar_al_bar_height, iE);
                this.Wm = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AppLovinDefaultTimeBar_al_touch_target_height, iE2);
                this.Wn = typedArrayObtainStyledAttributes.getInt(R.styleable.AppLovinDefaultTimeBar_al_bar_gravity, 0);
                this.Wo = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AppLovinDefaultTimeBar_al_ad_marker_width, iE3);
                this.Wp = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AppLovinDefaultTimeBar_al_scrubber_enabled_size, iE4);
                this.Wq = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AppLovinDefaultTimeBar_al_scrubber_disabled_size, iE5);
                this.Wr = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.AppLovinDefaultTimeBar_al_scrubber_dragged_size, iE6);
                int i3 = typedArrayObtainStyledAttributes.getInt(R.styleable.AppLovinDefaultTimeBar_al_played_color, -1);
                int i4 = typedArrayObtainStyledAttributes.getInt(R.styleable.AppLovinDefaultTimeBar_al_scrubber_color, -1);
                int i5 = typedArrayObtainStyledAttributes.getInt(R.styleable.AppLovinDefaultTimeBar_al_buffered_color, -855638017);
                int i6 = typedArrayObtainStyledAttributes.getInt(R.styleable.AppLovinDefaultTimeBar_al_unplayed_color, 872415231);
                int i7 = typedArrayObtainStyledAttributes.getInt(R.styleable.AppLovinDefaultTimeBar_al_ad_marker_color, -1291845888);
                int i8 = typedArrayObtainStyledAttributes.getInt(R.styleable.AppLovinDefaultTimeBar_al_played_ad_marker_color, 872414976);
                paint.setColor(i3);
                paint6.setColor(i4);
                paint2.setColor(i5);
                paint3.setColor(i6);
                paint4.setColor(i7);
                paint5.setColor(i8);
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        } else {
            this.Wl = iE;
            this.Wm = iE2;
            this.Wn = 0;
            this.Wo = iE3;
            this.Wp = iE4;
            this.Wq = iE5;
            this.Wr = iE6;
            paint.setColor(-1);
            paint6.setColor(-1);
            paint2.setColor(-855638017);
            paint3.setColor(872415231);
            paint4.setColor(-1291845888);
            paint5.setColor(872414976);
            this.Wk = null;
        }
        StringBuilder sb = new StringBuilder();
        this.Wu = sb;
        this.Wv = new Formatter(sb, Locale.getDefault());
        this.Ww = new Runnable() { // from class: com.applovin.exoplayer2.ui.n
            @Override // java.lang.Runnable
            public final void run() {
                this.a.ln();
            }
        };
        Drawable drawable2 = this.Wk;
        if (drawable2 != null) {
            this.Ws = (drawable2.getMinimumWidth() + 1) / 2;
        } else {
            this.Ws = (Math.max(this.Wq, Math.max(this.Wp, this.Wr)) + 1) / 2;
        }
        this.WE = 1.0f;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.WD = valueAnimator;
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.applovin.exoplayer2.ui.o
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.a.a(valueAnimator2);
            }
        });
        this.zE = C.TIME_UNSET;
        this.WA = C.TIME_UNSET;
        this.Wz = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    @RequiresApi(29)
    private void H(int i, int i2) {
        Rect rect = this.WC;
        if (rect != null && rect.width() == i && this.WC.height() == i2) {
            return;
        }
        Rect rect2 = new Rect(0, 0, i, i2);
        this.WC = rect2;
        setSystemGestureExclusionRects(Collections.singletonList(rect2));
    }

    private Point a(MotionEvent motionEvent) {
        this.Wx.set((int) motionEvent.getX(), (int) motionEvent.getY());
        return this.Wx;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        this.WE = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate(this.Wa);
    }

    private void a(Canvas canvas) {
        int iHeight = this.Wb.height();
        int iCenterY = this.Wb.centerY() - (iHeight / 2);
        int i = iHeight + iCenterY;
        if (this.zE <= 0) {
            Rect rect = this.Wb;
            canvas.drawRect(rect.left, iCenterY, rect.right, i, this.Wg);
            return;
        }
        Rect rect2 = this.Wc;
        int i2 = rect2.left;
        int i3 = rect2.right;
        int iMax = Math.max(Math.max(this.Wb.left, i3), this.Wd.right);
        int i4 = this.Wb.right;
        if (iMax < i4) {
            canvas.drawRect(iMax, iCenterY, i4, i, this.Wg);
        }
        int iMax2 = Math.max(i2, this.Wd.right);
        if (i3 > iMax2) {
            canvas.drawRect(iMax2, iCenterY, i3, i, this.Wf);
        }
        if (this.Wd.width() > 0) {
            Rect rect3 = this.Wd;
            canvas.drawRect(rect3.left, iCenterY, rect3.right, i, this.We);
        }
        if (this.NK == 0) {
            return;
        }
        long[] jArr = (long[]) com.applovin.exoplayer2.l.a.checkNotNull(this.WJ);
        boolean[] zArr = (boolean[]) com.applovin.exoplayer2.l.a.checkNotNull(this.WK);
        int i5 = this.Wo / 2;
        for (int i6 = 0; i6 < this.NK; i6++) {
            int iWidth = ((int) ((((long) this.Wb.width()) * ai.b(jArr[i6], 0L, this.zE)) / this.zE)) - i5;
            Rect rect4 = this.Wb;
            canvas.drawRect(rect4.left + Math.min(rect4.width() - this.Wo, Math.max(0, iWidth)), iCenterY, r10 + this.Wo, i, zArr[i6] ? this.Wi : this.Wh);
        }
    }

    private boolean a(Drawable drawable) {
        return ai.acV >= 23 && a(drawable, getLayoutDirection());
    }

    private static boolean a(Drawable drawable, int i) {
        return ai.acV >= 23 && drawable.setLayoutDirection(i);
    }

    private void an(boolean z) {
        removeCallbacks(this.Ww);
        this.WG = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator<k.a> it = this.hv.iterator();
        while (it.hasNext()) {
            it.next().a(this, this.WH, z);
        }
    }

    private void b(Canvas canvas) {
        if (this.zE <= 0) {
            return;
        }
        Rect rect = this.Wd;
        int iK = ai.k(rect.right, rect.left, this.Wb.right);
        int iCenterY = this.Wd.centerY();
        if (this.Wk == null) {
            canvas.drawCircle(iK, iCenterY, (int) ((((this.WG || isFocused()) ? this.Wr : isEnabled() ? this.Wp : this.Wq) * this.WE) / 2.0f), this.Wj);
            return;
        }
        int intrinsicWidth = ((int) (r2.getIntrinsicWidth() * this.WE)) / 2;
        int intrinsicHeight = ((int) (this.Wk.getIntrinsicHeight() * this.WE)) / 2;
        this.Wk.setBounds(iK - intrinsicWidth, iCenterY - intrinsicHeight, iK + intrinsicWidth, iCenterY + intrinsicHeight);
        this.Wk.draw(canvas);
    }

    private boolean b(float f2, float f3) {
        return this.Wa.contains((int) f2, (int) f3);
    }

    private void bi(long j) {
        this.WH = j;
        this.WG = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator<k.a> it = this.hv.iterator();
        while (it.hasNext()) {
            it.next().a(this, j);
        }
    }

    private void bj(long j) {
        if (this.WH == j) {
            return;
        }
        this.WH = j;
        Iterator<k.a> it = this.hv.iterator();
        while (it.hasNext()) {
            it.next().b(this, j);
        }
    }

    private boolean bk(long j) {
        long j2 = this.zE;
        if (j2 <= 0) {
            return false;
        }
        long j3 = this.WG ? this.WH : this.uc;
        long jB = ai.b(j3 + j, 0L, j2);
        if (jB == j3) {
            return false;
        }
        if (this.WG) {
            bj(jB);
        } else {
            bi(jB);
        }
        nr();
        return true;
    }

    private static int e(float f2, int i) {
        return (int) ((i * f2) + 0.5f);
    }

    private static int f(float f2, int i) {
        return (int) (i / f2);
    }

    private long getPositionIncrement() {
        long j = this.WA;
        if (j != C.TIME_UNSET) {
            return j;
        }
        long j2 = this.zE;
        if (j2 == C.TIME_UNSET) {
            return 0L;
        }
        return j2 / ((long) this.Wz);
    }

    private String getProgressText() {
        return ai.a(this.Wu, this.Wv, this.uc);
    }

    private long getScrubberPosition() {
        if (this.Wb.width() <= 0 || this.zE == C.TIME_UNSET) {
            return 0L;
        }
        return (((long) this.Wd.width()) * this.zE) / ((long) this.Wb.width());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void ln() {
        an(false);
    }

    private void nr() {
        this.Wc.set(this.Wb);
        this.Wd.set(this.Wb);
        long j = this.WG ? this.WH : this.uc;
        if (this.zE > 0) {
            int iWidth = (int) ((((long) this.Wb.width()) * this.WI) / this.zE);
            Rect rect = this.Wc;
            Rect rect2 = this.Wb;
            rect.right = Math.min(rect2.left + iWidth, rect2.right);
            int iWidth2 = (int) ((((long) this.Wb.width()) * j) / this.zE);
            Rect rect3 = this.Wd;
            Rect rect4 = this.Wb;
            rect3.right = Math.min(rect4.left + iWidth2, rect4.right);
        } else {
            Rect rect5 = this.Wc;
            int i = this.Wb.left;
            rect5.right = i;
            this.Wd.right = i;
        }
        invalidate(this.Wa);
    }

    private void ns() {
        Drawable drawable = this.Wk;
        if (drawable != null && drawable.isStateful() && this.Wk.setState(getDrawableState())) {
            invalidate();
        }
    }

    private void w(float f2) {
        Rect rect = this.Wd;
        Rect rect2 = this.Wb;
        rect.right = ai.k((int) f2, rect2.left, rect2.right);
    }

    @Override // com.applovin.exoplayer2.ui.k
    public void a(k.a aVar) {
        com.applovin.exoplayer2.l.a.checkNotNull(aVar);
        this.hv.add(aVar);
    }

    @Override // com.applovin.exoplayer2.ui.k
    public void a(@Nullable long[] jArr, @Nullable boolean[] zArr, int i) {
        com.applovin.exoplayer2.l.a.checkArgument(i == 0 || !(jArr == null || zArr == null));
        this.NK = i;
        this.WJ = jArr;
        this.WK = zArr;
        nr();
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        ns();
    }

    @Override // com.applovin.exoplayer2.ui.k
    public long getPreferredUpdateDelay() {
        int iF = f(this.Wy, this.Wb.width());
        if (iF != 0) {
            long j = this.zE;
            if (j != 0 && j != C.TIME_UNSET) {
                return j / ((long) iF);
            }
        }
        return Long.MAX_VALUE;
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.Wk;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.save();
        a(canvas);
        b(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z, int i, @Nullable Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (!this.WG || z) {
            return;
        }
        an(false);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4) {
            accessibilityEvent.getText().add(getProgressText());
        }
        accessibilityEvent.setClassName("android.widget.SeekBar");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.SeekBar");
        accessibilityNodeInfo.setContentDescription(getProgressText());
        if (this.zE <= 0) {
            return;
        }
        if (ai.acV >= 21) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
        } else {
            accessibilityNodeInfo.addAction(4096);
            accessibilityNodeInfo.addAction(8192);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x001a  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onKeyDown(int r5, android.view.KeyEvent r6) {
        /*
            r4 = this;
            boolean r0 = r4.isEnabled()
            if (r0 == 0) goto L30
            long r0 = r4.getPositionIncrement()
            r2 = 66
            r3 = 1
            if (r5 == r2) goto L27
            switch(r5) {
                case 21: goto L13;
                case 22: goto L14;
                case 23: goto L27;
                default: goto L12;
            }
        L12:
            goto L30
        L13:
            long r0 = -r0
        L14:
            boolean r0 = r4.bk(r0)
            if (r0 == 0) goto L30
            java.lang.Runnable r5 = r4.Ww
            r4.removeCallbacks(r5)
            java.lang.Runnable r5 = r4.Ww
            r0 = 1000(0x3e8, double:4.94E-321)
            r4.postDelayed(r5, r0)
            return r3
        L27:
            boolean r0 = r4.WG
            if (r0 == 0) goto L30
            r5 = 0
            r4.an(r5)
            return r3
        L30:
            boolean r5 = super.onKeyDown(r5, r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.ui.d.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingBottom;
        int iMax;
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = i5 - getPaddingRight();
        int i7 = this.WF ? 0 : this.Ws;
        if (this.Wn == 1) {
            paddingBottom = (i6 - getPaddingBottom()) - this.Wm;
            int paddingBottom2 = i6 - getPaddingBottom();
            int i8 = this.Wl;
            iMax = (paddingBottom2 - i8) - Math.max(i7 - (i8 / 2), 0);
        } else {
            paddingBottom = (i6 - this.Wm) / 2;
            iMax = (i6 - this.Wl) / 2;
        }
        this.Wa.set(paddingLeft, paddingBottom, paddingRight, this.Wm + paddingBottom);
        Rect rect = this.Wb;
        Rect rect2 = this.Wa;
        rect.set(rect2.left + i7, iMax, rect2.right - i7, this.Wl + iMax);
        if (ai.acV >= 29) {
            H(i5, i6);
        }
        nr();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 0) {
            size = this.Wm;
        } else if (mode != 1073741824) {
            size = Math.min(this.Wm, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), size);
        ns();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        Drawable drawable = this.Wk;
        if (drawable == null || !a(drawable, i)) {
            return;
        }
        invalidate();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x004e  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            r7 = this;
            boolean r0 = r7.isEnabled()
            r1 = 0
            if (r0 == 0) goto L76
            long r2 = r7.zE
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 > 0) goto L10
            goto L76
        L10:
            android.graphics.Point r0 = r7.a(r8)
            int r2 = r0.x
            int r0 = r0.y
            int r3 = r8.getAction()
            r4 = 1
            if (r3 == 0) goto L5d
            r5 = 3
            if (r3 == r4) goto L4e
            r6 = 2
            if (r3 == r6) goto L28
            if (r3 == r5) goto L4e
            goto L76
        L28:
            boolean r8 = r7.WG
            if (r8 == 0) goto L76
            int r8 = r7.Wt
            if (r0 >= r8) goto L3a
            int r8 = r7.WB
            int r2 = r2 - r8
            int r2 = r2 / r5
            int r8 = r8 + r2
            float r8 = (float) r8
            r7.w(r8)
            goto L40
        L3a:
            r7.WB = r2
            float r8 = (float) r2
            r7.w(r8)
        L40:
            long r0 = r7.getScrubberPosition()
            r7.bj(r0)
            r7.nr()
            r7.invalidate()
            return r4
        L4e:
            boolean r0 = r7.WG
            if (r0 == 0) goto L76
            int r8 = r8.getAction()
            if (r8 != r5) goto L59
            r1 = 1
        L59:
            r7.an(r1)
            return r4
        L5d:
            float r8 = (float) r2
            float r0 = (float) r0
            boolean r0 = r7.b(r8, r0)
            if (r0 == 0) goto L76
            r7.w(r8)
            long r0 = r7.getScrubberPosition()
            r7.bi(r0)
            r7.nr()
            r7.invalidate()
            return r4
        L76:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.ui.d.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, @Nullable Bundle bundle) {
        if (super.performAccessibilityAction(i, bundle)) {
            return true;
        }
        if (this.zE <= 0) {
            return false;
        }
        if (i == 8192) {
            if (bk(-getPositionIncrement())) {
                an(false);
            }
        } else {
            if (i != 4096) {
                return false;
            }
            if (bk(getPositionIncrement())) {
                an(false);
            }
        }
        sendAccessibilityEvent(4);
        return true;
    }

    public void setAdMarkerColor(@ColorInt int i) {
        this.Wh.setColor(i);
        invalidate(this.Wa);
    }

    public void setBufferedColor(@ColorInt int i) {
        this.Wf.setColor(i);
        invalidate(this.Wa);
    }

    @Override // com.applovin.exoplayer2.ui.k
    public void setBufferedPosition(long j) {
        if (this.WI == j) {
            return;
        }
        this.WI = j;
        nr();
    }

    @Override // com.applovin.exoplayer2.ui.k
    public void setDuration(long j) {
        if (this.zE == j) {
            return;
        }
        this.zE = j;
        if (this.WG && j == C.TIME_UNSET) {
            an(true);
        }
        nr();
    }

    @Override // android.view.View, com.applovin.exoplayer2.ui.k
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!this.WG || z) {
            return;
        }
        an(true);
    }

    public void setKeyCountIncrement(int i) {
        com.applovin.exoplayer2.l.a.checkArgument(i > 0);
        this.Wz = i;
        this.WA = C.TIME_UNSET;
    }

    public void setKeyTimeIncrement(long j) {
        com.applovin.exoplayer2.l.a.checkArgument(j > 0);
        this.Wz = -1;
        this.WA = j;
    }

    public void setPlayedAdMarkerColor(@ColorInt int i) {
        this.Wi.setColor(i);
        invalidate(this.Wa);
    }

    public void setPlayedColor(@ColorInt int i) {
        this.We.setColor(i);
        invalidate(this.Wa);
    }

    @Override // com.applovin.exoplayer2.ui.k
    public void setPosition(long j) {
        if (this.uc == j) {
            return;
        }
        this.uc = j;
        setContentDescription(getProgressText());
        nr();
    }

    public void setScrubberColor(@ColorInt int i) {
        this.Wj.setColor(i);
        invalidate(this.Wa);
    }

    public void setUnplayedColor(@ColorInt int i) {
        this.Wg.setColor(i);
        invalidate(this.Wa);
    }
}
