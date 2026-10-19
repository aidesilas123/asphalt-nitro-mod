package com.bytedance.sdk.openadsdk.utils;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.bytedance.sdk.openadsdk.ApmHelper;
import java.util.List;

/* JADX INFO: compiled from: ViewUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class ae {

    /* JADX INFO: compiled from: ViewUtils.java */
    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        View a = null;
        final /* synthetic */ ViewGroup b;

        a(ViewGroup viewGroup) {
            this.b = viewGroup;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            try {
                b bVar = (b) this.b.getTag(520093765);
                if (this.a == null) {
                    ViewGroup viewGroup = this.b;
                    ae.b(viewGroup, bVar, (Integer) viewGroup.getTag(520093766));
                    return;
                }
                Rect rect = new Rect();
                this.a.getGlobalVisibleRect(rect);
                Rect rect2 = new Rect();
                this.b.getGlobalVisibleRect(rect2);
                if (rect.contains(rect2)) {
                    if (bVar != null) {
                        bVar.a(this.b, false);
                    }
                    this.b.setTag(520093763, Boolean.FALSE);
                } else {
                    if (bVar != null) {
                        bVar.a(this.b, true);
                    }
                    this.b.setTag(520093763, Boolean.TRUE);
                }
            } catch (Exception e2) {
                ApmHelper.reportCustomError("onGlobalLayout exception " + this.b.getTag(520093765), "ViewUtils", e2);
            }
        }
    }

    /* JADX INFO: compiled from: ViewUtils.java */
    public interface b {
        void a();

        void a(View view, boolean z);

        void a(boolean z);

        void b();
    }

    public static void a(final ViewGroup viewGroup, boolean z, int i, b bVar, List<ViewGroup> list) {
        viewGroup.setTag(520093765, bVar);
        viewGroup.setTag(520093766, Integer.valueOf(i));
        if (viewGroup.getTag(520093764) == Boolean.TRUE) {
            return;
        }
        final a aVar = new a(viewGroup);
        if (list != null && list.size() > 0) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                list.get(i2).setOnHierarchyChangeListener(new ViewGroup.OnHierarchyChangeListener() { // from class: com.bytedance.sdk.openadsdk.utils.ae.1
                    @Override // android.view.ViewGroup.OnHierarchyChangeListener
                    public void onChildViewAdded(View view, View view2) {
                        aVar.a = view2;
                    }

                    @Override // android.view.ViewGroup.OnHierarchyChangeListener
                    public void onChildViewRemoved(View view, View view2) {
                        aVar.a = null;
                    }
                });
            }
        }
        viewGroup.getViewTreeObserver().addOnGlobalLayoutListener(aVar);
        if (z) {
            viewGroup.getViewTreeObserver().addOnScrollChangedListener(new ViewTreeObserver.OnScrollChangedListener() { // from class: com.bytedance.sdk.openadsdk.utils.ae.2
                @Override // android.view.ViewTreeObserver.OnScrollChangedListener
                public void onScrollChanged() {
                    try {
                        b bVar2 = (b) viewGroup.getTag(520093765);
                        ViewGroup viewGroup2 = viewGroup;
                        ae.b(viewGroup2, bVar2, (Integer) viewGroup2.getTag(520093766));
                    } catch (Exception e2) {
                        ApmHelper.reportCustomError("onScrollChanged exception " + viewGroup.getTag(520093765), "ViewUtils", e2);
                    }
                }
            });
        }
        if (Build.VERSION.SDK_INT >= 18) {
            viewGroup.getViewTreeObserver().addOnWindowFocusChangeListener(new ViewTreeObserver.OnWindowFocusChangeListener() { // from class: com.bytedance.sdk.openadsdk.utils.ae.3
                @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
                public void onWindowFocusChanged(boolean z2) {
                    try {
                        b bVar2 = (b) viewGroup.getTag(520093765);
                        if (bVar2 != null) {
                            bVar2.a(z2);
                            ViewGroup viewGroup2 = viewGroup;
                            ae.b(viewGroup2, bVar2, (Integer) viewGroup2.getTag(520093766));
                        }
                    } catch (Exception e2) {
                        ApmHelper.reportCustomError("onWindowFocusChanged exception " + viewGroup.getTag(520093765), "ViewUtils", e2);
                    }
                }
            });
        }
        viewGroup.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.bytedance.sdk.openadsdk.utils.ae.4
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
                b bVar2 = (b) viewGroup.getTag(520093765);
                if (bVar2 != null) {
                    bVar2.a();
                }
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                b bVar2 = (b) viewGroup.getTag(520093765);
                if (bVar2 != null) {
                    bVar2.b();
                }
            }
        });
        viewGroup.setTag(520093764, Boolean.TRUE);
    }

    private static boolean a(View view, int i) {
        return com.bytedance.sdk.openadsdk.core.y.a(view, 20, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(View view, b bVar, Integer num) {
        if (bVar == null) {
            return;
        }
        if (num == null) {
            num = 0;
        }
        if (a(view, num.intValue())) {
            bVar.a(view, true);
        }
    }
}
