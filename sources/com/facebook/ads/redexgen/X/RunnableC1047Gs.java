package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Gs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class RunnableC1047Gs implements Runnable {
    public static String[] A01 = {"BmKinCb0ORgH5YT6QEPNEdPG5BIrV919", "RrpZp1EIRgeOUq", "Ca1SPfl0dz9KAt", "zhmlwbNwPznx", "7jJUrwGry4mih92LDU6O3PWbUCa6TtH4", "sKESQRPWVDqFwHnN3GkmIQDR7e7o03aB", "zO7umpSxplFyuffK9okpPTJ", "H4akUxKhPo45mOW6T86EyDo0HkYEEM5g"};
    public final InterfaceC1046Gr A00;

    public RunnableC1047Gs(InterfaceC1046Gr interfaceC1046Gr) {
        this.A00 = interfaceC1046Gr;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A00.ABw();
        } catch (Throwable th) {
            String[] strArr = A01;
            if (strArr[7].charAt(15) != strArr[0].charAt(15)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[5] = "GDxGCrC4dpg2r7Xv0BfDxqnxSKrgagP1";
            strArr2[4] = "VpgUhJfq71uWqUUos9O7NvvplilxX9fX";
            K0.A00(th, this);
        }
    }
}
