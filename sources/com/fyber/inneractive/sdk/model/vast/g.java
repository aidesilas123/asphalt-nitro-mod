package com.fyber.inneractive.sdk.model.vast;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.flow.vast.d;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class g {
    public Integer a;
    public Integer b;
    public String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public j f2084d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f2085e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f2086f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public String f2087g;
    public List<String> h;
    public d.a i;
    public List<s> j;

    public String toString() {
        StringBuilder sb = new StringBuilder("Companion: ");
        sb.append(" w:");
        sb.append(this.a);
        sb.append(" h:");
        sb.append(this.b);
        sb.append(" ctr:");
        sb.append(this.f2087g);
        sb.append(" clt:");
        sb.append(this.h);
        if (!TextUtils.isEmpty(this.f2086f)) {
            sb.append(" html:");
            sb.append(this.f2086f);
        }
        if (this.f2084d != null) {
            sb.append(" static:");
            sb.append(this.f2084d.b);
            sb.append("creative:");
            sb.append(this.f2084d.a);
        }
        if (!TextUtils.isEmpty(this.f2085e)) {
            sb.append(" iframe:");
            sb.append(this.f2085e);
        }
        sb.append(" events:");
        sb.append(this.j);
        if (this.i != null) {
            sb.append(" reason:");
            sb.append(this.i.a);
        }
        return sb.toString();
    }
}
