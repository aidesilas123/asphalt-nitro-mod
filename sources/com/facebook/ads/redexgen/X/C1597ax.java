package com.facebook.ads.redexgen.X;

import java.util.Collection;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ax, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1597ax implements InterfaceC06600j {
    public final /* synthetic */ YA A00;
    public final /* synthetic */ String A01;
    public final /* synthetic */ JSONObject A02;

    public C1597ax(JSONObject jSONObject, YA ya, String str) {
        this.A02 = jSONObject;
        this.A00 = ya;
        this.A01 = str;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06600j
    public final String A6N() {
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06600j
    public final Collection<String> A6g() {
        return C06610k.A03(this.A00, this.A02);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06600j
    public final EnumC06590i A77() {
        return C06610k.A00(this.A02);
    }
}
