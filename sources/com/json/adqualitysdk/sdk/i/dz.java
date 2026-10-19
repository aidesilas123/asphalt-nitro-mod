package com.json.adqualitysdk.sdk.i;

import android.graphics.PointF;
import android.media.AudioTrack;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewConfiguration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class dz extends dx {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static char[] f5588e = {64087, 31790, 63228, 26775, 58200, 26036, 57269, 22101, 51222, 17112, 50551, 16166, 45533, 11204, 41532, 9459, 40605, 4434, 35662, 3502, 33899, 65048, 28883, 60277, 28002, '{', 62553, 29211, '\"', 29770, 61958, 30926, 59042, 2874};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static long f5589f = -2274202905868204466L;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f5590g = 0;
    private static int h = 1;
    private Map<String, dx> i;

    public dz(Map<String, dx> map, Cdo cdo) {
        super(cdo);
        this.i = new HashMap();
        for (String str : map.keySet()) {
            this.i.put(dq.m680(str), map.get(str));
        }
    }

    private static String c(int i, int i2, char c) {
        String str;
        synchronized (e.f50) {
            char[] cArr = new char[i];
            e.f51 = 0;
            while (true) {
                int i3 = e.f51;
                if (i3 < i) {
                    cArr[i3] = (char) ((((long) f5588e[i2 + i3]) ^ (((long) i3) * f5589f)) ^ ((long) c));
                    e.f51 = i3 + 1;
                } else {
                    str = new String(cArr);
                }
            }
        }
        return str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            int i = f5590g + 43;
            h = i % 128;
            int i2 = i % 2;
            return true;
        }
        if ((obj != null ? (char) 6 : '6') != '6') {
            if (dz.class == obj.getClass()) {
                dz dzVar = (dz) obj;
                Map<String, dx> map = this.i;
                char c = map != null ? '-' : (char) 23;
                Map<String, dx> map2 = dzVar.i;
                if (c == '-') {
                    return map.equals(map2);
                }
                if (!(map2 == null)) {
                    return false;
                }
                int i3 = f5590g + 125;
                h = i3 % 128;
                int i4 = i3 % 2;
                return true;
            }
        }
        int i5 = h + 9;
        f5590g = i5 % 128;
        if (i5 % 2 == 0) {
            return false;
        }
        int i6 = 63 / 0;
        return false;
    }

    public final int hashCode() {
        int i = h + 33;
        int i2 = i % 128;
        f5590g = i2;
        if (i % 2 != 0) {
            throw null;
        }
        Map<String, dx> map = this.i;
        if ((map != null ? '2' : (char) 22) != '2') {
            return 0;
        }
        int i3 = i2 + 51;
        h = i3 % 128;
        if (i3 % 2 != 0) {
            return map.hashCode();
        }
        map.hashCode();
        throw null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(c((ViewConfiguration.getJumpTapTimeout() >> 16) + 1, TextUtils.indexOf((CharSequence) "", '0', 0) + 26, (char) (ViewConfiguration.getTouchSlop() >> 8)).intern());
        Iterator<String> it = this.i.keySet().iterator();
        int i = f5590g + 97;
        h = i % 128;
        int i2 = i % 2;
        boolean z = true;
        while (true) {
            if (!(it.hasNext())) {
                sb.append(c((ViewConfiguration.getScrollDefaultDelay() >> 16) + 1, 33 - KeyEvent.normalizeMetaState(0), (char) (2887 - (ViewConfiguration.getPressedStateDuration() >> 16))).intern());
                return sb.toString();
            }
            int i3 = f5590g + 95;
            h = i3 % 128;
            if (i3 % 2 == 0) {
                it.next();
                throw null;
            }
            String next = it.next();
            if (!z) {
                sb.append(c(2 - View.combineMeasuredStates(0, 0), 26 - (ViewConfiguration.getKeyRepeatTimeout() >> 16), (char) ((KeyEvent.getMaxKeyCode() >> 16) + 62581)).intern());
                int i4 = f5590g + 111;
                h = i4 % 128;
                int i5 = i4 % 2;
            }
            sb.append(c((AudioTrack.getMinVolume() > 0.0f ? 1 : (AudioTrack.getMinVolume() == 0.0f ? 0 : -1)) + 1, 28 - TextUtils.indexOf("", "", 0, 0), (char) TextUtils.getOffsetBefore("", 0)).intern());
            sb.append(next);
            sb.append(c(4 - (ViewConfiguration.getPressedStateDuration() >> 16), 29 - (ViewConfiguration.getMaximumFlingVelocity() >> 16), (char) (29800 - (ViewConfiguration.getMaximumDrawingCacheSize() >> 24))).intern());
            sb.append(this.i.get(next));
            z = false;
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.dx
    /* JADX INFO: renamed from: ﻛ */
    public final dp mo687(dr drVar, cj cjVar) {
        JSONObject jSONObject = new JSONObject();
        Iterator<String> it = this.i.keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            int i = f5590g + 83;
            h = i % 128;
            int i2 = i % 2;
            String next = it.next();
            try {
                jSONObject.put(next, this.i.get(next).m702(drVar, cjVar).m674());
            } catch (JSONException e2) {
                String strM445 = cjVar.m445();
                StringBuilder sb = new StringBuilder();
                sb.append(c((PointF.length(0.0f, 0.0f) > 0.0f ? 1 : (PointF.length(0.0f, 0.0f) == 0.0f ? 0 : -1)) + 25, (-1) - TextUtils.lastIndexOf("", '0'), (char) (64018 - View.resolveSizeAndState(0, 0, 0))).intern());
                sb.append(m703());
                cn.m519(strM445, sb.toString(), e2);
            }
        }
        dp dpVar = new dp(jSONObject);
        int i3 = f5590g + 19;
        h = i3 % 128;
        if (i3 % 2 != 0) {
            return dpVar;
        }
        throw null;
    }
}
