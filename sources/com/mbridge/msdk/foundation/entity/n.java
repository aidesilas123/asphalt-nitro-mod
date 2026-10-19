package com.mbridge.msdk.foundation.entity;

import android.content.Context;
import android.text.TextUtils;
import com.json.b4;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.w;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: VideoReportData.java */
/* JADX INFO: loaded from: classes4.dex */
public final class n {
    public static int a = 1;
    public static int b;
    private String A;
    private String B;
    private String C;
    private String D;
    private String E;
    private String F;
    private String G;
    private String H;
    private int J;
    private String L;
    private String M;
    private String N;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7088d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f7089e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f7090f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f7091g;
    private String h;
    private int i;
    private int j;
    private int k;
    private String l;
    private String m;
    private int n;
    private int o;
    private String p;
    private long q;
    private String s;
    private String t;
    private String u;
    private String v;
    private String w;
    private String x;
    private String y;
    private String z;
    private int r = 0;
    private int I = 0;
    private int K = 0;

    public n() {
    }

    public n(Context context, CampaignEx campaignEx, int i, String str, long j, int i2) {
        if (i2 == 1 || i2 == 287 || i2 == 94) {
            this.f7090f = "2000022";
        } else if (i2 == 95) {
            this.f7090f = "2000025";
        }
        int iR = w.r(context);
        this.f7091g = iR;
        this.h = w.a(context, iR);
        this.k = campaignEx.getVideoLength();
        try {
            this.l = URLEncoder.encode(campaignEx.getNoticeUrl() == null ? campaignEx.getClickURL() : campaignEx.getNoticeUrl(), b4.L);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.o = i;
        this.p = str;
        this.q = j == 0 ? campaignEx.getVideoSize() : j;
    }

    public n(String str) {
        this.C = str;
    }

    public n(String str, int i, int i2, int i3, int i4, String str2, String str3, int i5, String str4, int i6, String str5) {
        this.f7090f = str;
        this.f7091g = i;
        this.h = str5;
        this.i = i2;
        this.j = i3;
        this.k = i4;
        try {
            if (!TextUtils.isEmpty(str2)) {
                this.l = URLEncoder.encode(str2, b4.L);
            }
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
        }
        this.m = str3;
        this.o = i5;
        this.p = str4;
        this.q = i6;
    }

    public n(String str, int i, int i2, String str2, int i3, String str3, int i4, String str4) {
        this.f7090f = str;
        this.f7091g = i;
        this.h = str4;
        this.k = i2;
        try {
            if (!TextUtils.isEmpty(str2)) {
                this.l = URLEncoder.encode(str2, b4.L);
            }
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
        }
        this.o = i3;
        this.p = str3;
        this.q = i4;
    }

    public n(String str, int i, String str2, String str3, String str4) {
        this.f7090f = str;
        this.h = str4;
        this.f7091g = i;
        try {
            if (!TextUtils.isEmpty(str2)) {
                this.l = URLEncoder.encode(str2, b4.L);
            }
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
        }
        this.m = str3;
    }

    public n(String str, int i, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f7090f = str;
        this.o = i;
        this.p = str2;
        try {
            if (!TextUtils.isEmpty(str3)) {
                this.E = URLEncoder.encode(str3, b4.L);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.w = str4;
        this.v = str5;
        this.m = str6;
        this.D = str7;
        if (Integer.valueOf(str2).intValue() > com.mbridge.msdk.foundation.same.a.n) {
            this.o = 2;
        }
    }

    public n(String str, String str2, String str3, String str4, String str5, int i) {
        this.f7090f = str;
        this.w = str2;
        this.s = str3;
        this.u = str4;
        this.v = str5;
        this.f7091g = i;
    }

    public n(String str, String str2, String str3, String str4, String str5, int i, int i2, String str6) {
        this.f7090f = str;
        this.w = str2;
        this.s = str3;
        this.u = str4;
        this.v = str5;
        this.f7091g = i;
        this.m = str6;
        this.n = i2;
    }

    public n(String str, String str2, String str3, String str4, String str5, String str6, int i, String str7) {
        this.f7090f = str;
        this.A = str2;
        this.y = str3;
        this.B = str4;
        this.v = str5;
        this.w = str6;
        this.f7091g = i;
        this.h = str7;
    }

    public static String a(n nVar) {
        if (nVar == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=" + nVar.f7090f + o2.i.c);
        stringBuffer.append("cid=" + nVar.w + o2.i.c);
        stringBuffer.append("unit_id=" + nVar.v + o2.i.c);
        stringBuffer.append("network_type=" + nVar.f7091g + o2.i.c);
        stringBuffer.append("rid=" + nVar.s + o2.i.c);
        stringBuffer.append("rid_n=" + nVar.u + o2.i.c);
        StringBuilder sb = new StringBuilder();
        sb.append("reason=");
        sb.append(nVar.x());
        stringBuffer.append(sb.toString());
        stringBuffer.append("\n");
        return stringBuffer.toString();
    }

    public static String a(List<n> list) {
        if (list == null || list.size() <= 0) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (n nVar : list) {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                stringBuffer.append("key=" + nVar.f7090f + o2.i.c);
                stringBuffer.append("network_type=" + nVar.f7091g + o2.i.c);
                stringBuffer.append("network_str=" + nVar.h + o2.i.c);
                stringBuffer.append("reason=" + nVar.x() + o2.i.c);
                stringBuffer.append("cid=" + nVar.w + o2.i.c);
                stringBuffer.append("video_url=" + nVar.F + o2.i.c);
                stringBuffer.append("rid=" + nVar.s + o2.i.c);
                stringBuffer.append("rid_n=" + nVar.u + o2.i.c);
                stringBuffer.append("unit_id=" + nVar.v + o2.i.c);
                StringBuilder sb = new StringBuilder();
                sb.append("offer_url=");
                sb.append(nVar.l);
                stringBuffer.append(sb.toString());
                stringBuffer.append("\n");
            } else {
                stringBuffer.append("key=" + nVar.f7090f + o2.i.c);
                stringBuffer.append("reason=" + nVar.x() + o2.i.c);
                stringBuffer.append("cid=" + nVar.w + o2.i.c);
                stringBuffer.append("video_url=" + nVar.F + o2.i.c);
                stringBuffer.append("rid=" + nVar.s + o2.i.c);
                stringBuffer.append("rid_n=" + nVar.u + o2.i.c);
                stringBuffer.append("unit_id=" + nVar.v + o2.i.c);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("offer_url=");
                sb2.append(nVar.l);
                stringBuffer.append(sb2.toString());
                stringBuffer.append("\n");
            }
        }
        return stringBuffer.toString();
    }

    public static String b(n nVar) {
        if (nVar == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=" + nVar.f7090f + o2.i.c);
        stringBuffer.append("cid=" + nVar.w + o2.i.c);
        stringBuffer.append("unit_id=" + nVar.v + o2.i.c);
        stringBuffer.append("network_type=" + nVar.f7091g + o2.i.c);
        stringBuffer.append("mraid_type=" + nVar.I + o2.i.c);
        stringBuffer.append("rid_n=" + nVar.u + o2.i.c);
        StringBuilder sb = new StringBuilder();
        sb.append("rid=");
        sb.append(nVar.s);
        stringBuffer.append(sb.toString());
        return stringBuffer.toString();
    }

    public static String b(List<n> list) {
        if (list == null || list.size() <= 0) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        Iterator<n> it = list.iterator();
        while (it.hasNext()) {
            n next = it.next();
            if (next.c != null) {
                stringBuffer.append("resource_type=" + next.c + o2.i.c);
            }
            if (next.f7089e != null) {
                stringBuffer.append("creative=" + next.f7089e + o2.i.c);
            }
            Iterator<n> it2 = it;
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                stringBuffer.append("key=" + next.f7090f + o2.i.c);
                stringBuffer.append("network_type=" + next.f7091g + o2.i.c);
                stringBuffer.append("network_str=" + next.h + o2.i.c);
                stringBuffer.append("result=" + next.o + o2.i.c);
                stringBuffer.append("duration=" + next.p + o2.i.c);
                stringBuffer.append("video_size=" + next.q + o2.i.c);
                stringBuffer.append("video_length=" + next.k + o2.i.c);
                stringBuffer.append("reason=" + next.x() + o2.i.c);
                stringBuffer.append("cid=" + next.w + o2.i.c);
                stringBuffer.append("video_url=" + next.F + o2.i.c);
                stringBuffer.append("rid=" + next.s + o2.i.c);
                stringBuffer.append("rid_n=" + next.u + o2.i.c);
                stringBuffer.append("unit_id=" + next.v + o2.i.c);
                StringBuilder sb = new StringBuilder();
                sb.append("offer_url=");
                sb.append(next.l);
                stringBuffer.append(sb.toString());
                stringBuffer.append("\n");
            } else {
                stringBuffer.append("key=" + next.f7090f + o2.i.c);
                stringBuffer.append("result=" + next.o + o2.i.c);
                stringBuffer.append("duration=" + next.p + o2.i.c);
                stringBuffer.append("video_size=" + next.q + o2.i.c);
                stringBuffer.append("video_length=" + next.k + o2.i.c);
                stringBuffer.append("reason=" + next.x() + o2.i.c);
                stringBuffer.append("cid=" + next.w + o2.i.c);
                stringBuffer.append("video_url=" + next.F + o2.i.c);
                stringBuffer.append("rid=" + next.s + o2.i.c);
                stringBuffer.append("rid_n=" + next.u + o2.i.c);
                stringBuffer.append("unit_id=" + next.v + o2.i.c);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("offer_url=");
                sb2.append(next.l);
                stringBuffer.append(sb2.toString());
                stringBuffer.append("\n");
            }
            it = it2;
        }
        return stringBuffer.toString();
    }

    public static String c(n nVar) {
        if (nVar == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=" + nVar.f7090f + o2.i.c);
        stringBuffer.append("result=" + nVar.o + o2.i.c);
        stringBuffer.append("duration=" + nVar.p + o2.i.c);
        stringBuffer.append("cid=" + nVar.w + o2.i.c);
        stringBuffer.append("reason=" + nVar.x() + o2.i.c);
        stringBuffer.append("ad_type=" + nVar.H + o2.i.c);
        stringBuffer.append("unit_id=" + nVar.v + o2.i.c);
        stringBuffer.append("devid=" + nVar.f7088d + o2.i.c);
        stringBuffer.append("mraid_type=" + nVar.I + o2.i.c);
        stringBuffer.append("network_type=" + nVar.f7091g + o2.i.c);
        if (!TextUtils.isEmpty(nVar.E)) {
            stringBuffer.append("endcard_url=" + nVar.E + o2.i.c);
        }
        if (!TextUtils.isEmpty(nVar.D)) {
            stringBuffer.append("type=" + nVar.D + o2.i.c);
        }
        if (nVar.c != null) {
            stringBuffer.append("resource_type=" + nVar.c + o2.i.c);
        }
        stringBuffer.append("rid_n=" + nVar.u + o2.i.c);
        StringBuilder sb = new StringBuilder();
        sb.append("rid=");
        sb.append(nVar.s);
        stringBuffer.append(sb.toString());
        stringBuffer.append("\n");
        return stringBuffer.toString();
    }

    public static String c(List<n> list) {
        if (list == null || list.size() <= 0) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (n nVar : list) {
            stringBuffer.append("key=" + nVar.f7090f + o2.i.c);
            stringBuffer.append("result=" + nVar.o + o2.i.c);
            stringBuffer.append("duration=" + nVar.p + o2.i.c);
            stringBuffer.append("endcard_url=" + nVar.E + o2.i.c);
            stringBuffer.append("cid=" + nVar.w + o2.i.c);
            stringBuffer.append("unit_id=" + nVar.v + o2.i.c);
            stringBuffer.append("reason=" + nVar.x() + o2.i.c);
            stringBuffer.append("ad_type=" + nVar.H + o2.i.c);
            stringBuffer.append("rid=" + nVar.s + o2.i.c);
            stringBuffer.append("rid_n=" + nVar.u + o2.i.c);
            stringBuffer.append("type=" + nVar.D + o2.i.c);
            StringBuilder sb = new StringBuilder();
            sb.append("adspace_t=");
            sb.append(nVar.J);
            stringBuffer.append(sb.toString());
            stringBuffer.append("\n");
        }
        return stringBuffer.toString();
    }

    public static String d(n nVar) {
        if (nVar == null) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=" + nVar.f7090f + o2.i.c);
        stringBuffer.append("result=" + nVar.o + o2.i.c);
        stringBuffer.append("duration=" + nVar.p + o2.i.c);
        stringBuffer.append("cid=" + nVar.w + o2.i.c);
        stringBuffer.append("unit_id=" + nVar.v + o2.i.c);
        stringBuffer.append("reason=" + nVar.x() + o2.i.c);
        stringBuffer.append("ad_type=" + nVar.H + o2.i.c);
        stringBuffer.append("rid=" + nVar.s + o2.i.c);
        stringBuffer.append("rid_n=" + nVar.u + o2.i.c);
        stringBuffer.append("network_type=" + nVar.f7091g + o2.i.c);
        stringBuffer.append("mraid_type=" + nVar.I + o2.i.c);
        stringBuffer.append("devid=" + nVar.f7088d + o2.i.c);
        if (nVar.c != null) {
            stringBuffer.append("resource_type=" + nVar.c + o2.i.c);
        }
        if (!TextUtils.isEmpty(nVar.E)) {
            stringBuffer.append("endcard_url=" + nVar.E + o2.i.c);
        }
        stringBuffer.append("type=" + nVar.D);
        return stringBuffer.toString();
    }

    public static String d(List<n> list) {
        if (list == null || list.size() <= 0) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (n nVar : list) {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                stringBuffer.append("key=" + nVar.f7090f + o2.i.c);
                stringBuffer.append("network_type=" + nVar.f7091g + o2.i.c);
                stringBuffer.append("result=" + nVar.o + o2.i.c);
                stringBuffer.append("cid=" + nVar.w + o2.i.c);
                stringBuffer.append("template_url=" + nVar.x + o2.i.c);
                stringBuffer.append("reason=" + nVar.x() + o2.i.c);
                stringBuffer.append("rid=" + nVar.s + o2.i.c);
                stringBuffer.append("rid_n=" + nVar.u + o2.i.c);
                stringBuffer.append("unit_id=" + nVar.v + o2.i.c);
                stringBuffer.append("\n");
            } else {
                stringBuffer.append("key=" + nVar.f7090f + o2.i.c);
                stringBuffer.append("result=" + nVar.o + o2.i.c);
                stringBuffer.append("cid=" + nVar.w + o2.i.c);
                stringBuffer.append("template_url=" + nVar.x + o2.i.c);
                stringBuffer.append("reason=" + nVar.x() + o2.i.c);
                stringBuffer.append("rid=" + nVar.s + o2.i.c);
                stringBuffer.append("rid_n=" + nVar.u + o2.i.c);
                stringBuffer.append("unit_id=" + nVar.v + o2.i.c);
                stringBuffer.append("\n");
            }
        }
        return stringBuffer.toString();
    }

    public static String e(n nVar) {
        if (nVar == null) {
            return null;
        }
        try {
            StringBuffer stringBuffer = new StringBuffer();
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                stringBuffer.append("key=" + nVar.f7090f + o2.i.c);
                stringBuffer.append("error=" + af.d(nVar.z) + o2.i.c);
                stringBuffer.append("template_url=" + af.d(nVar.x) + o2.i.c);
                stringBuffer.append("unit_id=" + af.d(nVar.v) + o2.i.c);
                stringBuffer.append("cid=" + af.d(nVar.w) + o2.i.c);
                stringBuffer.append("network_str=" + nVar.h + o2.i.c);
                StringBuilder sb = new StringBuilder();
                sb.append("network_type=");
                sb.append(nVar.f7091g);
                stringBuffer.append(sb.toString());
            } else {
                stringBuffer.append("key=" + nVar.f7090f + o2.i.c);
                stringBuffer.append("error=" + af.d(nVar.z) + o2.i.c);
                stringBuffer.append("template_url=" + af.d(nVar.x) + o2.i.c);
                stringBuffer.append("unit_id=" + af.d(nVar.v) + o2.i.c);
                stringBuffer.append("cid=" + af.d(nVar.w) + o2.i.c);
            }
            return stringBuffer.toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String e(List<n> list) {
        if (list == null || list.size() <= 0) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (n nVar : list) {
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                stringBuffer.append("key=" + nVar.f7090f + o2.i.c);
                stringBuffer.append("network_type=" + nVar.f7091g + o2.i.c);
                stringBuffer.append("cid=" + nVar.w + o2.i.c);
                stringBuffer.append("image_url=" + nVar.G + o2.i.c);
                stringBuffer.append("reason=" + nVar.x() + o2.i.c);
                stringBuffer.append("rid=" + nVar.s + o2.i.c);
                stringBuffer.append("rid_n=" + nVar.u + o2.i.c);
                stringBuffer.append("unit_id=" + nVar.v + o2.i.c);
                stringBuffer.append("\n");
            } else {
                stringBuffer.append("key=" + nVar.f7090f + o2.i.c);
                stringBuffer.append("cid=" + nVar.w + o2.i.c);
                stringBuffer.append("image_url=" + nVar.G + o2.i.c);
                stringBuffer.append("reason=" + nVar.x() + o2.i.c);
                stringBuffer.append("rid=" + nVar.s + o2.i.c);
                stringBuffer.append("rid_n=" + nVar.u + o2.i.c);
                stringBuffer.append("unit_id=" + nVar.v + o2.i.c);
                stringBuffer.append("\n");
            }
        }
        return stringBuffer.toString();
    }

    public static String f(n nVar) {
        if (nVar == null) {
            return null;
        }
        try {
            StringBuffer stringBuffer = new StringBuffer();
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                stringBuffer.append("key=" + nVar.f7090f + o2.i.c);
                stringBuffer.append("event=" + af.d(nVar.A) + o2.i.c);
                stringBuffer.append("template=" + af.d(nVar.y) + o2.i.c);
                stringBuffer.append("layout=" + af.d(nVar.B) + o2.i.c);
                stringBuffer.append("unit_id=" + af.d(nVar.v) + o2.i.c);
                stringBuffer.append("cid=" + af.d(nVar.w) + o2.i.c);
                stringBuffer.append("network_str=" + nVar.h + o2.i.c);
                StringBuilder sb = new StringBuilder();
                sb.append("network_type=");
                sb.append(nVar.f7091g);
                stringBuffer.append(sb.toString());
            } else {
                stringBuffer.append("key=" + nVar.f7090f + o2.i.c);
                stringBuffer.append("event=" + af.d(nVar.A) + o2.i.c);
                stringBuffer.append("template=" + af.d(nVar.y) + o2.i.c);
                stringBuffer.append("layout=" + af.d(nVar.B) + o2.i.c);
                stringBuffer.append("unit_id=" + af.d(nVar.v) + o2.i.c);
                stringBuffer.append("cid=" + af.d(nVar.w) + o2.i.c);
            }
            return stringBuffer.toString();
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String f(List<n> list) {
        if (list == null) {
            return null;
        }
        try {
            if (list.size() <= 0) {
                return null;
            }
            StringBuffer stringBuffer = new StringBuffer();
            Iterator<n> it = list.iterator();
            while (it.hasNext()) {
                stringBuffer.append(it.next().C);
                stringBuffer.append("\n");
            }
            return stringBuffer.toString();
        } catch (Throwable th) {
            aa.b("VideoReportData", th.getMessage(), th);
            return null;
        }
    }

    public static String g(n nVar) {
        if (nVar == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=" + nVar.f7090f + o2.i.c);
        stringBuffer.append("cid=" + nVar.w + o2.i.c);
        stringBuffer.append("rid=" + nVar.s + o2.i.c);
        stringBuffer.append("rid_n=" + nVar.u + o2.i.c);
        stringBuffer.append("unit_id=" + nVar.v + o2.i.c);
        stringBuffer.append("network_type=" + nVar.f7091g + o2.i.c);
        stringBuffer.append("mraid_type=" + nVar.I + o2.i.c);
        stringBuffer.append("platform=1");
        return stringBuffer.toString();
    }

    public static String h(n nVar) {
        if (nVar == null) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=" + nVar.f7090f + o2.i.c);
        stringBuffer.append("cid=" + nVar.w + o2.i.c);
        stringBuffer.append("rid=" + nVar.s + o2.i.c);
        stringBuffer.append("rid_n=" + nVar.u + o2.i.c);
        stringBuffer.append("unit_id=" + nVar.v + o2.i.c);
        stringBuffer.append("reason=" + nVar.x() + o2.i.c);
        stringBuffer.append("case=" + nVar.n + o2.i.c);
        StringBuilder sb = new StringBuilder();
        sb.append("network_type=");
        sb.append(nVar.f7091g);
        stringBuffer.append(sb.toString());
        return stringBuffer.toString();
    }

    public final int A() {
        return this.f7091g;
    }

    public final String B() {
        return this.h;
    }

    public final int C() {
        return this.i;
    }

    public final int D() {
        return this.o;
    }

    public final String a() {
        return this.c;
    }

    public final void a(int i) {
        this.K = i;
    }

    public final void a(String str) {
        this.c = str;
    }

    public final String b() {
        return this.f7088d;
    }

    public final void b(int i) {
        this.I = i;
    }

    public final void b(String str) {
        this.f7088d = str;
    }

    public final String c() {
        return this.f7089e;
    }

    public final void c(int i) {
        this.J = i;
    }

    public final void c(String str) {
        this.f7089e = URLEncoder.encode(str);
    }

    public final int d() {
        return this.K;
    }

    public final void d(int i) {
        this.f7091g = i;
    }

    public final void d(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.G = URLEncoder.encode(str, b4.L);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final String e() {
        return this.G;
    }

    public final void e(int i) {
        this.o = i;
    }

    public final void e(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.F = URLEncoder.encode(str, b4.L);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final String f() {
        return this.F;
    }

    public final void f(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.E = URLEncoder.encode(str, b4.L);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final String g() {
        return this.E;
    }

    public final void g(String str) {
        this.D = str;
    }

    public final String h() {
        return this.D;
    }

    public final void h(String str) {
        this.H = str;
    }

    public final String i() {
        return this.H;
    }

    public final void i(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.x = URLEncoder.encode(str, b4.L);
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
        }
    }

    public final String j() {
        return this.x;
    }

    public final void j(String str) {
        this.z = str;
    }

    public final int k() {
        return this.I;
    }

    public final void k(String str) {
        this.L = str;
    }

    public final int l() {
        return this.J;
    }

    public final void l(String str) {
        this.M = str;
    }

    public final String m() {
        return this.L;
    }

    public final void m(String str) {
        this.N = str;
    }

    public final String n() {
        return this.M;
    }

    public final void n(String str) {
        this.s = str;
    }

    public final String o() {
        return this.N;
    }

    public final void o(String str) {
        this.t = str;
    }

    public final String p() {
        return this.s;
    }

    public final void p(String str) {
        this.u = str;
    }

    public final String q() {
        return this.u;
    }

    public final void q(String str) {
        this.v = str;
    }

    public final String r() {
        return this.v;
    }

    public final void r(String str) {
        this.w = str;
    }

    public final String s() {
        return this.w;
    }

    public final void s(String str) {
        this.f7090f = str;
    }

    public final String t() {
        return this.f7090f;
    }

    public final void t(String str) {
        this.m = str;
    }

    public final String toString() {
        return "RewardReportData [key=" + this.f7090f + ", networkType=" + this.f7091g + ", isCompleteView=" + this.i + ", watchedMillis=" + this.j + ", videoLength=" + this.k + ", offerUrl=" + this.l + ", reason=" + this.m + ", result=" + this.o + ", duration=" + this.p + ", videoSize=" + this.q + o2.i.f6491e;
    }

    public final int u() {
        return this.j;
    }

    public final void u(String str) {
        this.p = str;
    }

    public final int v() {
        return this.k;
    }

    public final void v(String str) {
        this.h = str;
    }

    public final String w() {
        return this.l;
    }

    public final String x() {
        return TextUtils.isEmpty(this.m) ? "" : this.m;
    }

    public final String y() {
        return this.p;
    }

    public final long z() {
        return this.q;
    }
}
