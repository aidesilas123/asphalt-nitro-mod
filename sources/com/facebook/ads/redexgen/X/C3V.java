package com.facebook.ads.redexgen.X;

import android.R;
import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.androidx.support.v4.view.ViewPager;
import com.facebook.ads.internal.androidx.support.v4.view.ViewPager$DecorView;
import com.facebook.ads.internal.androidx.support.v4.view.ViewPager$SavedState;
import com.facebook.ads.internal.util.parcelable.WrappedParcelable;
import com.gameloft.adsmanager.JavaUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.3V, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public class C3V extends ViewGroup {
    public static byte[] A0u;
    public static String[] A0v = {"Pb5dMBpLoD8olSqqN3M1wt71s6WfJWWx", "mawes8eGWKEfT5kg0DwbKE", "yCX0UAcI", "nBGVAWTalDrx8Q3Q0HTp4hPpqgaJoZ5h", "", "", "gKpLqM1fc4CgqUT7jB7tIrf4xsKdVFyY", "wKHjR3FqXT8StRIGs0zAAfuJmbbhub4H"};
    public static final int[] A0w;
    public static final Interpolator A0x;
    public static final C3U A0y;
    public static final Comparator<C3N> A0z;
    public int A00;
    public AnonymousClass32 A01;
    public float A02;
    public float A03;
    public float A04;
    public float A05;
    public float A06;
    public float A07;
    public int A08;
    public int A09;
    public int A0A;
    public int A0B;
    public int A0C;
    public int A0D;
    public int A0E;
    public int A0F;
    public int A0G;
    public int A0H;
    public int A0I;
    public int A0J;
    public int A0K;
    public int A0L;
    public int A0M;
    public int A0N;
    public int A0O;
    public int A0P;
    public int A0Q;
    public int A0R;
    public Drawable A0S;
    public Parcelable A0T;
    public VelocityTracker A0U;
    public EdgeEffect A0V;
    public EdgeEffect A0W;
    public Scroller A0X;
    public C3Q A0Y;
    public C3Q A0Z;
    public C3R A0a;
    public C3S A0b;
    public ClassLoader A0c;
    public ArrayList<View> A0d;
    public List<ViewPager.OnAdapterChangeListener> A0e;
    public List<C3Q> A0f;
    public boolean A0g;
    public boolean A0h;
    public boolean A0i;
    public boolean A0j;
    public boolean A0k;
    public boolean A0l;
    public boolean A0m;
    public boolean A0n;
    public boolean A0o;
    public boolean A0p;
    public final Rect A0q;
    public final C3N A0r;
    public final Runnable A0s;
    public final ArrayList<C3N> A0t;

    /* JADX WARN: Type inference failed for: r0v13, types: [com.facebook.ads.redexgen.X.3U] */
    static {
        A0C();
        A0w = new int[]{R.attr.layout_gravity};
        A0z = new Comparator<C3N>() { // from class: com.facebook.ads.redexgen.X.3J
            /* JADX INFO: Access modifiers changed from: private */
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final int compare(C3N c3n, C3N c3n2) {
                return c3n.A02 - c3n2.A02;
            }
        };
        A0x = new Interpolator() { // from class: com.facebook.ads.redexgen.X.3K
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f2) {
                float f3 = f2 - 1.0f;
                return (f3 * f3 * f3 * f3 * f3) + 1.0f;
            }
        };
        A0y = new Comparator<View>() { // from class: com.facebook.ads.redexgen.X.3U
            /* JADX INFO: Access modifiers changed from: private */
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
            public final int compare(View view, View view2) {
                C3O c3o = (C3O) view.getLayoutParams();
                C3O c3o2 = (C3O) view2.getLayoutParams();
                return c3o.A05 != c3o2.A05 ? c3o.A05 ? 1 : -1 : c3o.A02 - c3o2.A02;
            }
        };
    }

    public C3V(Context context) {
        super(context);
        this.A0t = new ArrayList<>();
        this.A0r = new C3N();
        this.A0q = new Rect();
        this.A0O = -1;
        this.A0T = null;
        this.A0c = null;
        this.A02 = -3.4028235E38f;
        this.A07 = Float.MAX_VALUE;
        this.A0L = 1;
        this.A08 = -1;
        this.A0i = true;
        this.A0n = false;
        this.A0s = new Runnable() { // from class: com.facebook.ads.redexgen.X.3L
            @Override // java.lang.Runnable
            public final void run() {
                this.A00.setScrollState(0);
                this.A00.A0f();
            }
        };
        this.A0P = 0;
        A0D();
    }

    private final float A00(float f2) {
        return (float) Math.sin((f2 - 0.5f) * 0.47123894f);
    }

    private int A01(int i, float f2, int i2, int i3) {
        if (Math.abs(i3) <= this.A0H || Math.abs(i2) <= this.A0K) {
            i = ((int) (f2 + (i >= this.A00 ? 0.4f : 0.6f))) + i;
        } else if (i2 <= 0) {
            i++;
        }
        if (this.A0t.size() <= 0) {
            return i;
        }
        return Math.max(this.A0t.get(0).A02, Math.min(i, this.A0t.get(r1.size() - 1).A02));
    }

    private Rect A02(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left += viewGroup.getLeft();
            rect.right += viewGroup.getRight();
            rect.top += viewGroup.getTop();
            rect.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect;
    }

    private C3N A03() {
        int clientWidth = getClientWidth();
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f2 = clientWidth > 0 ? this.A0M / clientWidth : 0.0f;
        int i = -1;
        float f3 = 0.0f;
        float f4 = 0.0f;
        boolean z = true;
        C3N c3n = null;
        int i2 = 0;
        while (i2 < this.A0t.size()) {
            C3N c3n2 = this.A0t.get(i2);
            if (!z && c3n2.A02 != i + 1) {
                c3n2 = this.A0r;
                c3n2.A00 = f3 + f4 + f2;
                c3n2.A02 = i + 1;
                c3n2.A01 = this.A01.A04(c3n2.A02);
                i2--;
            }
            f3 = c3n2.A00;
            float f5 = c3n2.A01 + f3 + f2;
            if (!z) {
                String[] strArr = A0v;
                if (strArr[4].length() != strArr[5].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0v;
                strArr2[3] = "VrUwTTzuyHD2SkMMCenWDHvarMqbXCCI";
                strArr2[6] = "LX2NnyEsDXWEx3dFbPH8p7fzI1U1dTZ8";
                if (scrollX < f3) {
                    return c3n;
                }
            }
            if (scrollX >= f5) {
                int size = this.A0t.size() - 1;
                String[] strArr3 = A0v;
                if (strArr3[3].charAt(15) != strArr3[6].charAt(15)) {
                    A0v[2] = "sbP3P6ChvdnfvWI";
                    if (i2 != size) {
                        z = false;
                        i = c3n2.A02;
                        f4 = c3n2.A01;
                        c3n = c3n2;
                        i2++;
                    }
                } else {
                    A0v[1] = "kvGf4Zg53U8bz7GLeUNnCLzy4o";
                    if (i2 != size) {
                        z = false;
                        i = c3n2.A02;
                        f4 = c3n2.A01;
                        c3n = c3n2;
                        i2++;
                    }
                }
            }
            return c3n2;
        }
        return c3n;
    }

    private final C3N A04(int i) {
        for (int i2 = 0; i2 < this.A0t.size(); i2++) {
            C3N c3n = this.A0t.get(i2);
            if (c3n.A02 == i) {
                return c3n;
            }
        }
        return null;
    }

    private final C3N A05(int i, int i2) {
        C3N c3n = new C3N();
        c3n.A02 = i;
        c3n.A03 = this.A01.A08(this, i);
        c3n.A01 = this.A01.A04(i);
        if (i2 < 0 || i2 >= this.A0t.size()) {
            this.A0t.add(c3n);
        } else {
            this.A0t.add(i2, c3n);
        }
        return c3n;
    }

    private final C3N A06(View view) {
        while (true) {
            Object parent = view.getParent();
            if (parent == this) {
                return A07(view);
            }
            if (parent == null || !(parent instanceof View)) {
                return null;
            }
            view = (View) parent;
        }
    }

    private final C3N A07(View view) {
        for (int i = 0; i < this.A0t.size(); i++) {
            C3N c3n = this.A0t.get(i);
            if (this.A01.A0C(view, c3n.A03)) {
                return c3n;
            }
        }
        String[] strArr = A0v;
        if (strArr[4].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        A0v[1] = "T6ty";
        return null;
    }

    public static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0u, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 104);
        }
        return new String(bArrCopyOfRange);
    }

    private void A09() {
        this.A0k = false;
        this.A0m = false;
        VelocityTracker velocityTracker = this.A0U;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            String[] strArr = A0v;
            if (strArr[7].charAt(10) != strArr[0].charAt(10)) {
                throw new RuntimeException();
            }
            A0v[1] = "yoRarqzFlsm2scdQtgnfRphmjo";
            this.A0U = null;
        }
    }

    private void A0A() {
        int i = 0;
        while (i < getChildCount()) {
            if (!((C3O) getChildAt(i).getLayoutParams()).A05) {
                removeViewAt(i);
                i--;
            }
            i++;
        }
    }

    private void A0B() {
        if (this.A0F != 0) {
            ArrayList<View> arrayList = this.A0d;
            if (arrayList == null) {
                this.A0d = new ArrayList<>();
            } else {
                arrayList.clear();
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.A0d.add(getChildAt(i));
            }
            Collections.sort(this.A0d, A0y);
        }
    }

    public static void A0C() {
        A0u = new byte[]{-99, -70, -69, -99, -62, -14, 3, 9, 7, Ascii.DC4, -62, 5, Ascii.SO, 3, Ascii.NAK, Ascii.NAK, -36, -62, -48, 0, 17, Ascii.ETB, Ascii.NAK, 34, -48, Ascii.EM, Ascii.DC4, -22, -48, -34, Ascii.SO, 48, 45, 32, 42, 35, 43, Ascii.US, 50, 39, 33, -34, Ascii.US, 34, Ascii.US, 46, 50, 35, 48, -8, -34, -30, 54, 49, 49, -30, 53, 47, 35, 46, 46, -3, -30, 38, 39, 40, 35, 55, 46, 54, 43, 48, 41, -30, 54, 49, -30, -66, -78, -8, 1, 7, 0, -10, -52, -78, -69, -39, -26, -26, -25, -20, -104, -39, -36, -36, -104, -24, -39, -33, -35, -22, -104, -36, -35, -37, -25, -22, -104, -18, -31, -35, -17, -104, -36, -19, -22, -31, -26, -33, -104, -28, -39, -15, -25, -19, -20, -10, 9, Ascii.NAK, Ascii.EM, 9, Ascii.ETB, Ascii.CAN, 9, 8, -60, 19, 10, 10, Ascii.ETB, 7, Ascii.SYN, 9, 9, Ascii.DC2, -60, Ascii.DC4, 5, Ascii.VT, 9, -60, Ascii.DLE, Ascii.CR, 17, Ascii.CR, Ascii.CAN, -60, -10, 10, 7, -62, 3, Ascii.DC2, Ascii.DC2, Ascii.SO, Ascii.VT, 5, 3, Ascii.SYN, Ascii.VT, 17, Ascii.DLE, -55, Ascii.NAK, -62, -14, 3, 9, 7, Ascii.DC4, -29, 6, 3, Ascii.DC2, Ascii.SYN, 7, Ascii.DC4, -62, 5, 10, 3, Ascii.DLE, 9, 7, 6, -62, Ascii.SYN, 10, 7, -62, 3, 6, 3, Ascii.DC2, Ascii.SYN, 7, Ascii.DC4, -55, Ascii.NAK, -62, 5, 17, Ascii.DLE, Ascii.SYN, 7, Ascii.DLE, Ascii.SYN, Ascii.NAK, -62, Ascii.EM, Ascii.VT, Ascii.SYN, 10, 17, Ascii.ETB, Ascii.SYN, -62, 5, 3, Ascii.SO, Ascii.SO, Ascii.VT, Ascii.DLE, 9, -62, -14, 3, 9, 7, Ascii.DC4, -29, 6, 3, Ascii.DC2, Ascii.SYN, 7, Ascii.DC4, -59, Ascii.DLE, 17, Ascii.SYN, Ascii.VT, 8, Ascii.ESC, -26, 3, Ascii.SYN, 3, -11, 7, Ascii.SYN, -27, 10, 3, Ascii.DLE, 9, 7, 6, -61, -62, -25, Ascii.SUB, Ascii.DC2, 7, 5, Ascii.SYN, 7, 6, -62, 3, 6, 3, Ascii.DC2, Ascii.SYN, 7, Ascii.DC4, -62, Ascii.VT, Ascii.SYN, 7, Ascii.SI, -62, 5, 17, Ascii.ETB, Ascii.DLE, Ascii.SYN, -36, -62, -19, 0, -4, Ascii.SO, -25, -8, -2, -4, 9, Ascii.EM, 42, 42, 39, 47, Ascii.VT, Ascii.ESC, 42, 39, 36, 36, -40, 44, 42, 33, Ascii.GS, Ascii.FS, -40, 44, 39, -40, Ascii.RS, 33, 38, Ascii.FS, -40, Ascii.RS, 39, Ascii.ESC, 45, 43, -40, Ascii.SUB, Ascii.EM, 43, Ascii.GS, Ascii.FS, -40, 39, 38, -40, 38, 39, 38, -27, Ascii.ESC, 32, 33, 36, Ascii.FS, -40, Ascii.ESC, 45, 42, 42, Ascii.GS, 38, 44, -40, Ascii.RS, 39, Ascii.ESC, 45, 43, Ascii.GS, Ascii.FS, -40, 46, 33, Ascii.GS, 47, -40, 76, 75, Ascii.RS, 65, 62, 77, 81, 66, 79, 32, 69, 62, 75, 68, 66, 65, 19, Ascii.DC2, -12, 5, Ascii.VT, 9, -9, 7, Ascii.SYN, 19, Ascii.DLE, Ascii.DLE, 9, 8, -60, 8, Ascii.CR, 8, -60, Ascii.DC2, 19, Ascii.CAN, -60, 7, 5, Ascii.DLE, Ascii.DLE, -60, Ascii.ETB, Ascii.EM, Ascii.DC4, 9, Ascii.SYN, 7, Ascii.DLE, 5, Ascii.ETB, Ascii.ETB, -60, Ascii.CR, 17, Ascii.DC4, Ascii.DLE, 9, 17, 9, Ascii.DC2, Ascii.CAN, 5, Ascii.CAN, Ascii.CR, 19, Ascii.DC2, 85, 83, 66, 79, 84, 71, 80, 83, 78, 49, 66, 72, 70};
    }

    private final void A0D() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.A0X = new Scroller(context, A0x);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.A0R = viewConfiguration.getScaledPagingTouchSlop();
        this.A0K = (int) (400.0f * f2);
        this.A0J = viewConfiguration.getScaledMaximumFlingVelocity();
        this.A0V = new EdgeEffect(context);
        this.A0W = new EdgeEffect(context);
        this.A0H = (int) (25.0f * f2);
        this.A0C = (int) (2.0f * f2);
        this.A0E = (int) (16.0f * f2);
        C3H.A0B(this, new ZN(this));
        if (C3H.A00(this) == 0) {
            C3H.A09(this, 1);
        }
        C3H.A0C(this, new ZO(this));
    }

    private void A0E(int i) {
        C3Q c3q = this.A0Z;
        List<C3Q> list = this.A0f;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.A0f.get(i2);
            }
        }
        C3Q c3q2 = this.A0Y;
    }

    private void A0F(int i) {
        C3Q c3q = this.A0Z;
        List<C3Q> list = this.A0f;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                this.A0f.get(i2);
            }
        }
        C3Q c3q2 = this.A0Y;
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x013a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void A0G(int r16) {
        /*
            Method dump skipped, instruction units count: 944
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3V.A0G(int):void");
    }

    private void A0H(int i, float f2, int i2) {
        C3Q c3q = this.A0Z;
        List<C3Q> list = this.A0f;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                this.A0f.get(i3);
            }
        }
        C3Q c3q2 = this.A0Y;
    }

    private final void A0I(int i, float f2, int i2) {
        int measuredWidth;
        if (this.A0D > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            if (A0v[1].length() == 12) {
                throw new RuntimeException();
            }
            String[] strArr = A0v;
            strArr[3] = "hSwONVQ9BwzgmNPK4tziO3X6uj4eQvsQ";
            strArr[6] = "gKhZoL4mhYlFRC9fFMXnjqdiW6EOuKfZ";
            int width = getWidth();
            int childCount = getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                C3O c3o = (C3O) childAt.getLayoutParams();
                if (c3o.A05) {
                    switch (c3o.A04 & 7) {
                        case 1:
                            measuredWidth = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            break;
                        case 2:
                        case 4:
                        default:
                            measuredWidth = paddingLeft;
                            break;
                        case 3:
                            measuredWidth = paddingLeft;
                            paddingLeft += childAt.getWidth();
                            break;
                        case 5:
                            measuredWidth = (width - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                            break;
                    }
                    int left = (measuredWidth + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                }
            }
        }
        A0H(i, f2, i2);
        if (this.A0a != null) {
            getScrollX();
            int childCount2 = getChildCount();
            for (int i4 = 0; i4 < childCount2; i4++) {
                View childAt2 = getChildAt(i4);
                if (!((C3O) childAt2.getLayoutParams()).A05) {
                    childAt2.getLeft();
                    getClientWidth();
                    throw new NullPointerException(A08(450, 13, 121));
                }
            }
        }
        this.A0g = true;
    }

    private final void A0J(int i, int i2, int i3) {
        int scrollX;
        int iAbs;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        Scroller scroller = this.A0X;
        if ((scroller == null || scroller.isFinished()) ? false : true) {
            scrollX = this.A0l ? this.A0X.getCurrX() : this.A0X.getStartX();
            this.A0X.abortAnimation();
            setScrollingCacheEnabled(false);
        } else {
            scrollX = getScrollX();
        }
        int scrollY = getScrollY();
        int i4 = i - scrollX;
        int i5 = i2 - scrollY;
        if (i4 == 0 && i5 == 0) {
            A0R(false);
            A0f();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i6 = clientWidth / 2;
        float fA00 = i6 + (i6 * A00(Math.min(1.0f, (Math.abs(i4) * 1.0f) / clientWidth)));
        int iAbs2 = Math.abs(i3);
        if (iAbs2 > 0) {
            float f2 = fA00 / iAbs2;
            if (A0v[1].length() == 12) {
                throw new RuntimeException();
            }
            String[] strArr = A0v;
            strArr[4] = "";
            strArr[5] = "";
            iAbs = Math.round(Math.abs(f2) * 1000.0f) * 4;
        } else {
            iAbs = (int) ((1.0f + (Math.abs(i4) / (this.A0M + (clientWidth * this.A01.A04(this.A00))))) * 100.0f);
        }
        int iMin = Math.min(iAbs, 600);
        this.A0l = false;
        this.A0X.startScroll(scrollX, scrollY, i4, i5, iMin);
        C3H.A07(this);
    }

    private void A0K(int i, int i2, int i3, int i4) {
        if (i2 > 0) {
            ArrayList<C3N> arrayList = this.A0t;
            String[] strArr = A0v;
            if (strArr[7].charAt(10) != strArr[0].charAt(10)) {
                throw new RuntimeException();
            }
            A0v[1] = "xS6wP2kv8Ukjp2mlI4OFB7EI";
            if (!arrayList.isEmpty()) {
                boolean zIsFinished = this.A0X.isFinished();
                if (A0v[1].length() == 12) {
                    throw new RuntimeException();
                }
                A0v[2] = "M3IvNYMGgF0qb538wmgDMK0nNkgqAt";
                if (!zIsFinished) {
                    this.A0X.setFinalX(getCurrentItem() * getClientWidth());
                    return;
                } else {
                    scrollTo((int) ((((i - getPaddingLeft()) - getPaddingRight()) + i3) * (getScrollX() / (((i2 - getPaddingLeft()) - getPaddingRight()) + i4))), getScrollY());
                    return;
                }
            }
        }
        C3N c3nA04 = A04(this.A00);
        int paddingLeft = (int) (((i - getPaddingLeft()) - getPaddingRight()) * (c3nA04 != null ? Math.min(c3nA04.A00, this.A07) : 0.0f));
        if (paddingLeft != getScrollX()) {
            A0R(false);
            scrollTo(paddingLeft, getScrollY());
        }
    }

    private final void A0L(int i, boolean z) {
        this.A0o = false;
        A0N(i, z, false);
    }

    private void A0M(int i, boolean z, int i2, boolean z2) {
        C3N c3nA04 = A04(i);
        int clientWidth = c3nA04 != null ? (int) (getClientWidth() * Math.max(this.A02, Math.min(c3nA04.A00, this.A07))) : 0;
        if (A0v[2].length() == 14) {
            throw new RuntimeException();
        }
        String[] strArr = A0v;
        strArr[3] = "qWyJthdIKprwmupmlWytZXkwKuTz6nwm";
        strArr[6] = "fDmSwMvEmt93O90vXMKXMmFP8biUMO95";
        if (z) {
            A0J(clientWidth, 0, i2);
            if (z2) {
                A0E(i);
                return;
            }
            return;
        }
        if (z2) {
            A0E(i);
        }
        A0R(false);
        scrollTo(clientWidth, 0);
        A0Z(clientWidth);
    }

    private final void A0N(int i, boolean z, boolean z2) {
        A0O(i, z, z2, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void A0O(int r7, boolean r8, boolean r9, int r10) {
        /*
            r6 = this;
            com.facebook.ads.redexgen.X.32 r0 = r6.A01
            r2 = 0
            if (r0 == 0) goto Lb
            int r0 = r0.A05()
            if (r0 > 0) goto Lf
        Lb:
            r6.setScrollingCacheEnabled(r2)
            return
        Lf:
            if (r9 != 0) goto L21
            int r0 = r6.A00
            if (r0 != r7) goto L21
            java.util.ArrayList<com.facebook.ads.redexgen.X.3N> r0 = r6.A0t
            int r0 = r0.size()
            if (r0 == 0) goto L21
            r6.setScrollingCacheEnabled(r2)
            return
        L21:
            r4 = 1
            if (r7 >= 0) goto L48
            r7 = 0
        L25:
            int r1 = r6.A0L
            int r5 = r6.A00
            int r0 = r5 + r1
            if (r7 > r0) goto L67
            int r5 = r5 - r1
            java.lang.String[] r3 = com.facebook.ads.redexgen.X.C3V.A0v
            r0 = 7
            r1 = r3[r0]
            r0 = 0
            r3 = r3[r0]
            r0 = 10
            char r1 = r1.charAt(r0)
            char r0 = r3.charAt(r0)
            if (r1 == r0) goto L59
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L48:
            com.facebook.ads.redexgen.X.32 r0 = r6.A01
            int r0 = r0.A05()
            if (r7 < r0) goto L25
            com.facebook.ads.redexgen.X.32 r0 = r6.A01
            int r0 = r0.A05()
            int r7 = r0 + (-1)
            goto L25
        L59:
            java.lang.String[] r3 = com.facebook.ads.redexgen.X.C3V.A0v
            java.lang.String r1 = "HdD8kb8A1NTv0LjA3C8pNf8B8Uhf5Rjf"
            r0 = 3
            r3[r0] = r1
            java.lang.String r1 = "hEPxY7plOgAB5ujpSYVhyDABeqG0KedF"
            r0 = 6
            r3[r0] = r1
            if (r7 >= r5) goto L7d
        L67:
            r1 = 0
        L68:
            java.util.ArrayList<com.facebook.ads.redexgen.X.3N> r0 = r6.A0t
            int r0 = r0.size()
            if (r1 >= r0) goto L7d
            java.util.ArrayList<com.facebook.ads.redexgen.X.3N> r0 = r6.A0t
            java.lang.Object r0 = r0.get(r1)
            com.facebook.ads.redexgen.X.3N r0 = (com.facebook.ads.redexgen.X.C3N) r0
            r0.A04 = r4
            int r1 = r1 + 1
            goto L68
        L7d:
            int r0 = r6.A00
            if (r0 == r7) goto L82
            r2 = 1
        L82:
            boolean r0 = r6.A0i
            if (r0 == 0) goto L91
            r6.A00 = r7
            if (r2 == 0) goto L8d
            r6.A0E(r7)
        L8d:
            r6.requestLayout()
        L90:
            return
        L91:
            r6.A0G(r7)
            r6.A0M(r7, r8, r10, r2)
            goto L90
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3V.A0O(int, boolean, boolean, int):void");
    }

    private void A0P(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.A08) {
            int i = actionIndex == 0 ? 1 : 0;
            this.A05 = motionEvent.getX(i);
            String[] strArr = A0v;
            if (strArr[4].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0v;
            strArr2[4] = "";
            strArr2[5] = "";
            this.A08 = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.A0U;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x018b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void A0Q(com.facebook.ads.redexgen.X.C3N r13, int r14, com.facebook.ads.redexgen.X.C3N r15) {
        /*
            Method dump skipped, instruction units count: 421
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3V.A0Q(com.facebook.ads.redexgen.X.3N, int, com.facebook.ads.redexgen.X.3N):void");
    }

    private void A0R(boolean z) {
        boolean z2 = this.A0P == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            if (!this.A0X.isFinished()) {
                this.A0X.abortAnimation();
                if (A0v[1].length() == 12) {
                    throw new RuntimeException();
                }
                A0v[1] = "La7";
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.A0X.getCurrX();
                int currY = this.A0X.getCurrY();
                if (scrollX != currX || scrollY != currY) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        A0Z(currX);
                    }
                }
            }
        }
        this.A0o = false;
        for (int i = 0; i < this.A0t.size(); i++) {
            C3N c3n = this.A0t.get(i);
            if (c3n.A04) {
                z2 = true;
                c3n.A04 = false;
            }
        }
        if (z2) {
            if (z) {
                C3H.A0D(this, this.A0s);
            } else {
                this.A0s.run();
            }
        }
    }

    private void A0S(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).setLayerType(z ? this.A0N : 0, null);
        }
    }

    private void A0T(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    private boolean A0U() {
        this.A08 = -1;
        A09();
        this.A0V.onRelease();
        this.A0W.onRelease();
        return this.A0V.isFinished() || this.A0W.isFinished();
    }

    private final boolean A0V() {
        int i = this.A00;
        if (i <= 0) {
            return false;
        }
        A0L(i - 1, true);
        return true;
    }

    private final boolean A0W() {
        AnonymousClass32 anonymousClass32 = this.A01;
        if (anonymousClass32 != null && this.A00 < anonymousClass32.A05() - 1) {
            A0L(this.A00 + 1, true);
            return true;
        }
        if (A0v[2].length() == 14) {
            throw new RuntimeException();
        }
        String[] strArr = A0v;
        strArr[7] = "AXA5EDUbYu85ntxkUdYhY3hIIlQIUQar";
        strArr[0] = "7HhQN1X94o8BEMOAnE9vO9t08zapWTmy";
        return false;
    }

    private boolean A0X(float f2) {
        boolean z = false;
        float f3 = this.A05 - f2;
        this.A05 = f2;
        float scrollX = getScrollX() + f3;
        int clientWidth = getClientWidth();
        float f4 = clientWidth * this.A02;
        float f5 = clientWidth * this.A07;
        boolean z2 = true;
        boolean z3 = true;
        C3N c3n = this.A0t.get(0);
        C3N c3n2 = this.A0t.get(r1.size() - 1);
        if (c3n.A02 != 0) {
            z2 = false;
            float f6 = c3n.A00;
            if (A0v[1].length() == 12) {
                throw new RuntimeException();
            }
            A0v[1] = "a";
            f4 = f6 * clientWidth;
        }
        if (c3n2.A02 != this.A01.A05() - 1) {
            z3 = false;
            f5 = c3n2.A00 * clientWidth;
        }
        if (scrollX < f4) {
            if (z2) {
                this.A0V.onPull(Math.abs(f4 - scrollX) / clientWidth);
                z = true;
            }
            scrollX = f4;
        } else if (scrollX > f5) {
            if (z3) {
                EdgeEffect edgeEffect = this.A0W;
                float fAbs = Math.abs(scrollX - f5);
                float f7 = clientWidth;
                String[] strArr = A0v;
                if (strArr[4].length() != strArr[5].length()) {
                    edgeEffect.onPull(fAbs / f7);
                    z = true;
                } else {
                    A0v[1] = "TwKB2lBmR";
                    edgeEffect.onPull(fAbs / f7);
                    z = true;
                }
            }
            scrollX = f5;
        }
        this.A05 += scrollX - ((int) scrollX);
        scrollTo((int) scrollX, getScrollY());
        A0Z((int) scrollX);
        return z;
    }

    private final boolean A0Y(float f2, float f3) {
        if (f2 >= this.A0I || f3 <= 0.0f) {
            if (f2 > getWidth() - this.A0I) {
                if (A0v[2].length() == 14) {
                    throw new RuntimeException();
                }
                String[] strArr = A0v;
                strArr[3] = "LoLbwLodEQ0RZhoADzk4YxqyeMxGbPNe";
                strArr[6] = "uXFtlpuRRgamX4n9Zkql1HjWorEkSQ7b";
                if (f3 < 0.0f) {
                }
            }
            return false;
        }
        return true;
    }

    private boolean A0Z(int i) {
        int size = this.A0t.size();
        String strA08 = A08(397, 53, 60);
        if (size != 0) {
            C3N c3nA03 = A03();
            int clientWidth = getClientWidth();
            int i2 = this.A0M;
            int i3 = c3nA03.A02;
            float f2 = ((i / clientWidth) - c3nA03.A00) / (c3nA03.A01 + (i2 / clientWidth));
            this.A0g = false;
            A0I(i3, f2, (int) ((clientWidth + i2) * f2));
            if (this.A0g) {
                return true;
            }
            throw new IllegalStateException(strA08);
        }
        if (this.A0i) {
            return false;
        }
        this.A0g = false;
        A0I(0, 0.0f, 0);
        String[] strArr = A0v;
        if (strArr[4].length() != strArr[5].length()) {
            throw new RuntimeException();
        }
        A0v[2] = "c3ramapljB1reDSufYjA";
        if (this.A0g) {
            return false;
        }
        throw new IllegalStateException(strA08);
    }

    private final boolean A0a(int i) {
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        } else if (viewFindFocus != null) {
            boolean z = false;
            ViewParent parent = viewFindFocus.getParent();
            while (true) {
                if (!(parent instanceof ViewGroup)) {
                    break;
                }
                if (parent == this) {
                    z = true;
                    break;
                }
                parent = parent.getParent();
            }
            if (!z) {
                StringBuilder sb = new StringBuilder();
                sb.append(viewFindFocus.getClass().getSimpleName());
                for (ViewParent parent2 = viewFindFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                    sb.append(A08(0, 4, 21)).append(parent2.getClass().getSimpleName());
                }
                Log.e(A08(JavaUtils.Constants.NATIVE_HEIGHT_DP_300, 9, 47), A08(309, 72, 80) + sb.toString());
                viewFindFocus = null;
            }
        }
        boolean zA0V = false;
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i);
        if (viewFindNextFocus == null || viewFindNextFocus == viewFindFocus) {
            if (i == 17 || i == 1) {
                zA0V = A0V();
            } else if (i == 66 || i == 2) {
                zA0V = A0W();
            }
        } else if (i == 17) {
            zA0V = (viewFindFocus == null || A02(this.A0q, viewFindNextFocus).left < A02(this.A0q, viewFindFocus).left) ? viewFindNextFocus.requestFocus() : A0V();
        } else if (i == 66) {
            zA0V = (viewFindFocus == null || A02(this.A0q, viewFindNextFocus).left > A02(this.A0q, viewFindFocus).left) ? viewFindNextFocus.requestFocus() : A0W();
        }
        if (zA0V) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
        }
        return zA0V;
    }

    private final boolean A0b(KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        switch (keyEvent.getKeyCode()) {
            case 21:
                return keyEvent.hasModifiers(2) ? A0V() : A0a(17);
            case 22:
                boolean zHasModifiers = keyEvent.hasModifiers(2);
                String[] strArr = A0v;
                if (strArr[4].length() != strArr[5].length()) {
                    throw new RuntimeException();
                }
                A0v[1] = "lC1XoLB2bpdljamdt6Vm";
                return zHasModifiers ? A0W() : A0a(66);
            case 61:
                if (keyEvent.hasNoModifiers()) {
                    return A0a(2);
                }
                if (keyEvent.hasModifiers(1)) {
                    return A0a(1);
                }
                return false;
            default:
                return false;
        }
    }

    public static boolean A0c(View view) {
        return view.getClass().getAnnotation(ViewPager$DecorView.class) != null;
    }

    private final boolean A0d(View view, boolean z, int i, int i2, int i3) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (i2 + scrollX >= childAt.getLeft() && i2 + scrollX < childAt.getRight() && i3 + scrollY >= childAt.getTop() && i3 + scrollY < childAt.getBottom()) {
                    int left = (i2 + scrollX) - childAt.getLeft();
                    int i4 = i3 + scrollY;
                    if (A0v[1].length() == 12) {
                        throw new RuntimeException();
                    }
                    String[] strArr = A0v;
                    strArr[4] = "";
                    strArr[5] = "";
                    if (A0d(childAt, true, i, left, i4 - childAt.getTop())) {
                        return true;
                    }
                }
            }
        }
        return z && view.canScrollHorizontally(-i);
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.A0p != z) {
            this.A0p = z;
        }
    }

    public final void A0e() {
        int iA05 = this.A01.A05();
        this.A0G = iA05;
        boolean z = this.A0t.size() < (this.A0L * 2) + 1 && this.A0t.size() < iA05;
        int iMax = this.A00;
        boolean z2 = false;
        int i = 0;
        while (i < this.A0t.size()) {
            C3N c3n = this.A0t.get(i);
            int iA06 = this.A01.A06(c3n.A03);
            if (iA06 != -1) {
                if (iA06 == -2) {
                    this.A0t.remove(i);
                    i--;
                    if (!z2) {
                        z2 = true;
                    }
                    this.A01.A0B(this, c3n.A02, c3n.A03);
                    z = true;
                    if (this.A00 == c3n.A02) {
                        iMax = Math.max(0, Math.min(this.A00, iA05 - 1));
                        z = true;
                    }
                } else if (c3n.A02 != iA06) {
                    if (c3n.A02 == this.A00) {
                        iMax = iA06;
                    }
                    c3n.A02 = iA06;
                    z = true;
                }
            }
            i++;
        }
        Collections.sort(this.A0t, A0z);
        if (z) {
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                C3O c3o = (C3O) getChildAt(i2).getLayoutParams();
                if (!c3o.A05) {
                    c3o.A00 = 0.0f;
                }
            }
            A0N(iMax, false, true);
            if (A0v[2].length() == 14) {
                throw new RuntimeException();
            }
            A0v[2] = "iBz2AIJ6C";
            requestLayout();
        }
    }

    public final void A0f() {
        A0G(this.A00);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList<View> arrayList, int i, int i2) {
        C3N c3nA07;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (c3nA07 = A07(childAt)) != null && c3nA07.A02 == this.A00) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if (((i2 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) || arrayList == null) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addTouchables(ArrayList<View> arrayList) {
        C3N c3nA07;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (c3nA07 = A07(childAt)) != null && c3nA07.A02 == this.A00) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        C3O c3o = (C3O) layoutParams;
        c3o.A05 |= A0c(view);
        if (!this.A0j) {
            super.addView(view, i, layoutParams);
            return;
        }
        if (c3o != null && c3o.A05) {
            throw new IllegalStateException(A08(86, 41, 16));
        }
        c3o.A03 = true;
        if (A0v[2].length() == 14) {
            throw new RuntimeException();
        }
        A0v[1] = "XL6oa3uLuKs2IOpHyjfCXdHiJnTalh";
        addViewInLayout(view, i, layoutParams);
    }

    @Override // android.view.View
    public final boolean canScrollHorizontally(int i) {
        if (this.A01 == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        return i < 0 ? scrollX > ((int) (((float) clientWidth) * this.A02)) : i > 0 && scrollX < ((int) (((float) clientWidth) * this.A07));
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C3O) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public final void computeScroll() {
        this.A0l = true;
        if (this.A0X.isFinished() || !this.A0X.computeScrollOffset()) {
            A0R(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.A0X.getCurrX();
        int currY = this.A0X.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!A0Z(currX)) {
                this.A0X.abortAnimation();
                scrollTo(0, currY);
            }
        }
        C3H.A07(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || A0b(keyEvent);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        C3N c3nA07;
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (c3nA07 = A07(childAt)) != null) {
                int i2 = c3nA07.A02;
                String[] strArr = A0v;
                if (strArr[7].charAt(10) != strArr[0].charAt(10)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0v;
                strArr2[4] = "";
                strArr2[5] = "";
                if (i2 == this.A00 && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0094  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void draw(android.graphics.Canvas r8) {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3V.draw(android.graphics.Canvas):void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.A0S;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C3O();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C3O(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public AnonymousClass32 getAdapter() {
        return this.A01;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        return ((C3O) this.A0d.get(this.A0F == 2 ? (i - 1) - i2 : i2).getLayoutParams()).A01;
    }

    public int getCurrentItem() {
        return this.A00;
    }

    public int getOffscreenPageLimit() {
        return this.A0L;
    }

    public int getPageMargin() {
        return this.A0M;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.A0i = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.A0s);
        Scroller scroller = this.A0X;
        if (scroller != null && !scroller.isFinished()) {
            this.A0X.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        float f2;
        super.onDraw(canvas);
        if (this.A0M <= 0 || this.A0S == null || this.A0t.size() <= 0 || this.A01 == null) {
            return;
        }
        int scrollX = getScrollX();
        int width = getWidth();
        float f3 = this.A0M / width;
        int i = 0;
        C3N c3n = this.A0t.get(0);
        float f4 = c3n.A00;
        int size = this.A0t.size();
        int i2 = this.A0t.get(size - 1).A02;
        loop0: for (int i3 = c3n.A02; i3 < i2; i3++) {
            while (i3 > c3n.A02 && i < size) {
                i++;
                C3N c3n2 = this.A0t.get(i);
                String[] strArr = A0v;
                if (strArr[7].charAt(10) != strArr[0].charAt(10)) {
                    break loop0;
                }
                A0v[2] = "Qpfq";
                c3n = c3n2;
            }
            if (i3 == c3n.A02) {
                f2 = (c3n.A00 + c3n.A01) * width;
                f4 = c3n.A00 + c3n.A01 + f3;
            } else {
                float fA04 = this.A01.A04(i3);
                f2 = (f4 + fA04) * width;
                f4 += fA04 + f3;
            }
            if (this.A0M + f2 > scrollX) {
                this.A0S.setBounds(Math.round(f2), this.A0Q, Math.round(this.A0M + f2), this.A09);
                Drawable drawable = this.A0S;
                String[] strArr2 = A0v;
                if (strArr2[7].charAt(10) != strArr2[0].charAt(10)) {
                    A0v[1] = "";
                    drawable.draw(canvas);
                } else {
                    String[] strArr3 = A0v;
                    strArr3[4] = "";
                    strArr3[5] = "";
                    drawable.draw(canvas);
                }
            }
            int i4 = scrollX + width;
            if (A0v[1].length() == 12) {
                throw new RuntimeException();
            }
            A0v[1] = "DrXdt";
            if (f2 > i4) {
                return;
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        float f2;
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            A0U();
            String[] strArr = A0v;
            if (strArr[4].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            A0v[2] = "iW5W";
            return false;
        }
        if (action != 0) {
            if (this.A0k) {
                return true;
            }
            if (this.A0m) {
                return false;
            }
        }
        switch (action) {
            case 0:
                float x = motionEvent.getX();
                this.A03 = x;
                this.A05 = x;
                float y = motionEvent.getY();
                this.A04 = y;
                this.A06 = y;
                this.A08 = motionEvent.getPointerId(0);
                this.A0m = false;
                this.A0l = true;
                this.A0X.computeScrollOffset();
                if (this.A0P == 2 && Math.abs(this.A0X.getFinalX() - this.A0X.getCurrX()) > this.A0C) {
                    this.A0X.abortAnimation();
                    this.A0o = false;
                    A0f();
                    this.A0k = true;
                    A0T(true);
                    setScrollState(1);
                } else {
                    A0R(false);
                    this.A0k = false;
                }
                break;
            case 2:
                int i = this.A08;
                if (i != -1) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(i);
                    float x2 = motionEvent.getX(iFindPointerIndex);
                    float f3 = x2 - this.A05;
                    float fAbs = Math.abs(f3);
                    float y2 = motionEvent.getY(iFindPointerIndex);
                    float fAbs2 = Math.abs(y2 - this.A04);
                    if (f3 != 0.0f && !A0Y(this.A05, f3) && A0d(this, false, (int) f3, (int) x2, (int) y2)) {
                        this.A05 = x2;
                        this.A06 = y2;
                        this.A0m = true;
                        return false;
                    }
                    int i2 = this.A0R;
                    if (fAbs > i2 && 0.5f * fAbs > fAbs2) {
                        this.A0k = true;
                        A0T(true);
                        setScrollState(1);
                        if (f3 > 0.0f) {
                            float f4 = this.A03;
                            int i3 = this.A0R;
                            String[] strArr2 = A0v;
                            if (strArr2[7].charAt(10) != strArr2[0].charAt(10)) {
                                f2 = f4 + i3;
                            } else {
                                String[] strArr3 = A0v;
                                strArr3[7] = "WpQimEPBWZ8vG05HKhTxshBMY3NNEur0";
                                strArr3[0] = "BEtp4ufX6D8x3OZlDxdpMoFh1oKQqP0t";
                                f2 = f4 + i3;
                            }
                        } else {
                            f2 = this.A03 - this.A0R;
                        }
                        this.A05 = f2;
                        this.A06 = y2;
                        setScrollingCacheEnabled(true);
                    } else if (fAbs2 > i2) {
                        this.A0m = true;
                    }
                    if (this.A0k && A0X(x2)) {
                        C3H.A07(this);
                    }
                }
                break;
            case 6:
                A0P(motionEvent);
                break;
        }
        VelocityTracker velocityTracker = this.A0U;
        if (A0v[2].length() == 14) {
            throw new RuntimeException();
        }
        String[] strArr4 = A0v;
        strArr4[3] = "qZEBvpK5WM51NnTYZj9Wv9V85vPNkfCF";
        strArr4[6] = "8DoAZte0LwUXg2aXlHvSBWFBy3vUeqDy";
        if (velocityTracker == null) {
            this.A0U = VelocityTracker.obtain();
        }
        this.A0U.addMovement(motionEvent);
        return this.A0k;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean z2;
        C3N c3nA07;
        int iMax;
        int measuredHeight;
        int childCount = getChildCount();
        int i5 = i3 - i;
        int i6 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int i9 = 8;
            String[] strArr = A0v;
            if (strArr[4].length() == strArr[5].length()) {
                A0v[1] = "";
                if (i8 >= childCount) {
                    int i10 = (i5 - paddingLeft) - paddingRight;
                    int i11 = 0;
                    while (i11 < childCount) {
                        View childAt = getChildAt(i11);
                        if (childAt.getVisibility() != i9) {
                            C3O c3o = (C3O) childAt.getLayoutParams();
                            if (!c3o.A05 && (c3nA07 = A07(childAt)) != null) {
                                int i12 = paddingLeft + ((int) (i10 * c3nA07.A00));
                                if (c3o.A03) {
                                    c3o.A03 = false;
                                    childAt.measure(View.MeasureSpec.makeMeasureSpec((int) (i10 * c3o.A00), 1073741824), View.MeasureSpec.makeMeasureSpec((i6 - paddingTop) - paddingBottom, 1073741824));
                                }
                                int i13 = paddingTop;
                                childAt.layout(i12, i13, childAt.getMeasuredWidth() + i12, childAt.getMeasuredHeight() + i13);
                            }
                        }
                        i11++;
                        i9 = 8;
                    }
                    this.A0Q = paddingTop;
                    this.A09 = i6 - paddingBottom;
                    this.A0D = i7;
                    if (this.A0i) {
                        int i14 = this.A00;
                        z2 = false;
                        String[] strArr2 = A0v;
                        if (strArr2[4].length() != strArr2[5].length()) {
                            throw new RuntimeException();
                        }
                        String[] strArr3 = A0v;
                        strArr3[4] = "";
                        strArr3[5] = "";
                        A0M(i14, false, 0, false);
                    } else {
                        z2 = false;
                    }
                    this.A0i = z2;
                    return;
                }
                View childAt2 = getChildAt(i8);
                if (childAt2.getVisibility() != 8) {
                    C3O c3o2 = (C3O) childAt2.getLayoutParams();
                    if (c3o2.A05) {
                        int i15 = c3o2.A04 & 7;
                        int i16 = c3o2.A04 & 112;
                        switch (i15) {
                            case 1:
                                iMax = Math.max((i5 - childAt2.getMeasuredWidth()) / 2, paddingLeft);
                                break;
                            case 2:
                            case 4:
                            default:
                                iMax = paddingLeft;
                                break;
                            case 3:
                                iMax = paddingLeft;
                                paddingLeft += childAt2.getMeasuredWidth();
                                break;
                            case 5:
                                int i17 = i5 - paddingRight;
                                int measuredWidth = childAt2.getMeasuredWidth();
                                String[] strArr4 = A0v;
                                if (strArr4[7].charAt(10) == strArr4[0].charAt(10)) {
                                    A0v[1] = "51Hkg";
                                    iMax = i17 - measuredWidth;
                                    paddingRight += childAt2.getMeasuredWidth();
                                }
                                break;
                        }
                        switch (i16) {
                            case 16:
                                measuredHeight = Math.max((i6 - childAt2.getMeasuredHeight()) / 2, paddingTop);
                                break;
                            case 48:
                                measuredHeight = paddingTop;
                                paddingTop += childAt2.getMeasuredHeight();
                                break;
                            case 80:
                                measuredHeight = (i6 - paddingBottom) - childAt2.getMeasuredHeight();
                                paddingBottom += childAt2.getMeasuredHeight();
                                break;
                            default:
                                measuredHeight = paddingTop;
                                break;
                        }
                        int i18 = iMax + scrollX;
                        childAt2.layout(i18, measuredHeight, i18 + childAt2.getMeasuredWidth(), childAt2.getMeasuredHeight() + measuredHeight);
                        i7++;
                    } else {
                        continue;
                    }
                }
                i8++;
            }
        }
        throw new RuntimeException();
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        C3O c3o;
        int i3;
        int i4;
        setMeasuredDimension(getDefaultSize(0, i), getDefaultSize(0, i2));
        int measuredWidth = getMeasuredWidth();
        this.A0I = Math.min(measuredWidth / 10, this.A0E);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount) {
                this.A0B = View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
                this.A0A = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
                this.A0j = true;
                A0f();
                this.A0j = false;
                int childCount2 = getChildCount();
                for (int i6 = 0; i6 < childCount2; i6++) {
                    View childAt = getChildAt(i6);
                    if (childAt.getVisibility() != 8 && ((c3o = (C3O) childAt.getLayoutParams()) == null || !c3o.A05)) {
                        float f2 = paddingLeft;
                        String[] strArr = A0v;
                        if (strArr[4].length() == strArr[5].length()) {
                            A0v[1] = "11cm9STM7FlxGR3";
                            childAt.measure(View.MeasureSpec.makeMeasureSpec((int) (f2 * c3o.A00), 1073741824), this.A0A);
                        }
                    }
                }
                return;
            }
            View childAt2 = getChildAt(i5);
            if (childAt2.getVisibility() != 8) {
                C3O c3o2 = (C3O) childAt2.getLayoutParams();
                if (A0v[1].length() == 12) {
                    break;
                }
                String[] strArr2 = A0v;
                strArr2[4] = "";
                strArr2[5] = "";
                if (c3o2 != null && c3o2.A05) {
                    int i7 = c3o2.A04 & 7;
                    int i8 = c3o2.A04 & 112;
                    int i9 = Integer.MIN_VALUE;
                    int i10 = Integer.MIN_VALUE;
                    boolean z = i8 == 48 || i8 == 80;
                    boolean z2 = i7 == 3 || i7 == 5;
                    if (z) {
                        i9 = 1073741824;
                    } else if (z2) {
                        i10 = 1073741824;
                    }
                    if (c3o2.width != -2) {
                        i9 = 1073741824;
                        i3 = c3o2.width != -1 ? c3o2.width : paddingLeft;
                    } else {
                        i3 = paddingLeft;
                    }
                    if (c3o2.height != -2) {
                        i10 = 1073741824;
                        if (c3o2.height != -1) {
                            i4 = c3o2.height;
                            if (A0v[1].length() != 12) {
                                A0v[1] = "VKsSzAx6pk9J5wmYrW5ACp";
                            }
                        } else {
                            i4 = measuredHeight;
                        }
                    } else {
                        i4 = measuredHeight;
                    }
                    childAt2.measure(View.MeasureSpec.makeMeasureSpec(i3, i9), View.MeasureSpec.makeMeasureSpec(i4, i10));
                    if (z) {
                        measuredHeight -= childAt2.getMeasuredHeight();
                    } else if (z2) {
                        paddingLeft -= childAt2.getMeasuredWidth();
                    }
                }
            }
            i5++;
        }
        throw new RuntimeException();
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        int i3;
        C3N c3nA07;
        int childCount = getChildCount();
        if ((i & 2) != 0) {
            i2 = 0;
            i3 = 1;
        } else {
            i2 = childCount - 1;
            i3 = -1;
            childCount = -1;
        }
        while (i2 != childCount) {
            View childAt = getChildAt(i2);
            if (A0v[2].length() == 14) {
                throw new RuntimeException();
            }
            String[] strArr = A0v;
            strArr[3] = "wvs0VrXDMEHK1ZrgMliCmQkmYIqFRPYZ";
            strArr[6] = "yeuyy9yC0QSIfk9tyj8D1No5khczL5F7";
            if (childAt.getVisibility() == 0 && (c3nA07 = A07(childAt)) != null && c3nA07.A02 == this.A00 && childAt.requestFocus(i, rect)) {
                return true;
            }
            i2 += i3;
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof WrappedParcelable)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ClassLoader classLoader = getClass().getClassLoader();
        if (classLoader == null) {
            Context context = getContext();
            String[] strArr = A0v;
            if (strArr[3].charAt(15) == strArr[6].charAt(15)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0v;
            strArr2[7] = "Ly8LvMv3iU8o2fiJAVqvd6K7Aqz3gZKY";
            strArr2[0] = "HcNmsPXina8Ul250FP3kUGj1pgK53N1r";
            classLoader = context.getClassLoader();
        }
        Parcelable parcelableUnwrap = ((WrappedParcelable) parcelable).unwrap(classLoader);
        if (!(parcelableUnwrap instanceof ViewPager$SavedState)) {
            super.onRestoreInstanceState(parcelableUnwrap);
            return;
        }
        ViewPager$SavedState viewPager$SavedState = (ViewPager$SavedState) parcelableUnwrap;
        super.onRestoreInstanceState(viewPager$SavedState.A02());
        if (this.A01 != null) {
            A0N(viewPager$SavedState.A00, false, true);
            return;
        }
        this.A0O = viewPager$SavedState.A00;
        this.A0T = viewPager$SavedState.A01;
        this.A0c = viewPager$SavedState.A02;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        ViewPager$SavedState viewPager$SavedState = new ViewPager$SavedState(super.onSaveInstanceState());
        viewPager$SavedState.A00 = this.A00;
        AnonymousClass32 anonymousClass32 = this.A01;
        if (anonymousClass32 != null) {
            viewPager$SavedState.A01 = anonymousClass32.A07();
        }
        return new WrappedParcelable(viewPager$SavedState);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            int i5 = this.A0M;
            A0K(i, i3, i5, i5);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x010c  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onTouchEvent(android.view.MotionEvent r10) {
        /*
            Method dump skipped, instruction units count: 358
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C3V.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.A0j) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [com.facebook.ads.redexgen.X.3S] */
    public void setAdapter(AnonymousClass32 anonymousClass32) {
        AnonymousClass32 anonymousClass322 = this.A01;
        if (anonymousClass322 != null) {
            anonymousClass322.A0A(null);
            for (int i = 0; i < this.A0t.size(); i++) {
                C3N c3n = this.A0t.get(i);
                this.A01.A0B(this, c3n.A02, c3n.A03);
            }
            this.A0t.clear();
            A0A();
            this.A00 = 0;
            scrollTo(0, 0);
        }
        this.A01 = anonymousClass32;
        this.A0G = 0;
        if (anonymousClass32 != null) {
            if (this.A0b == null) {
                this.A0b = new DataSetObserver() { // from class: com.facebook.ads.redexgen.X.3S
                    @Override // android.database.DataSetObserver
                    public final void onChanged() {
                        this.A00.A0e();
                    }

                    @Override // android.database.DataSetObserver
                    public final void onInvalidated() {
                        this.A00.A0e();
                    }
                };
            }
            this.A01.A0A(this.A0b);
            this.A0o = false;
            boolean z = this.A0i;
            this.A0i = true;
            this.A0G = this.A01.A05();
            if (this.A0O >= 0) {
                A0N(this.A0O, false, true);
                this.A0O = -1;
                this.A0T = null;
                this.A0c = null;
            } else if (z) {
                requestLayout();
            } else {
                A0f();
            }
        }
        List<ViewPager.OnAdapterChangeListener> list = this.A0e;
        if (list == null || list.isEmpty() || 0 >= this.A0e.size()) {
            return;
        }
        this.A0e.get(0);
        throw new NullPointerException(A08(381, 16, 117));
    }

    public void setCurrentItem(int i) {
        this.A0o = false;
        A0N(i, !this.A0i, false);
    }

    public void setOffscreenPageLimit(int i) {
        if (i < 1) {
            Log.w(A08(JavaUtils.Constants.NATIVE_HEIGHT_DP_300, 9, 47), A08(127, 31, 60) + i + A08(51, 26, 90) + 1);
            i = 1;
        }
        if (i != this.A0L) {
            this.A0L = i;
            A0f();
        }
    }

    @Deprecated
    public void setOnPageChangeListener(C3Q c3q) {
        this.A0Z = c3q;
    }

    public void setPageMargin(int i) {
        int i2 = this.A0M;
        this.A0M = i;
        int width = getWidth();
        A0K(width, width, i, i2);
        requestLayout();
    }

    public void setPageMarginDrawable(int i) {
        setPageMarginDrawable(C2Y.A00(getContext(), i));
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.A0S = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    public void setScrollState(int i) {
        if (this.A0P == i) {
            return;
        }
        this.A0P = i;
        if (this.A0a != null) {
            A0S(i != 0);
        }
        A0F(i);
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.A0S;
    }
}
