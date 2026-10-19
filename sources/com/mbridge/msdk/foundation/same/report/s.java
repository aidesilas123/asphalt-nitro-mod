package com.mbridge.msdk.foundation.same.report;

import android.text.TextUtils;
import com.json.b4;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.aa;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: SameCommonReporter.java */
/* JADX INFO: loaded from: classes4.dex */
public final class s {
    private final String a;
    private final Map<String, String> b;

    /* JADX INFO: compiled from: SameCommonReporter.java */
    public static class a {
        private final String a;
        private final Map<String, String> b = new HashMap();

        public a(String str) {
            this.a = str;
        }

        public final a a(String str, String str2) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    this.b.put(str, str2);
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        aa.d("SameCommonReporter", e2.getMessage());
                    }
                }
            }
            return this;
        }

        public final s a() {
            return new s(this);
        }
    }

    /* JADX INFO: compiled from: SameCommonReporter.java */
    private static final class b extends com.mbridge.msdk.foundation.same.report.d.b {
        @Override // com.mbridge.msdk.foundation.same.report.d.b
        public final void onFailed(String str) {
            if (MBridgeConstans.DEBUG) {
                aa.a("SameCommonReporter", "report failed for： " + str);
            }
        }

        @Override // com.mbridge.msdk.foundation.same.report.d.b
        public final void onSuccess(String str) {
            if (MBridgeConstans.DEBUG) {
                aa.a("SameCommonReporter", "report success for： " + str);
            }
        }
    }

    private s(a aVar) {
        this.a = aVar.a;
        this.b = aVar.b;
    }

    private String a(Map<String, String> map) {
        if (map != null && map.size() != 0) {
            StringBuilder sb = new StringBuilder();
            try {
                for (String str : map.keySet()) {
                    if (!TextUtils.isEmpty(str)) {
                        String strEncode = map.get(str);
                        if (!TextUtils.isEmpty(strEncode)) {
                            try {
                                strEncode = URLEncoder.encode(strEncode, b4.L);
                            } catch (Exception e2) {
                                if (MBridgeConstans.DEBUG) {
                                    aa.d("SameCommonReporter", e2.getMessage());
                                }
                            }
                            sb.append(o2.i.c);
                            sb.append(str);
                            sb.append(o2.i.b);
                            sb.append(strEncode);
                        }
                    }
                }
            } catch (Exception e3) {
                if (MBridgeConstans.DEBUG) {
                    aa.d("SameCommonReporter", e3.getMessage());
                }
                sb = null;
            }
            if (sb != null && sb.length() > 0) {
                return sb.toString();
            }
        }
        return null;
    }

    public final void a(String str) {
        String strA;
        if (TextUtils.isEmpty(this.a)) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("key=");
        sb.append(this.a);
        com.mbridge.msdk.foundation.same.net.h.d dVarA = null;
        try {
            strA = a(this.b);
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                aa.d("SameCommonReporter", e2.getMessage());
            }
            strA = null;
        }
        if (!TextUtils.isEmpty(strA)) {
            sb.append(strA);
        }
        if (k.a().c()) {
            k.a().a(sb.toString());
            return;
        }
        try {
            dVarA = q.a(sb.toString(), com.mbridge.msdk.foundation.controller.b.d().g(), str);
        } catch (Exception e3) {
            if (MBridgeConstans.DEBUG) {
                aa.d("SameCommonReporter", e3.getMessage());
            }
        }
        if (dVarA != null) {
            try {
                new com.mbridge.msdk.foundation.same.report.d.a(com.mbridge.msdk.foundation.controller.b.d().g()).post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, dVarA, new b());
            } catch (Exception e4) {
                if (MBridgeConstans.DEBUG) {
                    aa.d("SameCommonReporter", e4.getMessage());
                }
            }
        }
    }
}
