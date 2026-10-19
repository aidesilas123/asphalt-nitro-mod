package com.mbridge.msdk.reward.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.json.p2;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.q;
import com.mbridge.msdk.foundation.download.DownloadError;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.n;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ac;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.k;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.video.bt.module.MBridgeBTContainer;
import com.mbridge.msdk.videocommon.a;
import com.mbridge.msdk.videocommon.download.g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

/* JADX INFO: compiled from: RewardCampaignsResourceManager.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b {
    private static ConcurrentHashMap<String, a> b;
    private final h a;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f7337d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f7338e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f7339f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile List<WindVaneWebView> f7340g;

    /* JADX INFO: compiled from: RewardCampaignsResourceManager.java */
    private static class a {
        boolean a;
        boolean b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f7357d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        String f7358e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        String f7359f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f7360g;
        CopyOnWriteArrayList<CampaignEx> h;
        CopyOnWriteArrayList<CampaignEx> i;

        public a(boolean z, boolean z2, int i, int i2, String str, String str2, int i3, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            this.a = z;
            this.b = z2;
            this.c = i;
            this.f7357d = i2;
            this.f7358e = str;
            this.f7359f = str2;
            this.f7360g = i3;
            this.h = copyOnWriteArrayList;
            this.i = new CopyOnWriteArrayList<>(copyOnWriteArrayList);
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.reward.adapter.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: RewardCampaignsResourceManager.java */
    private static class C0417b extends com.mbridge.msdk.mbsignalcommon.b.a {
        private final Handler a;
        private final Runnable b;
        private final boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f7361d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f7362e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f7363f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f7364g;
        private String h;
        private String i;
        private a.C0437a j;
        private CampaignEx k;
        private CopyOnWriteArrayList<CampaignEx> l;
        private com.mbridge.msdk.videocommon.d.c m;
        private final j n;
        private boolean o;
        private boolean p;
        private boolean q;
        private int r = 0;
        private boolean s;
        private long t;

        public C0417b(boolean z, Handler handler, Runnable runnable, boolean z2, boolean z3, int i, String str, String str2, String str3, String str4, a.C0437a c0437a, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.videocommon.d.c cVar, j jVar, boolean z4, long j) {
            this.a = handler;
            this.b = runnable;
            this.c = z2;
            this.f7361d = z3;
            this.f7362e = i;
            this.f7363f = str;
            this.h = str2;
            this.f7364g = str3;
            this.i = str4;
            this.j = c0437a;
            this.k = campaignEx;
            this.l = copyOnWriteArrayList;
            this.m = cVar;
            this.n = jVar;
            this.o = z4;
            this.s = z;
            this.t = j;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.b.a, com.mbridge.msdk.mbsignalcommon.windvane.d
        public final void a(WebView webView) {
            if (webView != null) {
                try {
                    try {
                        LinkedHashMap<String, View> linkedHashMapB = com.mbridge.msdk.video.bt.a.c.a().b(this.f7364g, this.i);
                        if (linkedHashMapB != null && !linkedHashMapB.isEmpty()) {
                            for (View view : linkedHashMapB.values()) {
                                if (view instanceof MBridgeBTContainer) {
                                    ((MBridgeBTContainer) view).addNativeCloseButtonWhenWebViewCrash();
                                }
                            }
                        }
                    } catch (Throwable th) {
                        aa.d("OperateViews", th.getMessage());
                    }
                } catch (Throwable th2) {
                    aa.d("RVWindVaneWebView", th2.getMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.b.a, com.mbridge.msdk.mbsignalcommon.windvane.d
        public final void a(WebView webView, int i) {
            Runnable runnable;
            try {
                HashMap map = new HashMap();
                map.put("result", i + "");
                map.put("type", "1");
                com.mbridge.msdk.foundation.same.report.m.a().a("2000155", this.k, map);
            } catch (Throwable th) {
                aa.d("RVWindVaneWebView", th.getMessage());
            }
            if (this.q) {
                return;
            }
            try {
                com.mbridge.msdk.reward.c.a.a(this.k, com.mbridge.msdk.foundation.controller.b.d().g(), "preload tpl readyState: " + i, this.f7364g, this.f7361d, this.i, this.k.getRequestIdNotice(), System.currentTimeMillis() - this.t);
            } catch (Exception unused) {
            }
            String str = this.f7364g + "_" + this.f7363f;
            if (i == 1) {
                if (this.o) {
                    com.mbridge.msdk.videocommon.a.e(this.f7364g + "_" + this.i);
                } else {
                    com.mbridge.msdk.videocommon.a.d(this.f7364g + "_" + this.i);
                }
                com.mbridge.msdk.videocommon.a.a(this.f7364g + "_" + this.i + "_" + this.f7363f, this.j, true, this.o);
                Handler handler = this.a;
                if (handler != null && (runnable = this.b) != null) {
                    handler.removeCallbacks(runnable);
                }
                com.mbridge.msdk.videocommon.download.i.a().d(this.f7364g + "_" + this.i + "_" + this.f7363f, true);
                a.C0437a c0437a = this.j;
                if (c0437a != null) {
                    c0437a.a(true);
                }
                j jVar = this.n;
                if (jVar != null) {
                    jVar.a(str, this.h, this.f7364g, this.i, this.f7363f, this.j);
                }
            } else {
                com.mbridge.msdk.videocommon.download.i.a().d(this.f7364g + "_" + this.i + "_" + this.f7363f, false);
                a.C0437a c0437a2 = this.j;
                if (c0437a2 != null) {
                    c0437a2.a(false);
                }
                if (this.n != null) {
                    this.n.a(str, this.h, this.f7364g, this.i, this.f7363f, this.j, new com.mbridge.msdk.foundation.entity.e(8, "state 2"));
                }
            }
            this.q = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.b.a, com.mbridge.msdk.mbsignalcommon.windvane.d
        public final void a(WebView webView, int i, String str, String str2) {
            super.a(webView, i, str, str2);
            com.mbridge.msdk.videocommon.download.i.a().d(this.f7364g + "_" + this.i + "_" + this.f7363f, false);
            if (this.n != null) {
                String str3 = this.f7364g + "_" + this.f7363f;
                a.C0437a c0437a = this.j;
                if (c0437a != null) {
                    c0437a.a(false);
                }
                this.n.a(str3, this.h, this.f7364g, this.i, this.f7363f, this.j, new com.mbridge.msdk.foundation.entity.e(8, str));
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.b.a, com.mbridge.msdk.mbsignalcommon.windvane.d
        public final void a(WebView webView, String str) {
            Runnable runnable;
            super.a(webView, str);
            if (this.p) {
                return;
            }
            try {
                com.mbridge.msdk.reward.c.a.a(this.k, com.mbridge.msdk.foundation.controller.b.d().g(), "preload tpl onPageFinish", this.f7364g, this.f7361d, this.i, this.k.getRequestIdNotice(), System.currentTimeMillis() - this.t);
            } catch (Exception unused) {
            }
            String str2 = this.f7364g + "_" + this.f7363f;
            if (!str.contains("wfr=1")) {
                com.mbridge.msdk.videocommon.download.i.a().d(this.f7364g + "_" + this.i + "_" + this.f7363f, true);
                Handler handler = this.a;
                if (handler != null && (runnable = this.b) != null) {
                    handler.removeCallbacks(runnable);
                }
                a.C0437a c0437a = this.j;
                if (c0437a != null) {
                    c0437a.a(true);
                }
                j jVar = this.n;
                if (jVar != null) {
                    jVar.a(str2, this.h, this.f7364g, this.i, this.f7363f, this.j);
                }
            }
            com.mbridge.msdk.mbsignalcommon.windvane.g.a().a(webView);
            this.p = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.b.a
        public final void a(WebView webView, String str, String str2, int i, int i2) {
            boolean z = true;
            if (i == 1) {
                try {
                    com.mbridge.msdk.reward.b.a aVar = new com.mbridge.msdk.reward.b.a();
                    aVar.b(false);
                    if (i2 != 2) {
                        z = false;
                    }
                    aVar.a(z);
                    aVar.b(str, str2);
                    aVar.a(new com.mbridge.msdk.video.bt.module.b.a(null));
                    aVar.a(false, (Map<String, String>) new HashMap());
                } catch (Exception unused) {
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:36:0x00f8 A[Catch: all -> 0x0131, TRY_LEAVE, TryCatch #1 {all -> 0x0131, blocks: (B:16:0x0067, B:18:0x006d, B:21:0x0075, B:23:0x0083, B:24:0x0088, B:27:0x00b1, B:29:0x00b5, B:30:0x00be, B:32:0x00cc, B:34:0x00dc, B:35:0x00e2, B:36:0x00f8, B:37:0x00fd, B:40:0x0125, B:42:0x0129), top: B:55:0x0067, inners: #0, #2 }] */
        @Override // com.mbridge.msdk.mbsignalcommon.b.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void a(java.lang.Object r18, java.lang.String r19) {
            /*
                Method dump skipped, instruction units count: 329
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.b.C0417b.a(java.lang.Object, java.lang.String):void");
        }
    }

    /* JADX INFO: compiled from: RewardCampaignsResourceManager.java */
    public interface c {
        void a(String str, String str2, String str3, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList);

        void a(String str, String str2, String str3, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, com.mbridge.msdk.foundation.entity.e eVar);
    }

    /* JADX INFO: compiled from: RewardCampaignsResourceManager.java */
    private static final class d implements g.b {
        private int b;
        private final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f7365d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f7366e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private CampaignEx f7367f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private i f7368g;
        private Handler h;
        private CopyOnWriteArrayList<CampaignEx> i;
        private boolean a = false;
        private final long j = System.currentTimeMillis();

        public d(int i, String str, String str2, String str3, CampaignEx campaignEx, i iVar, Handler handler, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            this.b = i;
            this.c = str;
            this.f7365d = str2;
            this.f7366e = str3;
            this.f7367f = campaignEx;
            this.f7368g = iVar;
            this.h = handler;
            this.i = copyOnWriteArrayList;
        }

        private void a(final int i, final long j, final String str, final String str2, final String str3) {
            com.mbridge.msdk.foundation.same.f.b.b().execute(new Runnable() { // from class: com.mbridge.msdk.reward.adapter.b.d.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (d.this.f7367f == null) {
                        return;
                    }
                    try {
                        n nVar = new n("2000043", i, j + "", str, d.this.f7367f.getId(), d.this.f7365d, str2, MBridgeConstans.API_REUQEST_CATEGORY_APP);
                        nVar.n(d.this.f7367f.getRequestId());
                        nVar.o(d.this.f7367f.getCurrentLRid());
                        nVar.p(d.this.f7367f.getRequestIdNotice());
                        nVar.r(d.this.f7367f.getId());
                        nVar.c(d.this.f7367f.getAdSpaceT());
                        if (d.this.f7367f.getAdType() == 287) {
                            nVar.h("3");
                        } else if (d.this.f7367f.getAdType() == 94) {
                            nVar.h("1");
                        }
                        if (!TextUtils.isEmpty(str3)) {
                            nVar.m(str3);
                        }
                        b.a(nVar, d.this.f7367f);
                        com.mbridge.msdk.foundation.same.report.n.a(nVar, d.this.f7365d, d.this.f7367f);
                    } catch (Exception e2) {
                        if (MBridgeConstans.DEBUG) {
                            aa.d("RewardCampaignsResourceManager", e2.getLocalizedMessage());
                        }
                    }
                }
            });
        }

        @Override // com.mbridge.msdk.videocommon.download.g.a
        public final void a(String str, String str2) {
            com.mbridge.msdk.videocommon.download.i.a().b(str, false);
            int i = this.b;
            if (i == 313) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 201;
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f7365d);
                bundle.putString(MBridgeConstans.PLACEMENT_ID, this.c);
                bundle.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, this.f7366e);
                bundle.putString("url", str);
                bundle.putString("message", str2);
                messageObtain.setData(bundle);
                this.h.sendMessage(messageObtain);
                return;
            }
            if (i == 497) {
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 201;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f7365d);
                bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.c);
                bundle2.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, this.f7366e);
                bundle2.putString("url", str);
                bundle2.putString("message", str2);
                messageObtain2.setData(bundle2);
                this.h.sendMessage(messageObtain2);
                if (this.a) {
                    a(21, System.currentTimeMillis() - this.j, str, "url download failed", "");
                    return;
                }
                return;
            }
            if (i != 859) {
                return;
            }
            Message messageObtain3 = Message.obtain();
            messageObtain3.what = 205;
            Bundle bundle3 = new Bundle();
            bundle3.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f7365d);
            bundle3.putString(MBridgeConstans.PLACEMENT_ID, this.c);
            bundle3.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, this.f7366e);
            bundle3.putString("message", str2);
            messageObtain3.setData(bundle3);
            this.h.sendMessage(messageObtain3);
            if (this.f7368g != null) {
                try {
                    this.f7368g.a(this.c, this.f7365d, this.f7366e, str, new com.mbridge.msdk.foundation.entity.e(6, str2));
                } catch (Exception unused) {
                }
            }
        }

        @Override // com.mbridge.msdk.videocommon.download.g.a
        public final void a(String str, String str2, boolean z) {
            com.mbridge.msdk.videocommon.download.i.a().b(str, true);
            int i = this.b;
            if (i == 313) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 101;
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f7365d);
                bundle.putString(MBridgeConstans.PLACEMENT_ID, this.c);
                bundle.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, this.f7366e);
                bundle.putString("url", str);
                messageObtain.setData(bundle);
                this.h.sendMessage(messageObtain);
                return;
            }
            if (i == 497) {
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 101;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f7365d);
                bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.c);
                bundle2.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, this.f7366e);
                bundle2.putString("url", str);
                messageObtain2.setData(bundle2);
                this.h.sendMessage(messageObtain2);
                if (this.a) {
                    a(20, System.currentTimeMillis() - this.j, str, "", str2);
                    return;
                }
                return;
            }
            if (i != 859) {
                return;
            }
            Message messageObtain3 = Message.obtain();
            messageObtain3.what = 105;
            Bundle bundle3 = new Bundle();
            bundle3.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.f7365d);
            bundle3.putString(MBridgeConstans.PLACEMENT_ID, this.c);
            bundle3.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, this.f7366e);
            messageObtain3.setData(bundle3);
            this.h.sendMessage(messageObtain3);
            i iVar = this.f7368g;
            if (iVar != null) {
                iVar.a(this.c, this.f7365d, this.f7366e, str);
            }
        }

        public final void a(boolean z) {
            this.a = z;
        }
    }

    /* JADX INFO: compiled from: RewardCampaignsResourceManager.java */
    private static final class e implements com.mbridge.msdk.foundation.same.c.c {
        private Handler a;
        private int b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f7372d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f7373e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private CampaignEx f7374f;

        public e(Handler handler, int i, String str, String str2, String str3, CampaignEx campaignEx) {
            this.a = handler;
            this.b = i;
            this.f7372d = str;
            this.c = str2;
            this.f7373e = str3;
            this.f7374f = campaignEx;
        }

        @Override // com.mbridge.msdk.foundation.same.c.c
        public final void onFailedLoad(final String str, String str2) {
            Message messageObtain = Message.obtain();
            messageObtain.what = this.b == 0 ? 202 : 204;
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.c);
            bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f7372d);
            bundle.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, this.f7373e);
            messageObtain.setData(bundle);
            this.a.sendMessage(messageObtain);
            Runnable runnable = new Runnable() { // from class: com.mbridge.msdk.reward.adapter.b.e.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (e.this.f7374f != null) {
                        try {
                            q qVarA = q.a(com.mbridge.msdk.foundation.db.h.a(com.mbridge.msdk.foundation.controller.b.d().g()));
                            aa.a("RewardCampaignsResourceManager", "campaign is null");
                            n nVar = new n();
                            nVar.s("2000044");
                            nVar.d(w.r(com.mbridge.msdk.foundation.controller.b.d().g()));
                            nVar.r(e.this.f7374f.getId());
                            nVar.d(e.this.f7374f.getImageUrl());
                            nVar.n(e.this.f7374f.getRequestId());
                            nVar.p(e.this.f7374f.getRequestIdNotice());
                            nVar.q(e.this.c);
                            nVar.t(str);
                            qVarA.a(nVar);
                        } catch (Exception e2) {
                            if (MBridgeConstans.DEBUG) {
                                aa.d("RewardCampaignsResourceManager", e2.getLocalizedMessage());
                            }
                        }
                    }
                }
            };
            com.mbridge.msdk.foundation.controller.c.a();
            com.mbridge.msdk.foundation.same.f.b.a().execute(runnable);
        }

        @Override // com.mbridge.msdk.foundation.same.c.c
        public final void onSuccessLoad(Bitmap bitmap, String str) {
            com.mbridge.msdk.videocommon.download.i.a().c(str, true);
            Message messageObtain = Message.obtain();
            messageObtain.what = this.b == 0 ? 102 : 104;
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.c);
            bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f7372d);
            bundle.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, this.f7373e);
            messageObtain.setData(bundle);
            this.a.sendMessage(messageObtain);
        }
    }

    /* JADX INFO: compiled from: RewardCampaignsResourceManager.java */
    private static final class f implements com.mbridge.msdk.videocommon.listener.a {
        private Handler a;
        private final String b;
        private final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f7375d;

        public f(Handler handler, String str, String str2, String str3) {
            this.a = handler;
            this.c = str;
            this.b = str2;
            this.f7375d = str3;
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public final void a(String str) {
            com.mbridge.msdk.videocommon.download.i.a().a(str, true);
            Message messageObtain = Message.obtain();
            messageObtain.what = 100;
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.b);
            bundle.putString(MBridgeConstans.PLACEMENT_ID, this.c);
            bundle.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, this.f7375d);
            bundle.putString("url", str);
            messageObtain.setData(bundle);
            this.a.sendMessage(messageObtain);
        }

        @Override // com.mbridge.msdk.videocommon.listener.a
        public final void a(String str, String str2) {
            com.mbridge.msdk.videocommon.download.i.a().a(str2, false);
            Message messageObtain = Message.obtain();
            messageObtain.what = 200;
            Bundle bundle = new Bundle();
            bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.b);
            bundle.putString(MBridgeConstans.PLACEMENT_ID, this.c);
            bundle.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, this.f7375d);
            bundle.putString("url", str2);
            bundle.putString("message", str);
            messageObtain.setData(bundle);
            this.a.sendMessage(messageObtain);
        }
    }

    /* JADX INFO: compiled from: RewardCampaignsResourceManager.java */
    private static final class g implements g.d {
        private Context b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f7376d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f7377e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private CampaignEx f7378f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f7379g;
        private Handler h;
        private i i;
        private CopyOnWriteArrayList<CampaignEx> j;
        private boolean a = false;
        private long k = System.currentTimeMillis();

        public g(Context context, String str, String str2, String str3, CampaignEx campaignEx, int i, Handler handler, i iVar, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            this.b = context;
            this.f7376d = str;
            this.c = str2;
            this.f7377e = str3;
            this.f7378f = campaignEx;
            this.f7379g = i;
            this.h = handler;
            this.i = iVar;
            this.j = copyOnWriteArrayList;
        }

        private void a(final int i, final long j, final String str, final String str2, final String str3) {
            com.mbridge.msdk.foundation.same.f.b.b().execute(new Runnable() { // from class: com.mbridge.msdk.reward.adapter.b.g.2
                @Override // java.lang.Runnable
                public final void run() {
                    if (g.this.f7378f == null) {
                        return;
                    }
                    try {
                        n nVar = new n("2000043", i, j + "", str, g.this.f7378f.getId(), g.this.c, str2, "1");
                        nVar.n(g.this.f7378f.getRequestId());
                        nVar.o(g.this.f7378f.getCurrentLRid());
                        nVar.p(g.this.f7378f.getRequestIdNotice());
                        nVar.r(g.this.f7378f.getId());
                        nVar.c(g.this.f7378f.getAdSpaceT());
                        nVar.m(str3);
                        if (g.this.f7378f.getAdType() == 287) {
                            nVar.h("3");
                        } else if (g.this.f7378f.getAdType() == 94) {
                            nVar.h("1");
                        }
                        b.a(nVar, g.this.f7378f);
                        com.mbridge.msdk.foundation.same.report.n.a(nVar, g.this.c, g.this.f7378f);
                    } catch (Exception e2) {
                        if (MBridgeConstans.DEBUG) {
                            aa.d("RewardCampaignsResourceManager", e2.getLocalizedMessage());
                        }
                    }
                }
            });
        }

        private void a(final int i, final String str, final String str2, final String str3) {
            com.mbridge.msdk.foundation.same.f.b.b().execute(new Runnable() { // from class: com.mbridge.msdk.reward.adapter.b.g.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (g.this.f7378f == null || g.this.b == null) {
                        return;
                    }
                    try {
                        n nVar = new n();
                        nVar.s("2000045");
                        if (g.this.b != null) {
                            nVar.d(w.r(g.this.b.getApplicationContext()));
                        }
                        nVar.e(i);
                        if (g.this.f7378f != null) {
                            nVar.r(g.this.f7378f.getId());
                            nVar.n(g.this.f7378f.getRequestId());
                            nVar.o(g.this.f7378f.getCurrentLRid());
                            nVar.p(g.this.f7378f.getRequestIdNotice());
                        }
                        nVar.i(str);
                        nVar.t(str2);
                        nVar.q(g.this.c);
                        if (!TextUtils.isEmpty(str3)) {
                            nVar.m(str3);
                        }
                        if (!ac.a().a("r_l_b_m_t_r_i", true)) {
                            q.a(com.mbridge.msdk.foundation.db.h.a(com.mbridge.msdk.foundation.controller.b.d().g())).a(nVar);
                            return;
                        }
                        nVar.a(2);
                        b.a(nVar, g.this.f7378f);
                        com.mbridge.msdk.foundation.same.report.m.a().a(nVar, g.this.f7378f);
                    } catch (Exception e2) {
                        if (MBridgeConstans.DEBUG) {
                            aa.d("RewardCampaignsResourceManager", e2.getLocalizedMessage());
                        }
                    }
                }
            });
        }

        @Override // com.mbridge.msdk.videocommon.download.g.a
        public final void a(String str, String str2) {
            com.mbridge.msdk.videocommon.download.i.a().b(str2, false);
            long jCurrentTimeMillis = System.currentTimeMillis() - this.k;
            int i = this.f7379g;
            if (i == 313) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 101;
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.c);
                bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f7376d);
                bundle.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, this.f7377e);
                bundle.putString("url", str2);
                bundle.putString("message", str);
                messageObtain.setData(bundle);
                this.h.sendMessage(messageObtain);
                return;
            }
            if (i == 497) {
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 201;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.c);
                bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.f7376d);
                bundle2.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, this.f7377e);
                bundle2.putString("url", str2);
                bundle2.putString("message", str);
                messageObtain2.setData(bundle2);
                this.h.sendMessage(messageObtain2);
                if (this.a) {
                    a(3, jCurrentTimeMillis, str2, "zip download failed", "");
                    return;
                }
                return;
            }
            if (i != 859) {
                return;
            }
            Message messageObtain3 = Message.obtain();
            messageObtain3.what = 203;
            Bundle bundle3 = new Bundle();
            bundle3.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.c);
            bundle3.putString(MBridgeConstans.PLACEMENT_ID, this.f7376d);
            bundle3.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, this.f7377e);
            bundle3.putString("url", str2);
            bundle3.putString("message", str);
            messageObtain3.setData(bundle3);
            this.h.sendMessage(messageObtain3);
            if (this.i != null) {
                try {
                    this.i.a(this.f7376d, this.c, this.f7377e, str2, new com.mbridge.msdk.foundation.entity.e(6, str));
                } catch (Exception unused) {
                }
            }
            a(3, str2, str, "");
        }

        @Override // com.mbridge.msdk.videocommon.download.g.a
        public final void a(String str, String str2, boolean z) {
            com.mbridge.msdk.videocommon.download.i.a().b(str, true);
            long jCurrentTimeMillis = System.currentTimeMillis() - this.k;
            int i = this.f7379g;
            if (i == 313) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 101;
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.c);
                bundle.putString(MBridgeConstans.PLACEMENT_ID, this.f7376d);
                bundle.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, this.f7377e);
                bundle.putString("url", str);
                messageObtain.setData(bundle);
                this.h.sendMessage(messageObtain);
                return;
            }
            if (i == 497) {
                Message messageObtain2 = Message.obtain();
                messageObtain2.what = 101;
                Bundle bundle2 = new Bundle();
                bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.c);
                bundle2.putString(MBridgeConstans.PLACEMENT_ID, this.f7376d);
                bundle2.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, this.f7377e);
                bundle2.putString("url", str);
                messageObtain2.setData(bundle2);
                this.h.sendMessage(messageObtain2);
                if (this.a) {
                    a(14, jCurrentTimeMillis, str, "", str2);
                    return;
                }
                return;
            }
            if (i != 859) {
                return;
            }
            Message messageObtain3 = Message.obtain();
            messageObtain3.what = 103;
            Bundle bundle3 = new Bundle();
            bundle3.putString(MBridgeConstans.PROPERTIES_UNIT_ID, this.c);
            bundle3.putString(MBridgeConstans.PLACEMENT_ID, this.f7376d);
            bundle3.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, this.f7377e);
            messageObtain3.setData(bundle3);
            this.h.sendMessage(messageObtain3);
            i iVar = this.i;
            if (iVar != null) {
                iVar.a(this.f7376d, this.c, this.f7377e, str);
            }
            if (z) {
                return;
            }
            a(1, str, "", str2);
        }

        public final void a(boolean z) {
            this.a = z;
        }
    }

    /* JADX INFO: compiled from: RewardCampaignsResourceManager.java */
    private static final class h extends Handler {
        private Context a;
        private ConcurrentHashMap<String, c> b;
        private ConcurrentHashMap<String, CopyOnWriteArrayList<CampaignEx>> c;

        public h(Looper looper) {
            super(looper);
            this.b = new ConcurrentHashMap<>();
            this.c = new ConcurrentHashMap<>();
        }

        public final void a(Context context) {
            this.a = context;
        }

        public final void a(String str, String str2, String str3, c cVar) {
            this.b.put(str2 + "_" + str3, cVar);
        }

        public final void a(String str, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList) {
            this.c.put(str, copyOnWriteArrayList);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            boolean zA;
            Bundle data = message.getData();
            String string = data.getString(MBridgeConstans.PLACEMENT_ID);
            String string2 = data.getString(MBridgeConstans.PROPERTIES_UNIT_ID);
            String string3 = data.getString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID);
            String str = string2 + "_" + string3;
            a aVar = (a) b.b.get(str);
            c cVar = this.b.get(str);
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.c.get(str);
            int i = message.what;
            switch (i) {
                case 100:
                case 101:
                case 102:
                case 103:
                case 104:
                case 105:
                case 106:
                    break;
                default:
                    switch (i) {
                        case 200:
                        case 201:
                        case 203:
                        case 205:
                            if (aVar != null && cVar != null) {
                                String string4 = data.getString("message");
                                if (string4 == null) {
                                    string4 = "";
                                }
                                com.mbridge.msdk.foundation.entity.e eVar = new com.mbridge.msdk.foundation.entity.e(message.what, "resource download failed " + b.b(message.what) + " " + string4, true);
                                CampaignEx campaignEx = null;
                                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = aVar.h;
                                if (copyOnWriteArrayList2 != null && copyOnWriteArrayList2.size() > 0) {
                                    campaignEx = aVar.h.get(0);
                                }
                                try {
                                    try {
                                        if (!aVar.a || aVar.i == null) {
                                            if (com.mbridge.msdk.videocommon.download.c.getInstance().a(94, aVar.f7358e, aVar.b, aVar.f7357d, aVar.a, aVar.c, copyOnWriteArrayList)) {
                                                cVar.a(string, string2, string3, aVar.h);
                                            } else {
                                                if (campaignEx != null && campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0) {
                                                    int i2 = message.what;
                                                    if (i2 != 200) {
                                                        if (i2 != 201) {
                                                            if (i2 != 203) {
                                                                if (i2 == 205 && campaignEx.getRsIgnoreCheckRule().contains(3)) {
                                                                }
                                                            } else if (campaignEx.getRsIgnoreCheckRule().contains(1)) {
                                                            }
                                                        } else if (campaignEx.getRsIgnoreCheckRule().contains(2)) {
                                                        }
                                                    } else if (campaignEx.getRsIgnoreCheckRule().contains(0)) {
                                                    }
                                                }
                                                cVar.a(string, string2, string3, aVar.h, eVar);
                                            }
                                            this.b.remove(str);
                                            b.b.remove(str);
                                            this.c.remove(str);
                                        } else if (aVar.c == 1) {
                                            if (campaignEx != null && campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0) {
                                                int i3 = message.what;
                                                if (i3 != 200) {
                                                    if (i3 != 201) {
                                                        if (i3 != 203) {
                                                            if (i3 == 205) {
                                                                if (!campaignEx.getRsIgnoreCheckRule().contains(3)) {
                                                                    CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList3 = aVar.h;
                                                                    if (copyOnWriteArrayList3 != null && copyOnWriteArrayList3.size() > 0) {
                                                                        CampaignEx campaignEx2 = aVar.h.get(0);
                                                                        if (campaignEx2.getCMPTEntryUrl().equals(campaignEx2.getendcard_url()) && campaignEx.getRsIgnoreCheckRule().contains(2)) {
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } else if (campaignEx.getRsIgnoreCheckRule().contains(1)) {
                                                        }
                                                    } else if (campaignEx.getRsIgnoreCheckRule().contains(2)) {
                                                    }
                                                } else if (campaignEx.getRsIgnoreCheckRule().contains(0)) {
                                                }
                                            }
                                            cVar.a(string, string2, string3, aVar.h, eVar);
                                            this.b.remove(str);
                                            b.b.remove(str);
                                            this.c.remove(str);
                                        } else {
                                            String string5 = data.getString("url");
                                            int i4 = message.what;
                                            if (i4 == 200) {
                                                if (campaignEx != null && campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(0)) {
                                                    aa.b("RewardCampaignsResourceManager", "Is TPL but  video download fail but hit ignoreCheckRule");
                                                } else {
                                                    for (int i5 = 0; i5 < aVar.i.size(); i5++) {
                                                        if (aVar.i.get(i5).getVideoUrlEncode().equals(string5)) {
                                                            aVar.i.remove(i5);
                                                        }
                                                    }
                                                    b.b.remove(str);
                                                    b.b.put(str, aVar);
                                                }
                                                break;
                                            } else if (i4 == 201) {
                                                if (campaignEx != null && campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(2)) {
                                                    aa.b("RewardCampaignsResourceManager", "Is TPL but download endcard fail but hit ignoreCheckRule");
                                                } else {
                                                    for (int i6 = 0; i6 < aVar.i.size(); i6++) {
                                                        CampaignEx campaignEx3 = aVar.i.get(i6);
                                                        if (campaignEx3.getRewardTemplateMode() != null && campaignEx3.getRewardTemplateMode().d().equals(string5)) {
                                                            aVar.i.remove(i6);
                                                        }
                                                        if (!TextUtils.isEmpty(campaignEx3.getendcard_url()) && campaignEx3.getendcard_url().equals(string5)) {
                                                            aVar.i.remove(i6);
                                                        }
                                                    }
                                                    b.b.remove(str);
                                                    b.b.put(str, aVar);
                                                }
                                                break;
                                            } else if (i4 == 203) {
                                                if (campaignEx != null && campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(1)) {
                                                    aa.b("RewardCampaignsResourceManager", "Is TPL but download template fail but hit ignoreCheckRule");
                                                } else {
                                                    for (int i7 = 0; i7 < aVar.i.size(); i7++) {
                                                        CampaignEx campaignEx4 = aVar.i.get(i7);
                                                        if (campaignEx4.getRewardTemplateMode() != null && campaignEx4.getRewardTemplateMode().e().equals(string5)) {
                                                            aVar.i.remove(i7);
                                                        }
                                                    }
                                                    b.b.remove(str);
                                                    b.b.put(str, aVar);
                                                }
                                                break;
                                            } else if (i4 == 205) {
                                                if (campaignEx != null && campaignEx.getRsIgnoreCheckRule() != null && campaignEx.getRsIgnoreCheckRule().size() > 0 && campaignEx.getRsIgnoreCheckRule().contains(3)) {
                                                    aa.b("RewardCampaignsResourceManager", "Is TPL but download BTL Template fail but hit ignoreCheckRule");
                                                } else {
                                                    aVar.i.clear();
                                                    b.b.remove(str);
                                                    b.b.put(str, aVar);
                                                }
                                                break;
                                            }
                                            if (com.mbridge.msdk.videocommon.download.c.getInstance().a(94, aVar.f7358e, aVar.b, aVar.f7357d, aVar.a, aVar.c, copyOnWriteArrayList)) {
                                                cVar.a(string, string2, string3, aVar.h);
                                                this.b.remove(str);
                                                b.b.remove(str);
                                                this.c.remove(str);
                                            } else if (aVar.i.size() == 0) {
                                                cVar.a(string, string2, string3, aVar.h, eVar);
                                                this.b.remove(str);
                                                b.b.remove(str);
                                                this.c.remove(str);
                                            }
                                        }
                                    } catch (Exception unused) {
                                        cVar.a(string, string2, string3, aVar.h, eVar);
                                        return;
                                    }
                                    break;
                                } catch (Exception unused2) {
                                }
                            }
                            break;
                    }
                    return;
            }
            if (aVar == null || cVar == null) {
                return;
            }
            try {
                zA = com.mbridge.msdk.videocommon.download.c.getInstance().a(94, aVar.f7358e, aVar.b, aVar.f7357d, aVar.a, aVar.c, copyOnWriteArrayList);
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    aa.d("RewardCampaignsResourceManager", e2.getLocalizedMessage());
                }
                zA = false;
            }
            if (zA) {
                cVar.a(string, string2, string3, aVar.h);
                this.b.remove(str);
                b.b.remove(str);
                this.c.remove(str);
            }
        }
    }

    /* JADX INFO: compiled from: RewardCampaignsResourceManager.java */
    public interface i {
        void a(String str, String str2, String str3, String str4);

        void a(String str, String str2, String str3, String str4, com.mbridge.msdk.foundation.entity.e eVar);
    }

    /* JADX INFO: compiled from: RewardCampaignsResourceManager.java */
    public interface j {
        void a(String str, String str2, String str3, String str4, String str5, a.C0437a c0437a);

        void a(String str, String str2, String str3, String str4, String str5, a.C0437a c0437a, com.mbridge.msdk.foundation.entity.e eVar);
    }

    /* JADX INFO: compiled from: RewardCampaignsResourceManager.java */
    private static class k extends com.mbridge.msdk.mbsignalcommon.b.b {
        private Handler a;
        private Runnable b;
        private final boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f7385d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f7386e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final j f7387f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final WindVaneWebView f7388g;
        private final String h;
        private final String i;
        private final String j;
        private final a.C0437a k;
        private final CampaignEx l;
        private CopyOnWriteArrayList<CampaignEx> m;
        private long n;
        private boolean o;
        private boolean p;
        private final Runnable q;
        private final Runnable r;

        public k(Handler handler, Runnable runnable, boolean z, final boolean z2, final String str, final j jVar, WindVaneWebView windVaneWebView, final String str2, final String str3, final String str4, final a.C0437a c0437a, final CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, final long j) {
            this.a = handler;
            this.b = runnable;
            this.c = z;
            this.f7385d = z2;
            this.f7386e = str;
            this.f7387f = jVar;
            this.f7388g = windVaneWebView;
            this.h = str2;
            this.i = str4;
            this.j = str3;
            this.k = c0437a;
            this.l = campaignEx;
            this.m = copyOnWriteArrayList;
            this.n = j;
            Runnable runnable2 = new Runnable() { // from class: com.mbridge.msdk.reward.adapter.b.k.1
                @Override // java.lang.Runnable
                public final void run() {
                    WindVaneWebView windVaneWebViewA;
                    a.C0437a c0437a2;
                    if (jVar != null && (c0437a2 = c0437a) != null) {
                        c0437a2.a(true);
                        com.mbridge.msdk.videocommon.download.i.a().d(str4 + "_" + str + "_" + str2, true);
                        try {
                            com.mbridge.msdk.reward.c.a.a(campaignEx, com.mbridge.msdk.foundation.controller.b.d().g(), "WebView onPageFinish timeout exception after 5s", str4, z2, str, campaignEx.getRequestIdNotice(), System.currentTimeMillis() - j);
                        } catch (Exception unused) {
                        }
                        jVar.a(str4 + "_" + str2, str3, str4, str, str2, c0437a);
                    }
                    a.C0437a c0437a3 = c0437a;
                    if (c0437a3 == null || (windVaneWebViewA = c0437a3.a()) == null) {
                        return;
                    }
                    try {
                        windVaneWebViewA.release();
                    } catch (Exception unused2) {
                    }
                }
            };
            this.r = runnable2;
            this.q = new Runnable() { // from class: com.mbridge.msdk.reward.adapter.b.k.2
                @Override // java.lang.Runnable
                public final void run() {
                    WindVaneWebView windVaneWebViewA;
                    a.C0437a c0437a2;
                    if (jVar != null && (c0437a2 = c0437a) != null) {
                        c0437a2.a(true);
                        com.mbridge.msdk.videocommon.download.i.a().d(str4 + "_" + str + "_" + str2, true);
                        try {
                            com.mbridge.msdk.reward.c.a.a(campaignEx, com.mbridge.msdk.foundation.controller.b.d().g(), "WebView readyState timeout exception after 5s", str4, z2, str, campaignEx.getRequestIdNotice(), System.currentTimeMillis() - j);
                        } catch (Exception unused) {
                        }
                        jVar.a(str4 + "_" + str2, str3, str4, str, str2, c0437a);
                    }
                    a.C0437a c0437a3 = c0437a;
                    if (c0437a3 == null || (windVaneWebViewA = c0437a3.a()) == null) {
                        return;
                    }
                    try {
                        windVaneWebViewA.release();
                    } catch (Exception unused2) {
                    }
                }
            };
            if (handler != null) {
                handler.postDelayed(runnable2, 5000L);
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.b.b, com.mbridge.msdk.mbsignalcommon.windvane.d
        public final void a(WebView webView, int i) {
            Handler handler;
            Runnable runnable;
            Runnable runnable2;
            super.a(webView, i);
            Handler handler2 = this.a;
            if (handler2 != null && (runnable2 = this.q) != null) {
                handler2.removeCallbacks(runnable2);
            }
            Handler handler3 = this.a;
            if (handler3 != null && (runnable = this.r) != null) {
                handler3.removeCallbacks(runnable);
            }
            try {
                HashMap map = new HashMap();
                map.put("result", i + "");
                map.put("type", MBridgeConstans.API_REUQEST_CATEGORY_APP);
                com.mbridge.msdk.foundation.same.report.m.a().a("2000155", this.l, map);
            } catch (Throwable th) {
                aa.d("WindVaneWebView", th.getMessage());
            }
            if (this.p) {
                return;
            }
            try {
                com.mbridge.msdk.reward.c.a.a(this.l, com.mbridge.msdk.foundation.controller.b.d().g(), "preload temp readState: " + i, this.i, this.f7385d, this.f7386e, this.l.getRequestIdNotice(), System.currentTimeMillis() - this.n);
            } catch (Exception unused) {
            }
            String str = this.i + "_" + this.h;
            if (i == 1) {
                Runnable runnable3 = this.b;
                if (runnable3 != null && (handler = this.a) != null) {
                    handler.removeCallbacks(runnable3);
                }
                com.mbridge.msdk.videocommon.download.i.a().d(this.i + "_" + this.f7386e + "_" + this.h, true);
                a.C0437a c0437a = this.k;
                if (c0437a != null) {
                    c0437a.a(true);
                }
                if (this.c) {
                    if (this.f7385d) {
                        com.mbridge.msdk.videocommon.a.a(287, this.l.getRequestIdNotice(), this.k);
                    } else {
                        com.mbridge.msdk.videocommon.a.b(287, this.l.getRequestIdNotice(), this.k);
                    }
                } else if (this.f7385d) {
                    com.mbridge.msdk.videocommon.a.a(94, this.l.getRequestIdNotice(), this.k);
                } else {
                    com.mbridge.msdk.videocommon.a.b(94, this.l.getRequestIdNotice(), this.k);
                }
                j jVar = this.f7387f;
                if (jVar != null) {
                    jVar.a(str, this.j, this.i, this.f7386e, this.h, this.k);
                }
            } else if (this.f7387f != null) {
                this.f7387f.a(str, this.j, this.i, this.f7386e, this.h, this.k, new com.mbridge.msdk.foundation.entity.e(9, "state " + i));
            }
            this.p = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.b.b, com.mbridge.msdk.mbsignalcommon.windvane.d
        public final void a(WebView webView, int i, String str, String str2) {
            super.a(webView, i, str, str2);
            com.mbridge.msdk.videocommon.download.i.a().d(this.i + "_" + this.f7386e + "_" + this.h, false);
            try {
                com.mbridge.msdk.reward.c.a.a(this.l, com.mbridge.msdk.foundation.controller.b.d().g(), "WebView onReceivedError exception: " + str, this.i, this.f7385d, this.f7386e, this.l.getRequestIdNotice(), System.currentTimeMillis() - this.n);
            } catch (Exception unused) {
            }
            Handler handler = this.a;
            if (handler != null) {
                if (this.q != null) {
                    handler.removeCallbacks(this.r);
                }
                Runnable runnable = this.q;
                if (runnable != null) {
                    this.a.removeCallbacks(runnable);
                }
            }
            try {
                String str3 = this.i + "_" + this.h;
                a.C0437a c0437a = this.k;
                if (c0437a != null) {
                    c0437a.a(false);
                }
                if (this.f7387f != null) {
                    this.f7387f.a(str3, this.j, this.i, this.f7386e, str2, this.k, new com.mbridge.msdk.foundation.entity.e(8, str));
                }
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    aa.d("WindVaneWebView", e2.getLocalizedMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.b.b, com.mbridge.msdk.mbsignalcommon.windvane.d
        public final void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            super.a(webView, sslErrorHandler, sslError);
            com.mbridge.msdk.videocommon.download.i.a().d(this.i + "_" + this.f7386e + "_" + this.h, false);
            try {
                CampaignEx campaignEx = this.l;
                Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
                StringBuilder sb = new StringBuilder();
                sb.append("WebView onReceivedSslError exception: ");
                sb.append(sslError == null ? "SSLError" : Integer.toString(sslError.getPrimaryError()));
                com.mbridge.msdk.reward.c.a.a(campaignEx, contextG, sb.toString(), this.i, this.f7385d, this.f7386e, this.l.getRequestIdNotice(), System.currentTimeMillis() - this.n);
            } catch (Exception unused) {
            }
            Handler handler = this.a;
            if (handler != null) {
                if (this.q != null) {
                    handler.removeCallbacks(this.r);
                }
                Runnable runnable = this.q;
                if (runnable != null) {
                    this.a.removeCallbacks(runnable);
                }
            }
            try {
                String str = this.i + "_" + this.h;
                a.C0437a c0437a = this.k;
                if (c0437a != null) {
                    c0437a.a(false);
                }
                if (this.f7387f != null) {
                    this.f7387f.a(str, this.j, this.i, this.f7386e, this.h, this.k, new com.mbridge.msdk.foundation.entity.e(8, sslError == null ? "" : Integer.toString(sslError.getPrimaryError())));
                }
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    aa.d("WindVaneWebView", e2.getLocalizedMessage());
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.b.b, com.mbridge.msdk.mbsignalcommon.windvane.d
        public final void a(WebView webView, String str) {
            Runnable runnable;
            Handler handler;
            Runnable runnable2;
            super.a(webView, str);
            Handler handler2 = this.a;
            if (handler2 != null && (runnable2 = this.r) != null) {
                handler2.removeCallbacks(runnable2);
            }
            if (this.o) {
                return;
            }
            try {
                com.mbridge.msdk.reward.c.a.a(this.l, com.mbridge.msdk.foundation.controller.b.d().g(), "preload temp onPageFinish", this.i, this.f7385d, this.f7386e, this.l.getRequestIdNotice(), System.currentTimeMillis() - this.n);
            } catch (Exception unused) {
            }
            if (str.contains("wfr=1")) {
                Handler handler3 = this.a;
                if (handler3 != null && (runnable = this.q) != null) {
                    handler3.postDelayed(runnable, 5000L);
                }
            } else {
                String str2 = this.i + "_" + this.h;
                com.mbridge.msdk.videocommon.download.i.a().d(this.i + "_" + this.f7386e + "_" + this.h, true);
                Runnable runnable3 = this.b;
                if (runnable3 != null && (handler = this.a) != null) {
                    handler.removeCallbacks(runnable3);
                }
                a.C0437a c0437a = this.k;
                if (c0437a != null) {
                    c0437a.a(true);
                }
                if (this.c) {
                    if (this.l.isBidCampaign()) {
                        com.mbridge.msdk.videocommon.a.a(287, this.l.getRequestIdNotice(), this.k);
                    } else {
                        com.mbridge.msdk.videocommon.a.b(287, this.l.getRequestIdNotice(), this.k);
                    }
                } else if (this.l.isBidCampaign()) {
                    com.mbridge.msdk.videocommon.a.a(94, this.l.getRequestIdNotice(), this.k);
                } else {
                    com.mbridge.msdk.videocommon.a.b(94, this.l.getRequestIdNotice(), this.k);
                }
                j jVar = this.f7387f;
                if (jVar != null) {
                    jVar.a(str2, this.j, this.i, this.f7386e, this.h, this.k);
                }
            }
            com.mbridge.msdk.mbsignalcommon.windvane.g.a().a(webView);
            this.o = true;
        }
    }

    /* JADX INFO: compiled from: RewardCampaignsResourceManager.java */
    private static class l extends com.mbridge.msdk.mbsignalcommon.b.b {
        private String a;
        private final boolean b;
        private final WindVaneWebView c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f7397d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f7398e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final a.C0437a f7399f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final CampaignEx f7400g;
        private boolean h;
        private String i;
        private boolean j;
        private boolean k;

        public l(String str, boolean z, WindVaneWebView windVaneWebView, String str2, String str3, a.C0437a c0437a, CampaignEx campaignEx, boolean z2, String str4) {
            this.b = z;
            this.c = windVaneWebView;
            this.f7397d = str2;
            this.f7398e = str3;
            this.f7399f = c0437a;
            this.f7400g = campaignEx;
            this.a = str;
            this.h = z2;
            this.i = str4;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.b.b, com.mbridge.msdk.mbsignalcommon.windvane.d
        public final void a(WebView webView, int i) {
            try {
                HashMap map = new HashMap();
                map.put("result", i + "");
                map.put("type", MBridgeConstans.API_REUQEST_CATEGORY_APP);
                com.mbridge.msdk.foundation.same.report.m.a().a("2000155", this.f7400g, map);
            } catch (Throwable th) {
                aa.d("WindVaneWebView", th.getMessage());
            }
            if (this.k) {
                return;
            }
            if (this.c != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", this.a);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("result", i);
                    jSONObject2.put("error", "");
                    jSONObject.put("data", jSONObject2);
                    com.mbridge.msdk.mbsignalcommon.windvane.g.a().a((WebView) this.c, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        aa.d("WindVaneWebView", e2.getLocalizedMessage());
                    }
                }
            }
            String str = this.f7398e + "_" + this.f7400g.getId() + "_" + this.f7400g.getRequestId() + "_" + this.f7397d;
            if (i == 1) {
                com.mbridge.msdk.videocommon.download.i.a().d(this.f7398e + "_" + this.i + "_" + this.f7397d, true);
                a.C0437a c0437a = this.f7399f;
                if (c0437a != null) {
                    c0437a.a(true);
                }
                if (this.b) {
                    if (this.f7400g.isBidCampaign()) {
                        com.mbridge.msdk.videocommon.a.a(str, this.f7399f, false, this.h);
                    } else {
                        com.mbridge.msdk.videocommon.a.a(str, this.f7399f, false, this.h);
                    }
                } else if (this.f7400g.isBidCampaign()) {
                    com.mbridge.msdk.videocommon.a.a(str, this.f7399f, false, this.h);
                } else {
                    com.mbridge.msdk.videocommon.a.a(str, this.f7399f, false, this.h);
                }
            } else {
                com.mbridge.msdk.videocommon.download.i.a().d(this.f7398e + "_" + this.i + "_" + this.f7397d, false);
                a.C0437a c0437a2 = this.f7399f;
                if (c0437a2 != null) {
                    c0437a2.a(false);
                }
            }
            this.k = true;
        }

        @Override // com.mbridge.msdk.mbsignalcommon.b.b, com.mbridge.msdk.mbsignalcommon.windvane.d
        public final void a(WebView webView, int i, String str, String str2) {
            com.mbridge.msdk.videocommon.download.i.a().d(this.f7398e + "_" + this.i + "_" + this.f7397d, false);
            a.C0437a c0437a = this.f7399f;
            if (c0437a != null) {
                c0437a.a(false);
            }
            if (this.c != null) {
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("id", this.a);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("result", 2);
                    jSONObject2.put("error", str);
                    jSONObject.put("data", jSONObject2);
                    com.mbridge.msdk.mbsignalcommon.windvane.g.a().a((WebView) this.c, "onSubPlayTemplateViewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        aa.d("WindVaneWebView", e2.getLocalizedMessage());
                    }
                }
            }
        }

        @Override // com.mbridge.msdk.mbsignalcommon.b.b, com.mbridge.msdk.mbsignalcommon.windvane.d
        public final void a(WebView webView, String str) {
            if (this.j) {
                return;
            }
            if (!str.contains("wfr=1")) {
                if (this.c != null) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("id", this.a);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("result", 1);
                        jSONObject2.put("error", "");
                        jSONObject.put("data", jSONObject2);
                        com.mbridge.msdk.mbsignalcommon.windvane.g.a().a((WebView) this.c, "componentReact", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    } catch (Exception e2) {
                        if (MBridgeConstans.DEBUG) {
                            aa.d("WindVaneWebView", e2.getLocalizedMessage());
                        }
                    }
                }
                com.mbridge.msdk.videocommon.download.i.a().d(this.f7398e + "_" + this.i + "_" + this.f7397d, true);
                a.C0437a c0437a = this.f7399f;
                if (c0437a != null) {
                    c0437a.a(true);
                }
                String str2 = this.f7398e + "_" + this.f7400g.getId() + "_" + this.f7400g.getRequestId() + "_" + this.f7397d;
                if (this.b) {
                    if (this.f7400g.isBidCampaign()) {
                        com.mbridge.msdk.videocommon.a.a(287, this.f7400g.getRequestIdNotice(), this.f7399f);
                    } else {
                        com.mbridge.msdk.videocommon.a.a(str2, this.f7399f, false, this.h);
                    }
                } else if (this.f7400g.isBidCampaign()) {
                    com.mbridge.msdk.videocommon.a.a(94, this.f7400g.getRequestIdNotice(), this.f7399f);
                } else {
                    com.mbridge.msdk.videocommon.a.a(str2, this.f7399f, false, this.h);
                }
            }
            com.mbridge.msdk.mbsignalcommon.windvane.g.a().a(webView);
            this.j = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: RewardCampaignsResourceManager.java */
    static final class m {
        private static final b a = new b();
    }

    private b() {
        this.f7337d = CampaignEx.JSON_KEY_LOCAL_REQUEST_ID;
        this.f7338e = "down_type";
        this.f7339f = "h3c";
        this.f7340g = new ArrayList(6);
        HandlerThread handlerThread = new HandlerThread("mb-reward-load-thread");
        b = new ConcurrentHashMap<>();
        handlerThread.start();
        this.a = new h(handlerThread.getLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return 0;
        }
        try {
            if (campaignEx.getAabEntity() != null) {
                return campaignEx.getAabEntity().h3c;
            }
            return 0;
        } catch (Throwable th) {
            aa.d("RewardCampaignsResourceManager", th.getMessage());
            return 0;
        }
    }

    private synchronized WindVaneWebView a(boolean z) {
        return null;
    }

    public static b a() {
        return m.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i2, final CampaignEx campaignEx, String str, String str2) {
        com.mbridge.msdk.foundation.tools.k.a(i2, str, str2, new k.a() { // from class: com.mbridge.msdk.reward.adapter.b.2
            @Override // com.mbridge.msdk.foundation.tools.k.a
            public final void a(String str3, DownloadError downloadError) {
                String message = "";
                if (downloadError != null) {
                    try {
                        if (downloadError.getException() != null) {
                            message = downloadError.getException().getMessage();
                        }
                    } catch (Exception e2) {
                        if (MBridgeConstans.DEBUG) {
                            e2.printStackTrace();
                            return;
                        }
                        return;
                    }
                }
                n nVar = new n();
                int i3 = i2;
                if (i3 == 0) {
                    nVar.a(1);
                    nVar.e(3);
                    nVar.s("2000045");
                } else if (i3 == 1) {
                    nVar.a(2);
                    nVar.e(3);
                    nVar.s("2000045");
                } else if (i3 == 2) {
                    nVar.a(3);
                    nVar.e(3);
                    nVar.s("2000043");
                    nVar.b(campaignEx.isMraid() ? n.a : n.b);
                    nVar.g("1");
                }
                b.a(nVar, campaignEx);
                nVar.r(campaignEx.getId());
                nVar.f(str3);
                nVar.n(campaignEx.getRequestId());
                nVar.o(campaignEx.getCurrentLRid());
                nVar.p(campaignEx.getRequestIdNotice());
                nVar.t(message);
                com.mbridge.msdk.foundation.same.report.m.a().a(nVar, campaignEx);
            }

            @Override // com.mbridge.msdk.foundation.tools.k.a
            public final void a(String str3, String str4, String str5, String str6, boolean z) {
                if (z) {
                    return;
                }
                try {
                    n nVar = new n();
                    int i3 = i2;
                    if (i3 == 0) {
                        nVar.a(1);
                        nVar.e(1);
                        nVar.s("2000045");
                    } else if (i3 == 1) {
                        nVar.a(2);
                        nVar.e(1);
                        nVar.s("2000045");
                    } else if (i3 == 2) {
                        nVar.e(14);
                        nVar.s("2000043");
                        nVar.b(campaignEx.isMraid() ? n.a : n.b);
                        nVar.g("1");
                    }
                    b.a(nVar, campaignEx);
                    nVar.r(campaignEx.getId());
                    nVar.f(str3);
                    nVar.n(campaignEx.getRequestId());
                    nVar.o(campaignEx.getCurrentLRid());
                    nVar.p(campaignEx.getRequestIdNotice());
                    nVar.m(str6);
                    com.mbridge.msdk.foundation.same.report.m.a().a(nVar, campaignEx);
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        e2.printStackTrace();
                    }
                }
            }
        }, campaignEx);
    }

    static /* synthetic */ void a(n nVar, CampaignEx campaignEx) {
        try {
            com.mbridge.msdk.videocommon.d.c cVarA = com.mbridge.msdk.videocommon.d.b.a().a(com.mbridge.msdk.foundation.controller.b.d().h(), campaignEx.getCampaignUnitId());
            if (cVarA != null) {
                nVar.l(cVarA.l());
            }
            com.mbridge.msdk.videocommon.d.a aVarB = com.mbridge.msdk.videocommon.d.b.a().b();
            if (aVarB != null) {
                nVar.k(aVarB.c());
            }
        } catch (Exception e2) {
            aa.d("RewardCampaignsResourceManager", e2.getMessage());
        }
    }

    static /* synthetic */ void a(b bVar, final Context context, final int i2, final CampaignEx campaignEx, final String str, final String str2, final String str3, final String str4) {
        com.mbridge.msdk.foundation.same.f.b.b().execute(new Runnable() { // from class: com.mbridge.msdk.reward.adapter.b.4
            @Override // java.lang.Runnable
            public final void run() {
                if (campaignEx == null || context == null) {
                    return;
                }
                try {
                    n nVar = new n();
                    nVar.s("2000045");
                    Context context2 = context;
                    if (context2 != null) {
                        nVar.d(w.r(context2.getApplicationContext()));
                    }
                    nVar.e(i2);
                    CampaignEx campaignEx2 = campaignEx;
                    if (campaignEx2 != null) {
                        nVar.r(campaignEx2.getId());
                        nVar.n(campaignEx.getRequestId());
                        nVar.o(campaignEx.getCurrentLRid());
                        nVar.p(campaignEx.getRequestIdNotice());
                    }
                    nVar.i(str);
                    nVar.t(str2);
                    nVar.q(str3);
                    if (!TextUtils.isEmpty(str4)) {
                        nVar.m(str4);
                    }
                    if (!ac.a().a("r_l_b_m_t_r_i", true)) {
                        q.a(com.mbridge.msdk.foundation.db.h.a(com.mbridge.msdk.foundation.controller.b.d().g())).a(nVar);
                        return;
                    }
                    nVar.a(1);
                    b.a(nVar, campaignEx);
                    com.mbridge.msdk.foundation.same.report.m.a().a(nVar, campaignEx);
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        aa.d("RewardCampaignsResourceManager", e2.getLocalizedMessage());
                    }
                }
            }
        });
    }

    static /* synthetic */ void a(b bVar, Context context, String str, String str2, String str3, CampaignEx campaignEx, String str4, i iVar, CopyOnWriteArrayList copyOnWriteArrayList) {
        if (TextUtils.isEmpty(str4) || campaignEx.isMraid()) {
            return;
        }
        HashMap map = new HashMap();
        try {
            map.put(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID, campaignEx.getCurrentLRid());
            map.put("down_type", "3");
            try {
                map.put("h3c", String.valueOf(bVar.a(campaignEx)));
            } catch (Exception unused) {
            }
        } catch (Exception unused2) {
        }
        if (str4.contains(".zip") && str4.contains("md5filename")) {
            boolean zIsEmpty = TextUtils.isEmpty(com.mbridge.msdk.videocommon.download.g.a().b(str4));
            try {
                g gVar = new g(context, str, str2, str3, campaignEx, 497, bVar.a, iVar, copyOnWriteArrayList);
                gVar.a(zIsEmpty);
                com.mbridge.msdk.videocommon.download.g.a().a(map, str4, gVar);
                return;
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    aa.d("RewardCampaignsResourceManager", e2.getLocalizedMessage());
                    return;
                }
                return;
            }
        }
        boolean zIsEmpty2 = TextUtils.isEmpty(com.mbridge.msdk.videocommon.download.h.a().b(str4));
        try {
            d dVar = new d(497, str, str2, str3, campaignEx, iVar, bVar.a, copyOnWriteArrayList);
            dVar.a(zIsEmpty2);
            com.mbridge.msdk.videocommon.download.g.a().a(map, str4, dVar);
        } catch (Exception e3) {
            if (MBridgeConstans.DEBUG) {
                aa.d("RewardCampaignsResourceManager", e3.getLocalizedMessage());
            }
        }
    }

    static /* synthetic */ void a(b bVar, boolean z, WindVaneWebView windVaneWebView, String str, int i2, CampaignEx campaignEx, CopyOnWriteArrayList copyOnWriteArrayList, String str2, String str3, com.mbridge.msdk.videocommon.d.c cVar, String str4, boolean z2) {
        com.mbridge.msdk.video.signal.a.j jVar;
        String requestId;
        try {
            HashMap map = new HashMap();
            map.put("type", MBridgeConstans.API_REUQEST_CATEGORY_APP);
            com.mbridge.msdk.foundation.same.report.m.a().a(campaignEx);
            com.mbridge.msdk.foundation.same.report.m.a().a("2000154", campaignEx, map);
            a.C0437a c0437a = new a.C0437a();
            WindVaneWebView windVaneWebViewA = m.a.a(false);
            if (windVaneWebViewA == null) {
                windVaneWebViewA = new WindVaneWebView(com.mbridge.msdk.foundation.controller.b.d().g());
                if (campaignEx != null) {
                    windVaneWebViewA.setLocalRequestId(campaignEx.getCurrentLRid());
                    windVaneWebViewA.setTempTypeForMetrics(2);
                }
            }
            WindVaneWebView windVaneWebView2 = windVaneWebViewA;
            c0437a.a(windVaneWebView2);
            if (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) {
                jVar = new com.mbridge.msdk.video.signal.a.j(null, campaignEx);
                requestId = campaignEx.getRequestId();
            } else {
                CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListA = com.mbridge.msdk.videocommon.download.c.getInstance().a(str3);
                if (copyOnWriteArrayListA != null && copyOnWriteArrayListA.size() > 0) {
                    for (int i3 = 0; i3 < copyOnWriteArrayList.size(); i3++) {
                        CampaignEx campaignEx2 = (CampaignEx) copyOnWriteArrayList.get(i3);
                        for (CampaignEx campaignEx3 : copyOnWriteArrayListA) {
                            if (campaignEx3.getId().equals(campaignEx2.getId()) && campaignEx3.getRequestId().equals(campaignEx2.getRequestId())) {
                                campaignEx2.setReady(true);
                                copyOnWriteArrayList.set(i3, campaignEx2);
                            }
                        }
                    }
                }
                jVar = new com.mbridge.msdk.video.signal.a.j(null, campaignEx, copyOnWriteArrayList);
                requestId = ((CampaignEx) copyOnWriteArrayList.get(0)).getRequestId();
            }
            String str5 = requestId;
            com.mbridge.msdk.video.signal.a.j jVar2 = jVar;
            jVar2.a(i2);
            jVar2.a(str3);
            jVar2.c(str4);
            jVar2.a(cVar);
            jVar2.d(z);
            windVaneWebView2.setWebViewListener(new l(str4, false, windVaneWebView, str, str3, c0437a, campaignEx, z2, str5));
            windVaneWebView2.setObject(jVar2);
            windVaneWebView2.loadUrl(str2);
            windVaneWebView2.setRid(str5);
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                aa.d("RewardCampaignsResourceManager", e2.getLocalizedMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized String b(int i2) {
        return i2 != 200 ? i2 != 201 ? i2 != 203 ? i2 != 205 ? "unknown" : "tpl" : p2.D : "zip/html" : "video";
    }

    public final synchronized void a(final Context context, final CampaignEx campaignEx, final String str, final String str2, final String str3, final i iVar) {
        this.a.a(context);
        if (campaignEx != null) {
            String cMPTEntryUrl = campaignEx.getCMPTEntryUrl();
            if (campaignEx.isDynamicView()) {
                if (af.b(MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW, cMPTEntryUrl)) {
                    a(0, campaignEx, campaignEx.getMof_tplid() + "", cMPTEntryUrl);
                }
                com.mbridge.msdk.videocommon.download.i.a().b(cMPTEntryUrl, true);
                Message messageObtain = Message.obtain();
                messageObtain.what = 105;
                Bundle bundle = new Bundle();
                bundle.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                bundle.putString(MBridgeConstans.PLACEMENT_ID, str);
                bundle.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, str3);
                bundle.putString("url", cMPTEntryUrl);
                messageObtain.setData(bundle);
                this.a.sendMessage(messageObtain);
                if (iVar != null) {
                    iVar.a(str, str2, str3, cMPTEntryUrl);
                }
                return;
            }
        }
        if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl())) {
            try {
                HashMap map = new HashMap();
                try {
                    map.put(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID, campaignEx.getCurrentLRid());
                    map.put("down_type", "1");
                    map.put("h3c", String.valueOf(a(campaignEx)));
                } catch (Exception unused) {
                }
                com.mbridge.msdk.videocommon.download.g.a().a(map, campaignEx.getCMPTEntryUrl(), new g.d() { // from class: com.mbridge.msdk.reward.adapter.b.3
                    @Override // com.mbridge.msdk.videocommon.download.g.a
                    public final void a(String str4, String str5) {
                        try {
                            com.mbridge.msdk.videocommon.download.i.a().b(str5, false);
                            Message messageObtain2 = Message.obtain();
                            messageObtain2.what = 205;
                            Bundle bundle2 = new Bundle();
                            bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                            bundle2.putString(MBridgeConstans.PLACEMENT_ID, str);
                            bundle2.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, str3);
                            bundle2.putString("url", str5);
                            bundle2.putString("message", str4);
                            messageObtain2.setData(bundle2);
                            b.this.a.sendMessage(messageObtain2);
                            if (iVar != null) {
                                try {
                                    iVar.a(str, str2, str3, str5, new com.mbridge.msdk.foundation.entity.e(5, str4));
                                } catch (Exception unused2) {
                                }
                            }
                        } catch (Exception e2) {
                            e = e2;
                        }
                        try {
                            b.a(b.this, context, 3, campaignEx, str5, str4, str2, "");
                        } catch (Exception e3) {
                            e = e3;
                            com.mbridge.msdk.videocommon.download.i.a().b(str5, false);
                            Message messageObtain3 = Message.obtain();
                            messageObtain3.what = 105;
                            Bundle bundle3 = new Bundle();
                            bundle3.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                            bundle3.putString(MBridgeConstans.PLACEMENT_ID, str);
                            bundle3.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, str3);
                            bundle3.putString("url", str5);
                            bundle3.putString("message", e.getMessage());
                            messageObtain3.setData(bundle3);
                            b.this.a.sendMessage(messageObtain3);
                            if (iVar != null) {
                                try {
                                    iVar.a(str, str2, str3, str5, new com.mbridge.msdk.foundation.entity.e(5, str4));
                                } catch (Exception unused3) {
                                }
                            }
                            if (MBridgeConstans.DEBUG) {
                                aa.d("RewardCampaignsResourceManager", e.getLocalizedMessage());
                            }
                        }
                    }

                    @Override // com.mbridge.msdk.videocommon.download.g.a
                    public final void a(String str4, String str5, boolean z) {
                        try {
                            com.mbridge.msdk.videocommon.download.i.a().b(str4, true);
                            Message messageObtain2 = Message.obtain();
                            messageObtain2.what = 105;
                            Bundle bundle2 = new Bundle();
                            bundle2.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                            bundle2.putString(MBridgeConstans.PLACEMENT_ID, str);
                            bundle2.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, str3);
                            bundle2.putString("url", str4);
                            messageObtain2.setData(bundle2);
                            b.this.a.sendMessage(messageObtain2);
                            i iVar2 = iVar;
                            if (iVar2 != null) {
                                iVar2.a(str, str2, str3, str4);
                            }
                            if (z) {
                                return;
                            }
                            b.a(b.this, context, 1, campaignEx, str4, "", str2, str5);
                        } catch (Exception e2) {
                            com.mbridge.msdk.videocommon.download.i.a().b(str4, false);
                            Message messageObtain3 = Message.obtain();
                            messageObtain3.what = 205;
                            Bundle bundle3 = new Bundle();
                            bundle3.putString(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
                            bundle3.putString(MBridgeConstans.PLACEMENT_ID, str);
                            bundle3.putString(SDKAnalyticsEvents.PARAMETER_REQUEST_ID, str3);
                            bundle3.putString("url", str4);
                            messageObtain3.setData(bundle3);
                            b.this.a.sendMessage(messageObtain3);
                            if (iVar != null) {
                                try {
                                    iVar.a(str, str2, str3, str4, new com.mbridge.msdk.foundation.entity.e(5, e2.getLocalizedMessage()));
                                } catch (Exception unused2) {
                                }
                            }
                            b.a(b.this, context, 3, campaignEx, str4, e2.getLocalizedMessage(), str2, str5);
                            if (MBridgeConstans.DEBUG) {
                                aa.d("RewardCampaignsResourceManager", e2.getLocalizedMessage());
                            }
                        }
                    }
                });
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    aa.d("RewardCampaignsResourceManager", e2.getLocalizedMessage());
                }
            }
        }
    }

    public final synchronized void a(final Context context, boolean z, int i2, boolean z2, final int i3, final String str, final String str2, final String str3, final CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, c cVar, final i iVar) {
        String str4 = str2 + "_" + str3;
        b.put(str4, new a(z, z2, i2, copyOnWriteArrayList.size(), str2, str3, i3, copyOnWriteArrayList));
        this.a.a(str, str2, str3, cVar);
        this.a.a(context);
        this.a.a(str4, copyOnWriteArrayList);
        this.a.post(new Runnable() { // from class: com.mbridge.msdk.reward.adapter.b.1
            /* JADX WARN: Removed duplicated region for block: B:101:0x02ba  */
            /* JADX WARN: Removed duplicated region for block: B:157:0x028e A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:159:0x025a A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:54:0x0168  */
            /* JADX WARN: Removed duplicated region for block: B:65:0x01c9  */
            /* JADX WARN: Removed duplicated region for block: B:78:0x0232  */
            /* JADX WARN: Removed duplicated region for block: B:81:0x023e  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void run() {
                /*
                    Method dump skipped, instruction units count: 972
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.b.AnonymousClass1.run():void");
            }
        });
    }

    public final synchronized void a(boolean z, Handler handler, boolean z2, boolean z3, WindVaneWebView windVaneWebView, String str, int i2, CampaignEx campaignEx, CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList, String str2, String str3, String str4, String str5, String str6, com.mbridge.msdk.videocommon.d.c cVar, j jVar) {
        WindVaneWebView windVaneWebView2;
        String str7 = str4 + "_" + str;
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
        } catch (Exception e2) {
            e = e2;
        }
        if (af.i(str)) {
            if (jVar != null) {
                jVar.a(str7, str3, str4, str5, str, null);
            }
            return;
        }
        try {
            com.mbridge.msdk.reward.c.a.a(campaignEx, com.mbridge.msdk.foundation.controller.b.d().g(), "start preload template ", str4, z3, str5, str6, System.currentTimeMillis() - jCurrentTimeMillis);
        } catch (Exception unused) {
        }
        HashMap map = new HashMap();
        map.put("type", MBridgeConstans.API_REUQEST_CATEGORY_APP);
        com.mbridge.msdk.foundation.same.report.m.a().a("2000154", campaignEx, map);
        a.C0437a c0437a = new a.C0437a();
        WindVaneWebView windVaneWebViewA = m.a.a(false);
        if (windVaneWebViewA == null) {
            try {
                WindVaneWebView windVaneWebView3 = new WindVaneWebView(com.mbridge.msdk.foundation.controller.b.d().g());
                if (campaignEx != null) {
                    windVaneWebView3.setLocalRequestId(campaignEx.getCurrentLRid());
                }
                windVaneWebView3.setTempTypeForMetrics(2);
                windVaneWebView2 = windVaneWebView3;
            } catch (Exception e3) {
                if (jVar != null) {
                    c0437a.a(true);
                    com.mbridge.msdk.videocommon.download.i.a().d(str4 + "_" + str5 + "_" + str, true);
                    try {
                        com.mbridge.msdk.reward.c.a.a(campaignEx, com.mbridge.msdk.foundation.controller.b.d().g(), "WebView exception: " + e3.getMessage(), str4, z3, str5, str6, System.currentTimeMillis() - jCurrentTimeMillis);
                    } catch (Exception unused2) {
                    }
                    jVar.a(str4 + "_" + str, str3, str4, str5, str, c0437a);
                    return;
                }
                return;
            } catch (Throwable th) {
                if (jVar != null) {
                    c0437a.a(true);
                    com.mbridge.msdk.videocommon.download.i.a().d(str4 + "_" + str5 + "_" + str, true);
                    try {
                        com.mbridge.msdk.reward.c.a.a(campaignEx, com.mbridge.msdk.foundation.controller.b.d().g(), "WebView exception: " + th.getMessage(), str4, z3, str5, str6, System.currentTimeMillis() - jCurrentTimeMillis);
                    } catch (Exception unused3) {
                    }
                    jVar.a(str4 + "_" + str, str3, str4, str5, str, c0437a);
                    return;
                }
                return;
            }
        } else {
            windVaneWebView2 = windVaneWebViewA;
        }
        c0437a.a(windVaneWebView2);
        com.mbridge.msdk.video.signal.a.j jVar2 = (copyOnWriteArrayList == null || copyOnWriteArrayList.size() <= 0) ? new com.mbridge.msdk.video.signal.a.j(null, campaignEx) : new com.mbridge.msdk.video.signal.a.j(null, campaignEx, copyOnWriteArrayList);
        jVar2.a(i2);
        jVar2.a(str4);
        jVar2.a(cVar);
        jVar2.d(z);
        WindVaneWebView windVaneWebView4 = windVaneWebView2;
        try {
            windVaneWebView4.setWebViewListener(new k(handler, null, z2, z3, str5, jVar, windVaneWebView, str, str3, str4, c0437a, campaignEx, copyOnWriteArrayList, jCurrentTimeMillis));
            windVaneWebView4.setObject(jVar2);
            windVaneWebView4.loadUrl(str2);
        } catch (Exception e4) {
            e = e4;
        }
        try {
            windVaneWebView4.setRid(str5);
        } catch (Exception e5) {
            e = e5;
            if (MBridgeConstans.DEBUG) {
                aa.d("RewardCampaignsResourceManager", e.getLocalizedMessage());
            }
            if (jVar != null) {
                jVar.a(str7, str3, str4, str5, str, null, new com.mbridge.msdk.foundation.entity.e(9, e.getLocalizedMessage()));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x01f4 A[Catch: all -> 0x0222, TRY_ENTER, TryCatch #1 {, blocks: (B:4:0x000d, B:7:0x0033, B:10:0x0047, B:11:0x0064, B:13:0x0089, B:15:0x0098, B:16:0x009f, B:17:0x00a2, B:19:0x00bb, B:21:0x00c1, B:23:0x00cb, B:26:0x00d2, B:28:0x00d8, B:29:0x00e2, B:31:0x00e8, B:33:0x00fc, B:35:0x010a, B:37:0x0113, B:38:0x0117, B:40:0x0124, B:42:0x0175, B:44:0x018b, B:46:0x01ab, B:58:0x01f4, B:59:0x0213, B:61:0x0217, B:39:0x011e), top: B:70:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0217 A[Catch: all -> 0x0222, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x000d, B:7:0x0033, B:10:0x0047, B:11:0x0064, B:13:0x0089, B:15:0x0098, B:16:0x009f, B:17:0x00a2, B:19:0x00bb, B:21:0x00c1, B:23:0x00cb, B:26:0x00d2, B:28:0x00d8, B:29:0x00e2, B:31:0x00e8, B:33:0x00fc, B:35:0x010a, B:37:0x0113, B:38:0x0117, B:40:0x0124, B:42:0x0175, B:44:0x018b, B:46:0x01ab, B:58:0x01f4, B:59:0x0213, B:61:0x0217, B:39:0x011e), top: B:70:0x000d }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized void a(boolean r27, android.os.Handler r28, boolean r29, boolean r30, java.lang.String r31, java.lang.String r32, java.lang.String r33, java.lang.String r34, java.lang.String r35, int r36, com.mbridge.msdk.foundation.entity.CampaignEx r37, java.util.concurrent.CopyOnWriteArrayList<com.mbridge.msdk.foundation.entity.CampaignEx> r38, java.lang.String r39, java.lang.String r40, com.mbridge.msdk.videocommon.d.c r41, com.mbridge.msdk.reward.adapter.b.j r42, boolean r43) {
        /*
            Method dump skipped, instruction units count: 549
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.reward.adapter.b.a(boolean, android.os.Handler, boolean, boolean, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, com.mbridge.msdk.foundation.entity.CampaignEx, java.util.concurrent.CopyOnWriteArrayList, java.lang.String, java.lang.String, com.mbridge.msdk.videocommon.d.c, com.mbridge.msdk.reward.adapter.b$j, boolean):void");
    }
}
