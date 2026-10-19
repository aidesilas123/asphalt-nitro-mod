package com.gameloft.android.ANMP.GloftAGHM.GLUtils;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class TopLayer {
    private static ViewGroup a;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < TopLayer.a.getChildCount(); i++) {
                View childAt = TopLayer.a.getChildAt(i);
                if (childAt.getTag() instanceof c) {
                    arrayList.add(childAt);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((View) it.next()).bringToFront();
            }
        }
    }

    private static class b implements ViewGroup.OnHierarchyChangeListener {
        private b() {
        }

        /* synthetic */ b(a aVar) {
            this();
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            TopLayer.Refresh();
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
        }
    }

    private static class c {
        private c() {
        }

        /* synthetic */ c(a aVar) {
            this();
        }
    }

    public static void Dismiss(View view) {
        view.setTag(null);
        Refresh();
    }

    public static void Present(View view) {
        view.setTag(new c(null));
        Refresh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void Refresh() {
        ViewGroup viewGroup = a;
        if (viewGroup == null) {
            return;
        }
        viewGroup.post(new a());
    }

    public static void SetContainer(ViewGroup viewGroup) {
        a = viewGroup;
        viewGroup.setOnHierarchyChangeListener(new b(null));
    }
}
