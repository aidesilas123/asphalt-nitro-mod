package com.iab.omid.library.kidoznet.processor;

import android.view.View;
import androidx.annotation.NonNull;
import com.iab.omid.library.kidoznet.processor.a;
import com.iab.omid.library.kidoznet.utils.e;
import com.iab.omid.library.kidoznet.utils.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class c implements a {
    private final a a;

    public c(a aVar) {
        this.a = aVar;
    }

    @NonNull
    ArrayList<View> a() {
        View rootView;
        ArrayList<View> arrayList = new ArrayList<>();
        com.iab.omid.library.kidoznet.internal.c cVarC = com.iab.omid.library.kidoznet.internal.c.c();
        if (cVarC != null) {
            Collection<com.iab.omid.library.kidoznet.adsession.a> collectionA = cVarC.a();
            IdentityHashMap identityHashMap = new IdentityHashMap((collectionA.size() * 2) + 3);
            Iterator<com.iab.omid.library.kidoznet.adsession.a> it = collectionA.iterator();
            while (it.hasNext()) {
                View viewC = it.next().c();
                if (viewC != null && h.e(viewC) && (rootView = viewC.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float fC = h.c(rootView);
                    int size = arrayList.size();
                    while (size > 0 && h.c(arrayList.get(size - 1)) > fC) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        return arrayList;
    }

    @Override // com.iab.omid.library.kidoznet.processor.a
    public JSONObject a(View view) {
        JSONObject jSONObjectA = com.iab.omid.library.kidoznet.utils.c.a(0, 0, 0, 0);
        com.iab.omid.library.kidoznet.utils.c.a(jSONObjectA, e.a());
        return jSONObjectA;
    }

    @Override // com.iab.omid.library.kidoznet.processor.a
    public void a(View view, JSONObject jSONObject, a.InterfaceC0320a interfaceC0320a, boolean z, boolean z2) {
        Iterator<View> it = a().iterator();
        while (it.hasNext()) {
            interfaceC0320a.a(it.next(), this.a, jSONObject, z2);
        }
    }
}
