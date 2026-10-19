package com.bykv.vk.openvk.component.video.api.c;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import org.json.JSONObject;

/* JADX INFO: compiled from: VideoInfo.java */
/* JADX INFO: loaded from: classes.dex */
public class b {
    private int a;
    private int b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double f472d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f473e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f474f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f475g;
    private String h;
    private String i;
    private String j;
    private double k;
    private int l;
    private int m;
    private float n = -1.0f;
    private int o = 0;
    private int p = 0;
    private int q = 0;
    private int r = 0;
    private int s = 307200;
    private int t = 1;

    public int a() {
        return this.l;
    }

    public void a(double d2) {
        this.f472d = d2;
    }

    public void a(int i) {
        this.l = i;
    }

    public void a(long j) {
        this.c = j;
    }

    public void a(String str) {
        this.f473e = str;
    }

    public int b() {
        return this.a;
    }

    public void b(int i) {
        this.a = i;
    }

    public void b(String str) {
        this.f474f = str;
    }

    public int c() {
        return this.b;
    }

    public void c(int i) {
        this.b = i;
    }

    public void c(String str) {
        this.f475g = str;
    }

    public int d() {
        return this.m;
    }

    public void d(int i) {
        this.m = i;
    }

    public void d(String str) {
        this.h = str;
    }

    public long e() {
        return this.c;
    }

    public void e(int i) {
        this.s = i;
    }

    public void e(String str) {
        this.i = str;
    }

    public double f() {
        return this.f472d;
    }

    public void f(int i) {
        this.q = i;
    }

    public void f(String str) {
        this.j = str;
    }

    public double g() {
        return this.k;
    }

    public void g(int i) {
        this.r = i;
    }

    public float h() {
        return this.n;
    }

    public void h(int i) {
        this.o = i;
    }

    public String i() {
        return this.f473e;
    }

    public void i(int i) {
        this.p = i;
    }

    public String j() {
        return this.f474f;
    }

    public void j(int i) {
        this.t = Math.min(4, Math.max(1, i));
    }

    public String k() {
        return this.f475g;
    }

    public String l() {
        return this.h;
    }

    public String m() {
        return this.i;
    }

    public String n() {
        if (TextUtils.isEmpty(this.j)) {
            this.j = com.bykv.vk.openvk.component.video.api.f.b.a(this.f475g);
        }
        return this.j;
    }

    public int o() {
        if (this.s < 0) {
            this.s = 307200;
        }
        long j = this.s;
        long j2 = this.c;
        if (j > j2) {
            this.s = (int) j2;
        }
        return this.s;
    }

    public int p() {
        return this.q;
    }

    public int q() {
        return this.r;
    }

    public JSONObject r() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cover_height", b());
            jSONObject.put("cover_url", j());
            jSONObject.put("cover_width", c());
            jSONObject.put(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD, l());
            jSONObject.put("file_hash", n());
            jSONObject.put("resolution", i());
            jSONObject.put("size", e());
            jSONObject.put("video_duration", f());
            jSONObject.put("video_url", k());
            jSONObject.put("playable_download_url", m());
            jSONObject.put("if_playable_loading_show", s());
            jSONObject.put("remove_loading_page_type", t());
            jSONObject.put("fallback_endcard_judge", a());
            jSONObject.put("video_preload_size", o());
            jSONObject.put("reward_video_cached_type", p());
            jSONObject.put("execute_cached_type", q());
            jSONObject.put("endcard_render", d());
            jSONObject.put("replay_time", w());
            jSONObject.put("play_speed_ratio", h());
            if (g() > 0.0d) {
                jSONObject.put("start", g());
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public int s() {
        return this.o;
    }

    public int t() {
        return this.p;
    }

    public boolean u() {
        return this.r == 1;
    }

    public boolean v() {
        return this.q == 0;
    }

    public int w() {
        return this.t;
    }
}
