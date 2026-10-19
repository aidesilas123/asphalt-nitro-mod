package com.facebook.ads.redexgen.X;

import android.content.DialogInterface;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Tq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1377Tq extends K8 {
    public static String[] A02 = {"r", "tRYI", "7UJuVMqBcP2QEoAe5I9ReZPElv0qEy55", "leQvAr8Bdm", "IrxDcEzjLLQBxw", "x58zC904VQqUCNnuzCjkyAfM", "58DZzAqOGTGaE", "1xO3"};
    public final /* synthetic */ DialogInterface A00;
    public final /* synthetic */ DialogInterfaceOnClickListenerC1162Li A01;

    public C1377Tq(DialogInterfaceOnClickListenerC1162Li dialogInterfaceOnClickListenerC1162Li, DialogInterface dialogInterface) {
        this.A01 = dialogInterfaceOnClickListenerC1162Li;
        this.A00 = dialogInterface;
    }

    @Override // com.facebook.ads.redexgen.X.K8
    public final void A06() {
        if (this.A01.A01.A02 != null) {
            this.A01.A01.A02.ADp(C1119Jo.A03(this.A01.A01.A00), new C1305Qv().A05(this.A01.A01.A02(this.A01.A00.getText().toString())).A08());
        }
        DialogInterface dialogInterface = this.A00;
        if (A02[6].length() != 13) {
            throw new RuntimeException();
        }
        A02[6] = "1hADnGgCLejuT";
        dialogInterface.cancel();
    }
}
