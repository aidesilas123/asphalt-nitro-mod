package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class EB extends C1507Yt {
    public static String[] A00 = {"ebBTtcDfrXbt7XUNv2xXXzukgR", "AfSrg72OINfokWlk8lEehE43rER54C5K", "DLWRAT6zkYb5ZQ4lVerhsjeXnJdmq546", "HcA6UXt4lgXnqoCqWVxSHZRcl", "xLJGdEWbtHtgosfXVcR1IwW", "KlZdBiYd7CYsgOQcQxjIKqODuE8wujbn", "gwTEk6Fa0GjLNEZ2sqovA8E7SRT86ppt", "mobLesdsIst7Z6gfBQK3QOgi9WAmLStS"};

    public EB(C5J c5j) {
        super(c5j, null);
    }

    public /* synthetic */ EB(C5J c5j, C5F c5f) {
        this(c5j);
    }

    @Override // com.facebook.ads.redexgen.X.C1507Yt, com.facebook.ads.redexgen.X.InterfaceC1173Lt
    public final void A3z(String str) {
        if (this.A00.get() == null) {
            return;
        }
        C5J c5j = this.A00.get();
        if (A00[1].charAt(12) != 'k') {
            throw new RuntimeException();
        }
        A00[0] = "wcnlDkVPCotGmNFV8gEH10X6";
        c5j.A0F(str);
        String strA02 = EnumC1270Pm.A08.A02();
        String strA022 = EnumC1270Pm.A09.A02();
        if (str.equals(strA02)) {
            this.A00.get().finish(11);
        } else if (str.equals(strA022)) {
            this.A00.get().finish(12);
        }
    }

    @Override // com.facebook.ads.redexgen.X.C1507Yt, com.facebook.ads.redexgen.X.InterfaceC1173Lt
    public final void A40(String str, C8Y c8y) {
        super.A40(str, c8y);
    }
}
