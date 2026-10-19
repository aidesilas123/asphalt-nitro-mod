package com.iab.omid.library.jungroup.c;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.jungroup.c.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements a {
    public final int[] a = new int[2];

    @Override // com.iab.omid.library.jungroup.c.a
    public final JSONObject a(View view) {
        if (view == null) {
            return com.iab.omid.library.jungroup.d.b.a(0, 0, 0, 0);
        }
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.a);
        int[] iArr = this.a;
        return com.iab.omid.library.jungroup.d.b.a(iArr[0], iArr[1], width, height);
    }

    @Override // com.iab.omid.library.jungroup.c.a
    public final void a(View view, JSONObject jSONObject, a.InterfaceC0317a interfaceC0317a, boolean z, boolean z2) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int i = 0;
            if (!z || Build.VERSION.SDK_INT < 21) {
                while (i < viewGroup.getChildCount()) {
                    ((com.iab.omid.library.jungroup.walking.b) interfaceC0317a).a(viewGroup.getChildAt(i), this, jSONObject, z2);
                    i++;
                }
                return;
            }
            HashMap map = new HashMap();
            while (i < viewGroup.getChildCount()) {
                View childAt = viewGroup.getChildAt(i);
                ArrayList arrayList = (ArrayList) map.get(Float.valueOf(childAt.getZ()));
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    map.put(Float.valueOf(childAt.getZ()), arrayList);
                }
                arrayList.add(childAt);
                i++;
            }
            ArrayList arrayList2 = new ArrayList(map.keySet());
            Collections.sort(arrayList2);
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                Iterator it2 = ((ArrayList) map.get((Float) it.next())).iterator();
                while (it2.hasNext()) {
                    ((com.iab.omid.library.jungroup.walking.b) interfaceC0317a).a((View) it2.next(), this, jSONObject, z2);
                }
            }
        }
    }
}
