package com.mbridge.msdk.foundation.same.net.g;

/* JADX INFO: compiled from: CommonHttpConfig.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public static String a(com.mbridge.msdk.foundation.same.net.b.a aVar) {
        if (aVar == null) {
            return "Network error,Load failed";
        }
        try {
            int i = aVar.a;
            com.mbridge.msdk.foundation.same.net.f.c cVar = aVar.b;
            int i2 = cVar != null ? cVar.a : 0;
            if (i == -2) {
                return "Network is canceled";
            }
            switch (i) {
                case 6:
                    if (i2 == 0) {
                    }
                    break;
                case 7:
                    if (i2 == 0) {
                    }
                    break;
                case 13:
                    if (cVar != null) {
                        byte[] bArr = cVar.b;
                        if (bArr == null) {
                        }
                    }
                    break;
            }
            return "Network error,Load failed";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "Network error,Load failed";
        }
    }
}
