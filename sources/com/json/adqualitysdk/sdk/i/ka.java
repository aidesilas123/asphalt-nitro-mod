package com.json.adqualitysdk.sdk.i;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class ka {
    private static Rect a = new Rect();

    private static boolean a(List<String> list, View view) {
        return list != null && list.contains(view.getClass().getName());
    }

    private static boolean b(List list) {
        return list == null || list.isEmpty();
    }

    private static <E extends View> void c(View view, Class<E> cls, String str, boolean z, boolean z2, List<Integer> list, List<String> list2, List<E> list3) {
        View view2 = view;
        while (view2.getParent() != null && (view2.getParent() instanceof ViewGroup)) {
            view2 = (View) view2.getParent();
        }
        m1009(view2, cls, str, z, z2, list, list2, list3);
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static <E extends View> void m1002(Activity activity, Class<E> cls, boolean z, List<Integer> list, List<String> list2, List<E> list3) {
        m1005(activity, cls, -1, null, false, z, list, list2, list3);
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static <E extends View> void m1003(View view, Class<E> cls, boolean z, boolean z2, List<Integer> list, List<String> list2, List<E> list3) {
        m1009(view, cls, null, z, z2, list, list2, list3);
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static Activity m1004(View view) {
        if (view != null) {
            View view2 = view;
            while (view2.getId() != 16908290 && (view2.getParent() instanceof View)) {
                view2 = (View) view2.getParent();
            }
            for (Context context = view2.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
                if (context instanceof Activity) {
                    return (Activity) context;
                }
            }
            View viewFindViewById = view.findViewById(R.id.content);
            if (viewFindViewById != null && (viewFindViewById.getContext() instanceof Activity)) {
                return (Activity) viewFindViewById.getContext();
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static <E extends View> void m1005(Activity activity, Class<E> cls, int i, String str, boolean z, boolean z2, List<Integer> list, List<String> list2, List<E> list3) {
        if (i != -1) {
            View viewFindViewById = activity.findViewById(i);
            if (cls.isInstance(viewFindViewById)) {
                list3.add(viewFindViewById);
                if (z) {
                    return;
                }
            }
            m1009(viewFindViewById, cls, str, z, z2, list, list2, list3);
            if (list3.size() > 0 && z) {
                return;
            }
        }
        View viewFindViewById2 = activity.findViewById(R.id.content);
        if (viewFindViewById2 != null) {
            c(viewFindViewById2, cls, str, z, z2, list, list2, list3);
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static View m1006(Activity activity) {
        return activity.findViewById(R.id.content);
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static View m1007(View view) {
        while (view.getParent() instanceof View) {
            view = (View) view.getParent();
        }
        return view;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static <E extends View> E m1008(View view, Class<E> cls, boolean z) {
        ArrayList arrayList = new ArrayList();
        m1003(view, cls, true, z, null, null, arrayList);
        if (arrayList.isEmpty()) {
            return null;
        }
        return (E) arrayList.get(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static <E extends View> void m1009(View view, Class<E> cls, String str, boolean z, boolean z2, List<Integer> list, List<String> list2, List<E> list3) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if (m1011(childAt, cls, str, list, list2)) {
                    list3.add(childAt);
                    if (z) {
                        return;
                    }
                    if (z2) {
                        m1009(childAt, cls, str, z, z2, list, list2, list3);
                    }
                } else {
                    m1009(childAt, cls, str, z, z2, list, list2, list3);
                    if (list3 != 0 && list3.size() > 0 && z) {
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static <E extends View> E m1010(Activity activity, Class<E> cls, int i, List<String> list, String str) {
        ArrayList arrayList = new ArrayList();
        m1005(activity, cls, i, str, true, false, null, list, arrayList);
        if (arrayList.size() > 0) {
            return (E) arrayList.get(0);
        }
        return null;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static <E extends View> boolean m1011(View view, Class<E> cls, String str, List<Integer> list, List<String> list2) {
        if (!cls.isInstance(view)) {
            return false;
        }
        if ((b(list) || list.contains(Integer.valueOf(view.getId()))) && !a(list2, view)) {
            return str == null || view.getClass().getName().startsWith(str);
        }
        return false;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static boolean m1012(View view) {
        view.getHitRect(a);
        return view.getGlobalVisibleRect(a);
    }
}
