package com.mbridge.msdk.videocommon;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: TemplateWebviewCache.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    private static ConcurrentHashMap<String, C0437a> a = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, C0437a> b = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, C0437a> c = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static ConcurrentHashMap<String, C0437a> f7580d = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static ConcurrentHashMap<String, C0437a> f7581e = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static ConcurrentHashMap<String, C0437a> f7582f = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static ConcurrentHashMap<String, C0437a> f7583g = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, C0437a> h = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, C0437a> i = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, C0437a> j = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: com.mbridge.msdk.videocommon.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: TemplateWebviewCache.java */
    public static class C0437a {
        private WindVaneWebView a;
        private boolean b;

        public final WindVaneWebView a() {
            return this.a;
        }

        public final void a(WindVaneWebView windVaneWebView) {
            this.a = windVaneWebView;
        }

        public final void a(String str) {
            WindVaneWebView windVaneWebView = this.a;
            if (windVaneWebView != null) {
                windVaneWebView.setTag(str);
            }
        }

        public final void a(boolean z) {
            this.b = z;
        }

        public final String b() {
            WindVaneWebView windVaneWebView = this.a;
            return windVaneWebView != null ? (String) windVaneWebView.getTag() : "";
        }

        public final boolean c() {
            return this.b;
        }
    }

    public static C0437a a(int i2, CampaignEx campaignEx) {
        if (campaignEx == null) {
            return null;
        }
        try {
            String requestIdNotice = campaignEx.getRequestIdNotice();
            if (i2 == 288) {
                requestIdNotice = campaignEx.getKeyIaUrl();
            }
            if (i2 != 94) {
                if (i2 != 287) {
                    if (i2 != 288) {
                        ConcurrentHashMap<String, C0437a> concurrentHashMap = a;
                        if (concurrentHashMap != null && concurrentHashMap.size() > 0) {
                            return a.get(requestIdNotice);
                        }
                    } else {
                        ConcurrentHashMap<String, C0437a> concurrentHashMap2 = f7580d;
                        if (concurrentHashMap2 != null && concurrentHashMap2.size() > 0) {
                            return f7580d.get(requestIdNotice);
                        }
                    }
                } else if (campaignEx.isBidCampaign()) {
                    ConcurrentHashMap<String, C0437a> concurrentHashMap3 = c;
                    if (concurrentHashMap3 != null && concurrentHashMap3.size() > 0) {
                        return c.get(requestIdNotice);
                    }
                } else {
                    ConcurrentHashMap<String, C0437a> concurrentHashMap4 = f7582f;
                    if (concurrentHashMap4 != null && concurrentHashMap4.size() > 0) {
                        return f7582f.get(requestIdNotice);
                    }
                }
            } else if (campaignEx.isBidCampaign()) {
                ConcurrentHashMap<String, C0437a> concurrentHashMap5 = b;
                if (concurrentHashMap5 != null && concurrentHashMap5.size() > 0) {
                    return b.get(requestIdNotice);
                }
            } else {
                ConcurrentHashMap<String, C0437a> concurrentHashMap6 = f7581e;
                if (concurrentHashMap6 != null && concurrentHashMap6.size() > 0) {
                    return f7581e.get(requestIdNotice);
                }
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
        return null;
    }

    public static C0437a a(String str) {
        if (f7583g.containsKey(str)) {
            return f7583g.get(str);
        }
        if (h.containsKey(str)) {
            return h.get(str);
        }
        if (i.containsKey(str)) {
            return i.get(str);
        }
        if (j.containsKey(str)) {
            return j.get(str);
        }
        return null;
    }

    public static void a() {
        i.clear();
        j.clear();
    }

    public static void a(int i2, String str, C0437a c0437a) {
        try {
            if (i2 == 94) {
                if (b == null) {
                    b = new ConcurrentHashMap<>();
                }
                b.put(str, c0437a);
            } else {
                if (i2 != 287) {
                    return;
                }
                if (c == null) {
                    c = new ConcurrentHashMap<>();
                }
                c.put(str, c0437a);
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
    }

    public static void a(String str, C0437a c0437a, boolean z, boolean z2) {
        if (z) {
            if (z2) {
                h.put(str, c0437a);
                return;
            } else {
                f7583g.put(str, c0437a);
                return;
            }
        }
        if (z2) {
            j.put(str, c0437a);
        } else {
            i.put(str, c0437a);
        }
    }

    public static void b(int i2, CampaignEx campaignEx) {
        if (campaignEx == null) {
            return;
        }
        try {
            String requestIdNotice = campaignEx.getRequestIdNotice();
            if (i2 == 288) {
                requestIdNotice = campaignEx.getKeyIaUrl();
            }
            if (i2 == 94) {
                if (campaignEx.isBidCampaign()) {
                    ConcurrentHashMap<String, C0437a> concurrentHashMap = b;
                    if (concurrentHashMap != null) {
                        concurrentHashMap.remove(requestIdNotice);
                        return;
                    }
                    return;
                }
                ConcurrentHashMap<String, C0437a> concurrentHashMap2 = f7581e;
                if (concurrentHashMap2 != null) {
                    concurrentHashMap2.remove(requestIdNotice);
                    return;
                }
                return;
            }
            if (i2 != 287) {
                if (i2 != 288) {
                    ConcurrentHashMap<String, C0437a> concurrentHashMap3 = a;
                    if (concurrentHashMap3 != null) {
                        concurrentHashMap3.remove(requestIdNotice);
                        return;
                    }
                    return;
                }
                ConcurrentHashMap<String, C0437a> concurrentHashMap4 = f7580d;
                if (concurrentHashMap4 != null) {
                    concurrentHashMap4.remove(requestIdNotice);
                    return;
                }
                return;
            }
            if (campaignEx.isBidCampaign()) {
                ConcurrentHashMap<String, C0437a> concurrentHashMap5 = c;
                if (concurrentHashMap5 != null) {
                    concurrentHashMap5.remove(requestIdNotice);
                    return;
                }
                return;
            }
            ConcurrentHashMap<String, C0437a> concurrentHashMap6 = f7582f;
            if (concurrentHashMap6 != null) {
                concurrentHashMap6.remove(requestIdNotice);
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
    }

    public static void b(int i2, String str, C0437a c0437a) {
        try {
            if (i2 == 94) {
                if (f7581e == null) {
                    f7581e = new ConcurrentHashMap<>();
                }
                f7581e.put(str, c0437a);
            } else if (i2 == 287) {
                if (f7582f == null) {
                    f7582f = new ConcurrentHashMap<>();
                }
                f7582f.put(str, c0437a);
            } else if (i2 != 288) {
                if (a == null) {
                    a = new ConcurrentHashMap<>();
                }
                a.put(str, c0437a);
            } else {
                if (f7580d == null) {
                    f7580d = new ConcurrentHashMap<>();
                }
                f7580d.put(str, c0437a);
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
    }

    public static void b(String str) {
        if (f7583g.containsKey(str)) {
            f7583g.remove(str);
        }
        if (i.containsKey(str)) {
            i.remove(str);
        }
        if (h.containsKey(str)) {
            h.remove(str);
        }
        if (j.containsKey(str)) {
            j.remove(str);
        }
    }

    public static void c(String str) {
        if (TextUtils.isEmpty(str)) {
            f7583g.clear();
        } else {
            for (String str2 : f7583g.keySet()) {
                if (!TextUtils.isEmpty(str2) && str2.startsWith(str)) {
                    f7583g.remove(str2);
                }
            }
        }
        h.clear();
    }

    public static void d(String str) {
        for (Map.Entry<String, C0437a> entry : f7583g.entrySet()) {
            if (entry.getKey().contains(str)) {
                f7583g.remove(entry.getKey());
            }
        }
    }

    public static void e(String str) {
        for (Map.Entry<String, C0437a> entry : h.entrySet()) {
            if (entry.getKey().contains(str)) {
                h.remove(entry.getKey());
            }
        }
    }
}
