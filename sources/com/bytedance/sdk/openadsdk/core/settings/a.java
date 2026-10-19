package com.bytedance.sdk.openadsdk.core.settings;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: AdSlotSetter.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    public int A;
    public boolean B;
    public boolean C;
    public boolean D;
    public int E;
    public int F;
    public boolean G;
    public int H;
    public int I;
    public int J;
    public int K;
    public long L;
    public String M;
    public String N;
    public List<g> O;
    public List<g> P;
    public String a;
    public int b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1670d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1671e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1672f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1673g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public boolean t;
    public int u;
    public List<String> v;
    public int w;
    public int x;
    public int y;
    public int z;

    public a(String str, int i) {
        this.b = 1;
        this.c = 1;
        this.f1670d = 2;
        this.f1671e = 1;
        this.f1672f = 100;
        this.f1673g = 0;
        this.h = 2;
        this.i = 1;
        this.j = 3;
        this.k = 30;
        this.l = 1;
        this.m = 1;
        this.n = 2;
        this.o = 1500;
        this.p = 2;
        this.q = -1;
        this.r = 0;
        this.s = 5;
        this.t = false;
        this.u = 0;
        this.w = 2;
        this.x = -1;
        this.y = 0;
        this.z = 0;
        this.A = 5;
        this.B = true;
        this.C = false;
        this.D = false;
        this.E = 0;
        this.F = -1;
        this.G = false;
        this.H = 60000;
        this.I = 2;
        this.J = 1000;
        this.K = 1;
        this.O = new ArrayList();
        this.P = new ArrayList();
        this.a = str;
        this.c = i;
    }

    public a(JSONObject jSONObject) {
        this.b = 1;
        this.c = 1;
        this.f1670d = 2;
        this.f1671e = 1;
        this.f1672f = 100;
        this.f1673g = 0;
        this.h = 2;
        this.i = 1;
        this.j = 3;
        this.k = 30;
        this.l = 1;
        this.m = 1;
        this.n = 2;
        this.o = 1500;
        this.p = 2;
        this.q = -1;
        this.r = 0;
        this.s = 5;
        this.t = false;
        this.u = 0;
        this.w = 2;
        this.x = -1;
        this.y = 0;
        this.z = 0;
        this.A = 5;
        this.B = true;
        this.C = false;
        this.D = false;
        this.E = 0;
        this.F = -1;
        this.G = false;
        this.H = 60000;
        this.I = 2;
        this.J = 1000;
        this.K = 1;
        this.O = new ArrayList();
        this.P = new ArrayList();
        if (jSONObject == null) {
            return;
        }
        this.a = jSONObject.optString("code_id");
        this.b = jSONObject.optInt("auto_play", 1);
        this.F = jSONObject.optInt("endcard_close_time", -1);
        this.c = jSONObject.optInt("voice_control", 1);
        this.f1670d = jSONObject.optInt("rv_preload", 2);
        this.f1671e = jSONObject.optInt("nv_preload", 1);
        this.f1672f = jSONObject.optInt("proportion_watching", 100);
        this.f1673g = jSONObject.optInt("skip_time_displayed", 0);
        this.h = jSONObject.optInt("video_skip_result", 2);
        this.i = jSONObject.optInt("reg_creative_control", 1);
        this.j = jSONObject.optInt("play_bar_show_time", 3);
        int iOptInt = jSONObject.optInt("rv_skip_time", 30);
        this.k = iOptInt;
        if (iOptInt < 0) {
            this.k = 30;
        }
        this.l = jSONObject.optInt("voice_control", 2);
        this.m = jSONObject.optInt("if_show_win", 1);
        this.n = jSONObject.optInt("sp_preload", 2);
        this.o = jSONObject.optInt("stop_time", 1500);
        this.p = jSONObject.optInt("native_playable_delay", 2);
        this.q = jSONObject.optInt("time_out_control", -1);
        this.x = jSONObject.optInt("playable_close_time", -1);
        this.r = jSONObject.optInt("playable_reward_type", 0);
        this.u = jSONObject.optInt("reward_is_callback", 0);
        int iOptInt2 = jSONObject.optInt("iv_skip_time", 5);
        this.s = iOptInt2;
        if (iOptInt2 < 0) {
            this.s = 5;
        }
        a(jSONObject.optJSONArray("parent_tpl_ids"));
        this.w = jSONObject.optInt("slot_type", 2);
        this.t = jSONObject.optBoolean("close_on_click", false);
        this.y = jSONObject.optInt("allow_system_back", 0);
        this.z = jSONObject.optInt("splash_skip_time", 0);
        this.A = jSONObject.optInt("splash_image_count_down_time", 5);
        this.C = jSONObject.optBoolean("splash_count_down_time_off", false);
        this.D = jSONObject.optBoolean("splash_close_on_click", false);
        int iOptInt3 = jSONObject.optInt("splash_load_strategy", 0);
        this.E = iOptInt3;
        if (iOptInt3 < 0 || iOptInt3 > 1) {
            this.E = 0;
        }
        this.B = jSONObject.optBoolean("allow_mediaview_click", true);
        int iOptInt4 = jSONObject.optInt("total_time_out", 60000);
        this.H = iOptInt4;
        if (iOptInt4 <= 0 || iOptInt4 > 1800000) {
            this.H = 60000;
        }
        int iOptInt5 = jSONObject.optInt("req_parallel_num", 2);
        this.I = iOptInt5;
        if (iOptInt5 < 1 || iOptInt5 > 4) {
            this.I = 2;
        }
        this.J = jSONObject.optInt("bidding_token_tmax", 1000);
        int iOptInt6 = jSONObject.optInt("ad_load_type", 1);
        this.K = iOptInt6;
        if (iOptInt6 < 1 || iOptInt6 > 2) {
            this.K = 1;
        }
        boolean zOptBoolean = jSONObject.optBoolean("is_mediation", false);
        this.G = zOptBoolean;
        if (zOptBoolean) {
            o.aj().ad();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("mediation_config");
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                String strOptString = jSONObjectOptJSONObject.optString("adn_name");
                String strOptString2 = jSONObjectOptJSONObject.optString("adn_slot_id");
                int iOptInt7 = jSONObjectOptJSONObject.optInt("ad_expired_time", 3600000);
                int iOptInt8 = jSONObjectOptJSONObject.optInt("req_bidding_type", 2);
                String strOptString3 = jSONObjectOptJSONObject.optString("rit_cpm");
                int iOptInt9 = jSONObjectOptJSONObject.optInt("show_sort");
                int iOptInt10 = jSONObjectOptJSONObject.optInt("layer_time_out", 2000);
                int i2 = (iOptInt10 <= 0 || iOptInt10 > 60000) ? 2000 : iOptInt10;
                JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("server_params");
                if (iOptInt8 == 2) {
                    arrayList.add(new g(strOptString, strOptString2, iOptInt7, iOptInt8, strOptString3, iOptInt9, i2, jSONObjectOptJSONObject2 == null ? "" : jSONObjectOptJSONObject2.toString()));
                } else if (iOptInt8 == 0) {
                    arrayList2.add(new g(strOptString, strOptString2, iOptInt7, iOptInt8, strOptString3, iOptInt9, i2, jSONObjectOptJSONObject2 == null ? "" : jSONObjectOptJSONObject2.toString()));
                }
            }
            this.O = arrayList;
            this.P = arrayList2;
            Collections.sort(arrayList);
            Collections.sort(this.P);
        }
        if (!a(this.c)) {
            this.c = 1;
        }
        if (!a(this.l)) {
            this.l = 1;
        }
        this.L = jSONObject.optLong("waterfall_id");
        String strOptString4 = jSONObject.optString("waterfall_version");
        this.M = strOptString4;
        this.N = strOptString4;
    }

    private static boolean a(int i) {
        return i == 1 || i == 2;
    }

    public void a(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return;
        }
        this.v = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                this.v.add(jSONArray.get(i).toString());
            } catch (Exception unused) {
                return;
            }
        }
    }
}
