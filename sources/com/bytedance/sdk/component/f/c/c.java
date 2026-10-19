package com.bytedance.sdk.component.f.c;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Map;

/* JADX INFO: compiled from: TNCConfig.java */
/* JADX INFO: loaded from: classes2.dex */
public class c {
    public boolean a = false;
    public boolean b = true;
    public Map<String, Integer> c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Map<String, String> f1055d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1056e = 10;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1057f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f1058g = 1;
    public int h = 10;
    public int i = 1;
    public int j = 1;
    public int k = TypedValues.Custom.TYPE_INT;
    public int l = 120;
    public String m = null;
    public int n = 0;
    public long o = 0;

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(" localEnable: ");
        sb.append(this.a);
        sb.append(" probeEnable: ");
        sb.append(this.b);
        sb.append(" hostFilter: ");
        Map<String, Integer> map = this.c;
        sb.append(map != null ? map.size() : 0);
        sb.append(" hostMap: ");
        Map<String, String> map2 = this.f1055d;
        sb.append(map2 != null ? map2.size() : 0);
        sb.append(" reqTo: ");
        sb.append(this.f1056e);
        sb.append("#");
        sb.append(this.f1057f);
        sb.append("#");
        sb.append(this.f1058g);
        sb.append(" reqErr: ");
        sb.append(this.h);
        sb.append("#");
        sb.append(this.i);
        sb.append("#");
        sb.append(this.j);
        sb.append(" updateInterval: ");
        sb.append(this.k);
        sb.append(" updateRandom: ");
        sb.append(this.l);
        sb.append(" httpBlack: ");
        sb.append(this.m);
        return sb.toString();
    }
}
