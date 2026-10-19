package com.bytedance.sdk.openadsdk.core.b;

import android.graphics.Point;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.settings.k;

/* JADX INFO: compiled from: InteractionListener.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class c implements View.OnClickListener, View.OnTouchListener {
    protected static int C = 8;
    private static float a;
    private static float b;
    private static float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static float f1460d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f1461e;
    protected View E;
    protected float t = -1.0f;
    protected float u = -1.0f;
    protected float v = -1.0f;
    protected float w = -1.0f;
    protected long x = -1;
    protected long y = -1;
    protected int z = -1;
    protected int A = -1024;
    protected int B = -1;
    protected boolean D = true;
    public SparseArray<a> F = new SparseArray<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f1462f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1463g = 0;

    /* JADX INFO: compiled from: InteractionListener.java */
    public static class a {
        public int a;
        public double b;
        public double c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f1464d;

        public a(int i, double d2, double d3, long j) {
            this.a = -1;
            this.b = -1.0d;
            this.c = -1.0d;
            this.f1464d = -1L;
            this.a = i;
            this.b = d2;
            this.c = d3;
            this.f1464d = j;
        }
    }

    static {
        if (o.a() != null) {
            C = o.b();
        }
        a = 0.0f;
        b = 0.0f;
        c = 0.0f;
        f1460d = 0.0f;
        f1461e = 0L;
    }

    private boolean a(View view, Point point) {
        int i;
        int i2;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                View childAt = viewGroup.getChildAt(i3);
                if (b.c(childAt)) {
                    int[] iArr = new int[2];
                    childAt.getLocationOnScreen(iArr);
                    return view.isShown() && (i = point.x) >= iArr[0] && i <= iArr[0] + childAt.getWidth() && (i2 = point.y) >= iArr[1] && i2 <= iArr[1] + childAt.getHeight();
                }
                if (a(childAt, point)) {
                    return true;
                }
            }
        }
        return false;
    }

    protected abstract void a(View view, float f2, float f3, float f4, float f5, SparseArray<a> sparseArray, boolean z);

    public boolean g() {
        return this.D;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (k.a()) {
            a(view, this.t, this.u, this.v, this.w, this.F, this.D);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0075  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouch(android.view.View r13, android.view.MotionEvent r14) {
        /*
            Method dump skipped, instruction units count: 348
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.b.c.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
