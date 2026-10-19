package com.iab.omid.library.kidoznet.walking.async;

import android.text.TextUtils;
import com.iab.omid.library.kidoznet.walking.async.b;
import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class f extends a {
    public f(b.InterfaceC0322b interfaceC0322b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(interfaceC0322b, hashSet, jSONObject, j);
    }

    private void b(String str) {
        com.iab.omid.library.kidoznet.internal.c cVarC = com.iab.omid.library.kidoznet.internal.c.c();
        if (cVarC != null) {
            for (com.iab.omid.library.kidoznet.adsession.a aVar : cVarC.b()) {
                if (this.c.contains(aVar.getAdSessionId())) {
                    aVar.getAdSessionStatePublisher().b(str, this.f5012e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public String doInBackground(Object... objArr) {
        if (com.iab.omid.library.kidoznet.utils.c.h(this.f5011d, this.b.a())) {
            return null;
        }
        this.b.a(this.f5011d);
        return this.f5011d.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iab.omid.library.kidoznet.walking.async.b, android.os.AsyncTask
    /* JADX INFO: renamed from: a */
    public void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            b(str);
        }
        super.onPostExecute(str);
    }
}
