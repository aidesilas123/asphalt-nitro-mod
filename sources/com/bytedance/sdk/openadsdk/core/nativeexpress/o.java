package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.model.i;
import com.bytedance.sdk.openadsdk.utils.ad;

/* JADX INFO: compiled from: ViewGestureDetector.java */
/* JADX INFO: loaded from: classes2.dex */
public class o extends GestureDetector {
    private final a a;
    private final com.bytedance.sdk.openadsdk.core.b.f b;

    /* JADX INFO: compiled from: ViewGestureDetector.java */
    static class a extends GestureDetector.SimpleOnGestureListener {
        boolean a = false;

        a() {
        }

        void a() {
            this.a = false;
        }

        boolean b() {
            return this.a;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            this.a = true;
            return super.onSingleTapUp(motionEvent);
        }
    }

    public o(Context context) {
        this(context, new a());
    }

    public o(Context context, a aVar) {
        super(context, aVar);
        this.a = aVar;
        this.b = new com.bytedance.sdk.openadsdk.core.b.f();
        setIsLongpressEnabled(false);
    }

    public com.bytedance.sdk.openadsdk.core.model.i a(Context context, View view, View view2) {
        if (this.b == null) {
            return new i.a().a();
        }
        return new i.a().f(this.b.a).e(this.b.b).d(this.b.c).c(this.b.f1465d).b(this.b.f1466e).a(this.b.f1467f).b(ad.a(view)).a(ad.a(view2)).c(ad.c(view)).d(ad.c(view2)).d(this.b.f1468g).e(this.b.h).f(this.b.i).a(this.b.l).b(com.bytedance.sdk.openadsdk.core.h.b().a() ? 1 : 2).a("vessel").a(ad.e(context)).c(ad.g(context)).b(ad.f(context)).a();
    }

    void a() {
        this.a.a();
    }

    public boolean b() {
        return this.a.b();
    }

    @Override // android.view.GestureDetector
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.b.a(motionEvent);
        return super.onTouchEvent(motionEvent);
    }
}
