package com.iab.omid.library.jungroup.c;

import android.view.View;
import com.iab.omid.library.jungroup.adsession.l;
import com.iab.omid.library.jungroup.c.a;
import com.iab.omid.library.jungroup.d.e;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements a {
    public final a a;

    public c(d dVar) {
        this.a = dVar;
    }

    @Override // com.iab.omid.library.jungroup.c.a
    public final JSONObject a(View view) {
        return com.iab.omid.library.jungroup.d.b.a(0, 0, 0, 0);
    }

    @Override // com.iab.omid.library.jungroup.c.a
    public final void a(View view, JSONObject jSONObject, a.InterfaceC0317a interfaceC0317a, boolean z, boolean z2) {
        View rootView;
        ArrayList arrayList = new ArrayList();
        com.iab.omid.library.jungroup.b.a aVar = com.iab.omid.library.jungroup.b.a.c;
        if (aVar != null) {
            Collection collectionUnmodifiableCollection = Collections.unmodifiableCollection(aVar.b);
            IdentityHashMap identityHashMap = new IdentityHashMap((collectionUnmodifiableCollection.size() * 2) + 3);
            Iterator it = collectionUnmodifiableCollection.iterator();
            while (it.hasNext()) {
                View view2 = ((l) it.next()).f4955d.get();
                if (view2 != null && e.b(view2) && (rootView = view2.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float fA = e.a(rootView);
                    int size = arrayList.size();
                    while (size > 0 && e.a((View) arrayList.get(size - 1)) > fA) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((com.iab.omid.library.jungroup.walking.b) interfaceC0317a).a((View) it2.next(), this.a, jSONObject, z2);
        }
    }
}
