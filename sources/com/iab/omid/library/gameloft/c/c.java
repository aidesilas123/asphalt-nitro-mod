package com.iab.omid.library.gameloft.c;

import android.view.View;
import androidx.annotation.NonNull;
import com.iab.omid.library.gameloft.c.a;
import com.iab.omid.library.gameloft.d.f;
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
        com.iab.omid.library.gameloft.b.a aVarA = com.iab.omid.library.gameloft.b.a.a();
        if (aVarA != null) {
            Collection<com.iab.omid.library.gameloft.adsession.a> collectionC = aVarA.c();
            IdentityHashMap identityHashMap = new IdentityHashMap((collectionC.size() * 2) + 3);
            Iterator<com.iab.omid.library.gameloft.adsession.a> it = collectionC.iterator();
            while (it.hasNext()) {
                View viewC = it.next().c();
                if (viewC != null && f.c(viewC) && (rootView = viewC.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float fA = f.a(rootView);
                    int size = arrayList.size();
                    while (size > 0 && f.a(arrayList.get(size - 1)) > fA) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        return arrayList;
    }

    @Override // com.iab.omid.library.gameloft.c.a
    public JSONObject a(View view) {
        return com.iab.omid.library.gameloft.d.b.a(0, 0, 0, 0);
    }

    @Override // com.iab.omid.library.gameloft.c.a
    public void a(View view, JSONObject jSONObject, a.InterfaceC0312a interfaceC0312a, boolean z) {
        Iterator<View> it = a().iterator();
        while (it.hasNext()) {
            interfaceC0312a.a(it.next(), this.a, jSONObject);
        }
    }
}
