package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.x;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class EmptyView extends View implements x.a {
    private boolean a;
    private boolean b;
    private a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f1448d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<View> f1449e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private List<View> f1450f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1451g;
    private int h;
    private final Handler i;
    private final AtomicBoolean j;
    private ViewTreeObserver.OnGlobalLayoutListener k;
    private boolean l;
    private final Runnable m;

    public interface a {
        void a();

        void a(View view);

        void a(boolean z);

        void b();
    }

    public EmptyView(Context context, View view) {
        super(o.a());
        this.i = new com.bytedance.sdk.component.utils.x(l.b().getLooper(), this);
        this.j = new AtomicBoolean(true);
        this.l = false;
        this.m = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.EmptyView.3
            @Override // java.lang.Runnable
            public void run() {
                if (EmptyView.this.c != null) {
                    EmptyView.this.c.a(EmptyView.this.f1448d);
                }
            }
        };
        this.f1448d = view;
        setLayoutParams(new ViewGroup.LayoutParams(0, 0));
        this.k = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.core.EmptyView.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (EmptyView.this.l) {
                    return;
                }
                EmptyView.this.e();
                EmptyView.this.d();
            }
        };
    }

    private void a(final boolean z) {
        final ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        com.bytedance.sdk.component.utils.h.b().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.EmptyView.2
            @Override // java.lang.Runnable
            public void run() {
                ViewTreeObserver viewTreeObserver2;
                if (EmptyView.this.k != null && (viewTreeObserver2 = viewTreeObserver) != null) {
                    try {
                        viewTreeObserver2.removeOnGlobalLayoutListener(EmptyView.this.k);
                    } catch (Exception unused) {
                    }
                }
                if (z) {
                    EmptyView.this.k = null;
                }
            }
        });
    }

    private void b() {
        a aVar;
        if (!this.j.getAndSet(false) || (aVar = this.c) == null) {
            return;
        }
        aVar.a();
    }

    private void c() {
        a aVar;
        if (this.j.getAndSet(true) || (aVar = this.c) == null) {
            return;
        }
        aVar.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (!this.b || this.a) {
            return;
        }
        this.a = true;
        this.i.sendEmptyMessage(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.a) {
            this.i.removeCallbacksAndMessages(null);
            this.a = false;
        }
    }

    private boolean f() {
        View view = this.f1448d;
        if (view instanceof NativeExpressView) {
            return ((NativeExpressView) view).p();
        }
        return true;
    }

    public void a() {
        a(this.f1449e, (com.bytedance.sdk.openadsdk.core.b.c) null);
        a(this.f1450f, (com.bytedance.sdk.openadsdk.core.b.c) null);
    }

    @Override // com.bytedance.sdk.component.utils.x.a
    public void a(Message message) {
        if (message.what == 1 && this.a) {
            if (!f() || !y.a(this.f1448d, 20, this.h)) {
                this.i.sendEmptyMessageDelayed(1, 1000L);
                return;
            }
            e();
            this.l = true;
            l.c().post(this.m);
            a(true);
        }
    }

    public void a(List<View> list, com.bytedance.sdk.openadsdk.core.b.c cVar) {
        if (com.bytedance.sdk.component.utils.j.b(list)) {
            for (View view : list) {
                if (view != null) {
                    view.setOnClickListener(cVar);
                    view.setOnTouchListener(cVar);
                }
            }
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1451g = false;
        b();
        if (this.k != null) {
            getViewTreeObserver().addOnGlobalLayoutListener(this.k);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        e();
        this.f1451g = true;
        c();
        a(false);
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        b();
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        c();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        a aVar = this.c;
        if (aVar != null) {
            aVar.a(z);
        }
    }

    public void setAdType(int i) {
        this.h = i;
    }

    public void setCallback(a aVar) {
        this.c = aVar;
    }

    public void setNeedCheckingShow(boolean z) {
        this.b = z;
        if (!z && this.a) {
            e();
        } else {
            if (!z || this.a) {
                return;
            }
            d();
        }
    }

    public void setRefClickViews(List<View> list) {
        this.f1449e = list;
    }

    public void setRefCreativeViews(@Nullable List<View> list) {
        this.f1450f = list;
    }
}
