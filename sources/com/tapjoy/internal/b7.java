package com.tapjoy.internal;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class b7 extends RelativeLayout {
    public final t5 a;
    public final w7 b;
    public l1 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f7866d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7867e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public o2 f7868f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public ArrayList f7869g;
    public ArrayList h;

    public b7(Context context, t5 t5Var, w7 w7Var) {
        super(context);
        this.c = l1.a;
        this.f7866d = 0;
        this.f7867e = 0;
        this.f7868f = null;
        this.f7869g = null;
        this.h = null;
        this.a = t5Var;
        this.b = w7Var;
    }

    public final void a() {
        o7 o7Var;
        o7 o7Var2;
        boolean z;
        boolean z2;
        Iterator it = this.a.a.iterator();
        o2 o2Var = null;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            o2 o2Var2 = (o2) it.next();
            l1 l1Var = o2Var2.b;
            if (l1Var == this.c) {
                o2Var = o2Var2;
                break;
            } else if (l1Var == l1.a) {
                o2Var = o2Var2;
            }
        }
        removeAllViews();
        ArrayList arrayList = this.f7869g;
        if (arrayList != null) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                o7 o7Var3 = (o7) ((WeakReference) it2.next()).get();
                if (o7Var3 != null) {
                    o7Var3.f7949d = false;
                    o7Var3.f7950e = false;
                    o7Var3.f7951f = true;
                    o7Var3.b();
                    o7Var3.c.post(o7Var3.j);
                }
            }
            this.f7869g.clear();
        }
        ArrayList arrayList2 = this.h;
        if (arrayList2 != null) {
            Iterator it3 = arrayList2.iterator();
            while (it3.hasNext()) {
                o7 o7Var4 = (o7) ((WeakReference) it3.next()).get();
                if (o7Var4 != null) {
                    o7Var4.f7949d = false;
                    o7Var4.f7950e = false;
                    o7Var4.f7951f = true;
                    o7Var4.b();
                    o7Var4.c.post(o7Var4.j);
                }
            }
            this.h.clear();
        }
        if (o2Var != null) {
            this.f7868f = o2Var;
            Context context = getContext();
            for (u0 u0Var : o2Var.f7948d) {
                RelativeLayout relativeLayout = new RelativeLayout(context);
                if (u0Var.l.f7945e != null) {
                    o7 o7Var5 = new o7(context);
                    o7Var5.setScaleType(ImageView.ScaleType.FIT_XY);
                    n3 n3Var = u0Var.l;
                    s4 s4Var = n3Var.f7946f;
                    byte[] bArr = n3Var.f7945e;
                    try {
                        v vVar = new v();
                        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
                        s3 s3Var = new s3(vVar);
                        s3Var.d(s4Var, byteBufferWrap);
                        o7Var5.a = s3Var;
                        boolean z3 = o7Var5.f7949d;
                        if (z3) {
                            o7Var5.a();
                        } else if (s3Var.n != 0) {
                            if (-1 >= s3Var.p.c) {
                                z2 = false;
                            } else {
                                s3Var.n = -1;
                                z2 = true;
                            }
                            if (z2 && !z3) {
                                o7Var5.f7950e = true;
                                o7Var5.a();
                            }
                        }
                    } catch (Exception unused) {
                        o7Var5.a = null;
                    }
                    if (this.f7869g == null) {
                        this.f7869g = new ArrayList();
                    }
                    this.f7869g.add(new WeakReference(o7Var5));
                    o7Var = o7Var5;
                } else {
                    o7Var = null;
                }
                n3 n3Var2 = u0Var.m;
                if (n3Var2 == null || n3Var2.f7945e == null) {
                    o7Var2 = null;
                } else {
                    o7 o7Var6 = new o7(context);
                    o7Var6.setScaleType(ImageView.ScaleType.FIT_XY);
                    n3 n3Var3 = u0Var.m;
                    s4 s4Var2 = n3Var3.f7946f;
                    byte[] bArr2 = n3Var3.f7945e;
                    try {
                        v vVar2 = new v();
                        ByteBuffer byteBufferWrap2 = ByteBuffer.wrap(bArr2);
                        s3 s3Var2 = new s3(vVar2);
                        s3Var2.d(s4Var2, byteBufferWrap2);
                        o7Var6.a = s3Var2;
                        boolean z4 = o7Var6.f7949d;
                        if (z4) {
                            o7Var6.a();
                        } else if (s3Var2.n != 0) {
                            if (-1 >= s3Var2.p.c) {
                                z = false;
                            } else {
                                s3Var2.n = -1;
                                z = true;
                            }
                            if (z && !z4) {
                                o7Var6.f7950e = true;
                                o7Var6.a();
                            }
                        }
                    } catch (Exception unused2) {
                        o7Var6.a = null;
                    }
                    if (this.h == null) {
                        this.h = new ArrayList();
                    }
                    this.h.add(new WeakReference(o7Var6));
                    o7Var2 = o7Var6;
                }
                ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(0, 0);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
                Bitmap bitmap = u0Var.l.f7944d;
                n3 n3Var4 = u0Var.m;
                Bitmap bitmap2 = n3Var4 != null ? n3Var4.f7944d : null;
                BitmapDrawable bitmapDrawable = bitmap != null ? new BitmapDrawable((Resources) null, bitmap) : null;
                BitmapDrawable bitmapDrawable2 = bitmap2 != null ? new BitmapDrawable((Resources) null, bitmap2) : null;
                if (bitmapDrawable != null) {
                    ta.a(relativeLayout, bitmapDrawable);
                }
                if (o7Var != null) {
                    relativeLayout.addView(o7Var, layoutParams2);
                    o7Var.f7949d = true;
                    o7Var.a();
                }
                if (o7Var2 != null) {
                    relativeLayout.addView(o7Var2, layoutParams2);
                    o7Var2.setVisibility(4);
                }
                relativeLayout.setOnTouchListener(new f6(o7Var2, bitmapDrawable2, o7Var, bitmapDrawable));
                relativeLayout.setOnClickListener(new q6(this, o7Var2, relativeLayout, o7Var, u0Var));
                relativeLayout.setTag(u0Var);
                addView(relativeLayout, layoutParams);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.b.c.e();
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f7 A[EDGE_INSN: B:51:0x00f7->B:49:0x00f7 BREAK  A[LOOP:0: B:26:0x0061->B:48:0x00f2], SYNTHETIC] */
    @Override // android.widget.RelativeLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onMeasure(int r18, int r19) {
        /*
            Method dump skipped, instruction units count: 251
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.internal.b7.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            ArrayList arrayList = this.f7869g;
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    o7 o7Var = (o7) ((WeakReference) it.next()).get();
                    if (o7Var != null) {
                        o7Var.b();
                    }
                }
            }
            ArrayList arrayList2 = this.h;
            if (arrayList2 != null) {
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    o7 o7Var2 = (o7) ((WeakReference) it2.next()).get();
                    if (o7Var2 != null) {
                        o7Var2.b();
                    }
                }
                return;
            }
            return;
        }
        ArrayList arrayList3 = this.h;
        if (arrayList3 != null) {
            Iterator it3 = arrayList3.iterator();
            while (it3.hasNext()) {
                o7 o7Var3 = (o7) ((WeakReference) it3.next()).get();
                if (o7Var3 != null) {
                    o7Var3.setVisibility(4);
                    o7Var3.b();
                }
            }
        }
        ArrayList arrayList4 = this.f7869g;
        if (arrayList4 != null) {
            Iterator it4 = arrayList4.iterator();
            while (it4.hasNext()) {
                o7 o7Var4 = (o7) ((WeakReference) it4.next()).get();
                if (o7Var4 != null) {
                    o7Var4.setVisibility(0);
                    o7Var4.f7949d = true;
                    o7Var4.a();
                }
            }
        }
    }
}
