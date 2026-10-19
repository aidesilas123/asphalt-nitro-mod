package com.fyber.inneractive.sdk.click;

import android.net.Uri;
import android.text.TextUtils;
import com.fyber.inneractive.sdk.click.l;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.network.w;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class e implements w<c> {
    public final /* synthetic */ List a;
    public final /* synthetic */ Uri b;
    public final /* synthetic */ f c;

    public e(f fVar, List list, Uri uri) {
        this.c = fVar;
        this.a = list;
        this.b = uri;
    }

    @Override // com.fyber.inneractive.sdk.network.w
    public void a(c cVar, Exception exc, boolean z) {
        c cVar2 = cVar;
        if (exc != null || cVar2 == null) {
            IAConfigManager.a(this.b.toString(), null);
            Uri uri = this.b;
            this.c.getClass();
            b bVarA = l.a(uri.toString(), "IgniteGooglePlay", "failed getting redirects");
            List list = this.a;
            if (list != null) {
                list.add(new i(this.b.toString(), false, l.d.INTERNAL_REDIRECT, "failed getting redirects. ignite click handler"));
                bVarA.f1925f = this.a;
            }
            f fVar = this.c;
            fVar.c.a(bVarA, fVar.f1926d, fVar.f1927e);
            return;
        }
        if (cVar2.a.size() > 0) {
            List<String> list2 = cVar2.a;
            String str = list2.get(list2.size() - 1);
            if (this.a != null) {
                for (String str2 : cVar2.a) {
                    if (!TextUtils.equals(str2, str)) {
                        this.a.add(new i(str2, true, l.d.INTERNAL_REDIRECT, null));
                    }
                }
                List list3 = this.a;
                l.d dVar = l.d.OPEN_INTERNAL_STORE;
                list3.add(new i(str, true, dVar, null));
                this.c.getClass();
                b bVarA2 = l.a(str, dVar, "IgniteGooglePlay");
                bVarA2.f1925f = this.a;
                f fVar2 = this.c;
                fVar2.c.a(bVarA2, fVar2.f1926d, fVar2.f1927e);
            }
            if (str.startsWith("market")) {
                IAConfigManager.a(str.replace("market://details?id=", "https://play.google.com/store/apps/details?id="), null);
            } else {
                IAConfigManager.a(str, cVar2.b);
            }
        }
    }
}
