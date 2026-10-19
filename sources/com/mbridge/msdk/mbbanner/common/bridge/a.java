package com.mbridge.msdk.mbbanner.common.bridge;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.c.f;
import com.mbridge.msdk.foundation.controller.b;
import com.mbridge.msdk.foundation.db.h;
import com.mbridge.msdk.foundation.db.k;
import com.mbridge.msdk.foundation.db.p;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.m;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ae;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.e;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.mbsignalcommon.base.d;
import com.mbridge.msdk.mbsignalcommon.windvane.g;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: BannerSignalCommunicationImpl.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a extends com.mbridge.msdk.mbsignalcommon.communication.a {
    private WeakReference<Context> b;
    private List<CampaignEx> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7274d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f7275e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f7276f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.mbridge.msdk.mbbanner.common.b.a f7277g;
    private BannerExpandDialog h;
    private boolean i = false;

    public a(Context context, String str, String str2) {
        this.f7274d = str;
        this.f7275e = str2;
        this.b = new WeakReference<>(context);
    }

    private static void a(Object obj, JSONObject jSONObject) {
        String str;
        String str2;
        String str3;
        String str4;
        int i;
        String str5;
        File file;
        JSONObject jSONObject2 = new JSONObject();
        String str6 = "message";
        String str7 = "code";
        int i2 = 1;
        if (jSONObject == null) {
            try {
                jSONObject2.put("code", 1);
                jSONObject2.put("message", "params is null");
                g.a().a(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                return;
            } catch (JSONException e2) {
                aa.a("BannerSignalCommunicationImpl", e2.getMessage());
                return;
            }
        }
        try {
            jSONObject2.put("code", 0);
            jSONObject2.put("message", "");
            JSONArray jSONArray = jSONObject.getJSONArray("resource");
            if (jSONArray != null && jSONArray.length() > 0) {
                JSONArray jSONArray2 = new JSONArray();
                int length = jSONArray.length();
                int i3 = 0;
                while (i3 < length) {
                    JSONObject jSONObject3 = jSONArray.getJSONObject(i3);
                    String strOptString = jSONObject3.optString("ref", "");
                    int i4 = jSONObject3.getInt("type");
                    JSONObject jSONObject4 = new JSONObject();
                    JSONArray jSONArray3 = jSONArray;
                    if (i4 != i2 || TextUtils.isEmpty(strOptString)) {
                        str3 = str6;
                        str4 = str7;
                        i = length;
                        if (i4 == 2 && !TextUtils.isEmpty(strOptString)) {
                            JSONObject jSONObject5 = new JSONObject();
                            jSONObject5.put("type", 2);
                            jSONObject5.put("path", com.mbridge.msdk.videocommon.download.g.a().a(strOptString) == null ? "" : com.mbridge.msdk.videocommon.download.g.a().b(strOptString));
                            jSONObject4.put(strOptString, jSONObject5);
                            jSONArray2.put(jSONObject4);
                        } else if (i4 == 3 && !TextUtils.isEmpty(strOptString)) {
                            try {
                                file = new File(strOptString);
                            } catch (Throwable th) {
                                if (MBridgeConstans.DEBUG) {
                                    th.printStackTrace();
                                }
                            }
                            if (file.exists() && file.isFile() && file.canRead()) {
                                aa.a("BannerSignalCommunicationImpl", "getFileInfo Mraid file " + strOptString);
                                str5 = "file:////" + strOptString;
                            } else {
                                str5 = "";
                            }
                            JSONObject jSONObject6 = new JSONObject();
                            jSONObject6.put("type", 3);
                            jSONObject6.put("path", str5);
                            jSONObject4.put(strOptString, jSONObject6);
                            jSONArray2.put(jSONObject4);
                        } else if (i4 == 4 && !TextUtils.isEmpty(strOptString)) {
                            JSONObject jSONObject7 = new JSONObject();
                            jSONObject7.put("type", 4);
                            jSONObject7.put("path", ae.a(strOptString) == null ? "" : ae.a(strOptString));
                            jSONObject4.put(strOptString, jSONObject7);
                            jSONArray2.put(jSONObject4);
                        }
                    } else {
                        JSONObject jSONObject8 = new JSONObject();
                        m mVarA = p.a(h.a(b.d().g())).a(strOptString);
                        if (mVarA != null) {
                            i = length;
                            aa.a("BannerSignalCommunicationImpl", "VideoBean not null");
                            jSONObject8.put("type", 1);
                            str3 = str6;
                            try {
                                jSONObject8.put("videoDataLength", mVarA.c());
                                String strE = mVarA.e();
                                str4 = str7;
                                if (TextUtils.isEmpty(strE)) {
                                    try {
                                        aa.a("BannerSignalCommunicationImpl", "VideoPath null");
                                        jSONObject8.put("path", "");
                                        jSONObject8.put("path4Web", "");
                                    } catch (Throwable th2) {
                                        th = th2;
                                        str = str3;
                                        str2 = str4;
                                    }
                                } else {
                                    aa.a("BannerSignalCommunicationImpl", "VideoPath not null");
                                    jSONObject8.put("path", strE);
                                    jSONObject8.put("path4Web", strE);
                                }
                                if (mVarA.d() == 5) {
                                    jSONObject8.put("downloaded", 1);
                                } else {
                                    jSONObject8.put("downloaded", 0);
                                }
                                jSONObject4.put(strOptString, jSONObject8);
                                jSONArray2.put(jSONObject4);
                            } catch (Throwable th3) {
                                th = th3;
                                str2 = str7;
                                str = str3;
                                jSONObject2.put(str2, 1);
                                jSONObject2.put(str, th.getLocalizedMessage());
                                g.a().a(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                            }
                        } else {
                            str3 = str6;
                            str4 = str7;
                            i = length;
                            aa.a("BannerSignalCommunicationImpl", "VideoBean null");
                        }
                    }
                    i3++;
                    jSONArray = jSONArray3;
                    length = i;
                    str6 = str3;
                    str7 = str4;
                    i2 = 1;
                }
                str3 = str6;
                str4 = str7;
                jSONObject2.put("resource", jSONArray2);
                g.a().a(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                return;
            }
            str3 = "message";
            str2 = "code";
            try {
                jSONObject2.put(str2, 1);
                str = str3;
                try {
                    try {
                        jSONObject2.put(str, "resource is null");
                        g.a().a(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
                        return;
                    } catch (JSONException e3) {
                        e = e3;
                        aa.a("BannerSignalCommunicationImpl", e.getMessage());
                        return;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            } catch (JSONException e4) {
                e = e4;
                str = str3;
            } catch (Throwable th5) {
                th = th5;
                str = str3;
            }
        } catch (Throwable th6) {
            th = th6;
            str = str6;
            str2 = str7;
        }
        try {
            jSONObject2.put(str2, 1);
            jSONObject2.put(str, th.getLocalizedMessage());
            g.a().a(obj, Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
        } catch (JSONException e5) {
            aa.a("BannerSignalCommunicationImpl", e5.getMessage());
        }
    }

    public final void a() {
        if (this.f7277g != null) {
            this.f7277g = null;
        }
        if (this.h != null) {
            this.h = null;
        }
    }

    public final void a(int i) {
        this.f7276f = i;
    }

    public final void a(com.mbridge.msdk.mbbanner.common.b.a aVar) {
        if (aVar != null) {
            this.f7277g = aVar;
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.a, com.mbridge.msdk.mbsignalcommon.communication.c
    public final void a(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            e eVar = new e(b.d().g());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("dev_close_state", this.f7276f);
            jSONObject.put("sdkSetting", jSONObject2);
            jSONObject.put("device", eVar.a());
            jSONObject.put("campaignList", CampaignEx.parseCamplistToJson(this.c));
            com.mbridge.msdk.c.h hVarE = f.a().e(b.d().h(), this.f7275e);
            if (hVarE == null) {
                hVarE = com.mbridge.msdk.c.h.d(this.f7275e);
            }
            if (!TextUtils.isEmpty(this.f7274d)) {
                hVarE.g(this.f7274d);
            }
            jSONObject.put("unitSetting", hVarE.t());
            String strC = f.a().c(b.d().h());
            if (!TextUtils.isEmpty(strC)) {
                jSONObject.put("appSetting", new JSONObject(strC));
            }
            jSONObject.put("sdk_info", d.a);
            aa.d("BannerSignalCommunicationImpl", o2.a.f6463e + jSONObject.toString());
            g.a().a(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
        } catch (Throwable th) {
            aa.b("BannerSignalCommunicationImpl", o2.a.f6463e, th);
        }
    }

    public final void a(List<CampaignEx> list) {
        this.c = list;
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.a, com.mbridge.msdk.mbsignalcommon.communication.c
    public final void b(Object obj, String str) {
        aa.d("BannerSignalCommunicationImpl", CampaignEx.JSON_NATIVE_VIDEO_CLICK);
        try {
            if (this.c == null || TextUtils.isEmpty(str)) {
                return;
            }
            CampaignEx campaignWithBackData = CampaignEx.parseCampaignWithBackData(new JSONObject(str).getJSONObject("pt"));
            com.mbridge.msdk.mbbanner.common.b.a aVar = this.f7277g;
            if (aVar != null) {
                aVar.a(campaignWithBackData);
            }
        } catch (Throwable th) {
            aa.b("BannerSignalCommunicationImpl", CampaignEx.JSON_NATIVE_VIDEO_CLICK, th);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.a, com.mbridge.msdk.mbsignalcommon.communication.c
    public final void c(Object obj, String str) {
        if (obj != null) {
            try {
                int iOptInt = new JSONObject(str).optInt("isReady", 1);
                g.a().a(obj, com.mbridge.msdk.mbsignalcommon.communication.b.a(0));
                com.mbridge.msdk.mbbanner.common.b.a aVar = this.f7277g;
                if (aVar != null) {
                    aVar.b(iOptInt);
                }
            } catch (Throwable th) {
                aa.b("BannerSignalCommunicationImpl", "readyStatus", th);
            }
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public final void close() {
        aa.d("BannerSignalCommunicationImpl", "close");
        try {
            com.mbridge.msdk.mbbanner.common.b.a aVar = this.f7277g;
            if (aVar != null) {
                aVar.a();
            }
        } catch (Throwable th) {
            aa.b("BannerSignalCommunicationImpl", "close", th);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.a, com.mbridge.msdk.mbsignalcommon.communication.c
    public final void d(Object obj, String str) {
        aa.d("BannerSignalCommunicationImpl", "toggleCloseBtn");
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            int iOptInt = new JSONObject(str).optInt("state");
            com.mbridge.msdk.mbbanner.common.b.a aVar = this.f7277g;
            if (aVar != null) {
                aVar.a(iOptInt);
            }
        } catch (Throwable th) {
            aa.b("BannerSignalCommunicationImpl", "toggleCloseBtn", th);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.a, com.mbridge.msdk.mbsignalcommon.communication.c
    public final void e(Object obj, String str) {
        aa.d("BannerSignalCommunicationImpl", "triggerCloseBtn");
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String strOptString = new JSONObject(str).optString("state");
            com.mbridge.msdk.mbbanner.common.b.a aVar = this.f7277g;
            if (aVar != null) {
                aVar.a(strOptString);
            }
            g.a().a(obj, com.mbridge.msdk.mbsignalcommon.communication.b.a(0));
        } catch (Throwable th) {
            aa.b("BannerSignalCommunicationImpl", "triggerCloseBtn", th);
            g.a().a(obj, com.mbridge.msdk.mbsignalcommon.communication.b.a(-1));
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public final void expand(String str, boolean z) {
        Context context;
        try {
            String bannerUrl = "";
            if (getMraidCampaign() != null) {
                if (TextUtils.isEmpty(getMraidCampaign().getBannerHtml())) {
                    bannerUrl = getMraidCampaign().getBannerUrl();
                } else {
                    bannerUrl = "file:////" + getMraidCampaign().getBannerHtml();
                }
            }
            Bundle bundle = new Bundle();
            if (!TextUtils.isEmpty(str)) {
                bannerUrl = str;
            }
            bundle.putString("url", bannerUrl);
            bundle.putBoolean("shouldUseCustomClose", z);
            WeakReference<Context> weakReference = this.b;
            if (weakReference != null && (context = weakReference.get()) != null) {
                BannerExpandDialog bannerExpandDialog = this.h;
                if (bannerExpandDialog != null && bannerExpandDialog.isShowing()) {
                    return;
                }
                BannerExpandDialog bannerExpandDialog2 = new BannerExpandDialog(context, bundle, this.f7277g);
                this.h = bannerExpandDialog2;
                bannerExpandDialog2.setCampaignList(this.f7275e, this.c);
                this.h.show();
            }
            com.mbridge.msdk.mbbanner.common.b.a aVar = this.f7277g;
            if (aVar != null) {
                aVar.a(true);
            }
            com.mbridge.msdk.mbbanner.common.d.a.a(this.f7275e, getMraidCampaign(), str);
        } catch (Throwable th) {
            aa.b("BannerSignalCommunicationImpl", "expand", th);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public final CampaignEx getMraidCampaign() {
        List<CampaignEx> list = this.c;
        if (list == null || list.size() <= 0) {
            return null;
        }
        return this.c.get(0);
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.a, com.mbridge.msdk.mbsignalcommon.communication.c
    public final void i(Object obj, String str) {
        aa.a("BannerSignalCommunicationImpl", "sendImpressions:" + str);
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(str);
            final ArrayList arrayList = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                String string = jSONArray.getString(i);
                for (CampaignEx campaignEx : this.c) {
                    if (campaignEx.getId().equals(string)) {
                        com.mbridge.msdk.foundation.same.a.d.a(this.f7275e, campaignEx, "banner");
                        arrayList.add(string);
                    }
                }
            }
            new Thread(new Runnable() { // from class: com.mbridge.msdk.mbbanner.common.bridge.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        k kVarA = k.a(h.a(b.d().g()));
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            kVarA.b((String) it.next());
                        }
                    } catch (Exception e2) {
                        aa.d("BannerSignalCommunicationImpl", e2.getMessage());
                    }
                }
            }).start();
        } catch (Throwable th) {
            aa.b("BannerSignalCommunicationImpl", "sendImpressions", th);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.a, com.mbridge.msdk.mbsignalcommon.communication.c
    public final void j(Object obj, String str) {
        if (TextUtils.isEmpty(str)) {
            com.mbridge.msdk.mbsignalcommon.communication.b.a(obj, "params is empty");
            return;
        }
        try {
            a(obj, new JSONObject(str));
        } catch (Throwable th) {
            aa.a("BannerSignalCommunicationImpl", th.getMessage());
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.a, com.mbridge.msdk.mbsignalcommon.communication.c
    public final void k(Object obj, String str) {
        aa.a("BannerSignalCommunicationImpl", "reportUrls:" + str);
        if (TextUtils.isEmpty(str)) {
            com.mbridge.msdk.mbsignalcommon.communication.b.a(obj, "params is null");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                int iOptInt = jSONObject.optInt("type");
                String strA = af.a(jSONObject.optString("url"), "&tun=", w.y() + "");
                int iOptInt2 = jSONObject.optInt("report");
                if (iOptInt2 == 0) {
                    Context contextG = b.d().g();
                    List<CampaignEx> list = this.c;
                    com.mbridge.msdk.click.a.a(contextG, list != null ? list.get(0) : null, "", strA, false, iOptInt != 0);
                } else {
                    Context contextG2 = b.d().g();
                    List<CampaignEx> list2 = this.c;
                    com.mbridge.msdk.click.a.a(contextG2, list2 != null ? list2.get(0) : null, "", strA, false, iOptInt != 0, iOptInt2);
                }
            }
            g.a().a(obj, com.mbridge.msdk.mbsignalcommon.communication.b.a(0));
        } catch (Throwable th) {
            aa.b("BannerSignalCommunicationImpl", "reportUrls", th);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public final void open(String str) {
        aa.d("BannerSignalCommunicationImpl", MRAIDPresenter.OPEN);
        try {
            aa.d("BannerSignalCommunicationImpl", str);
            if (this.c.size() > 1) {
                b.d().g().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                str = null;
            }
            com.mbridge.msdk.mbbanner.common.b.a aVar = this.f7277g;
            if (aVar != null) {
                aVar.a(true, str);
            }
        } catch (Throwable th) {
            aa.b("BannerSignalCommunicationImpl", MRAIDPresenter.OPEN, th);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public final void unload() {
        close();
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public final void useCustomClose(boolean z) {
        int i = z ? 2 : 1;
        try {
            com.mbridge.msdk.mbbanner.common.b.a aVar = this.f7277g;
            if (aVar != null) {
                aVar.a(i);
            }
        } catch (Throwable th) {
            aa.b("BannerSignalCommunicationImpl", "useCustomClose", th);
        }
    }
}
