package com.bytedance.sdk.component.utils;

import android.content.Context;
import android.text.TextUtils;
import com.json.k2;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;

/* JADX INFO: compiled from: NetworkUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class o {
    public static boolean a(Context context) {
        return c(context) != 0;
    }

    public static boolean a(String str) {
        return !TextUtils.isEmpty(str) && (str.startsWith("http://") || str.startsWith("https://"));
    }

    public static int b(Context context) {
        int iC = c(context);
        if (iC == 1) {
            return 0;
        }
        if (iC == 4) {
            return 1;
        }
        if (iC == 5) {
            return 4;
        }
        if (iC != 6) {
            return iC;
        }
        return 6;
    }

    public static int c(Context context) {
        return v.a(context, ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
    }

    public static boolean d(Context context) {
        return c(context) == 4;
    }

    public static boolean e(Context context) {
        return c(context) == 5;
    }

    public static boolean f(Context context) {
        return c(context) == 6;
    }

    public static String g(Context context) {
        int iC = c(context);
        return iC != 2 ? iC != 3 ? iC != 4 ? iC != 5 ? iC != 6 ? "mobile" : "5g" : "4g" : k2.b : k2.a : "2g";
    }

    public static boolean h(Context context) {
        if (context == null) {
            return false;
        }
        int iC = c(context);
        char c = 5;
        if (iC == 2) {
            c = 2;
        } else if (iC == 3) {
            c = 3;
        } else if (iC == 4) {
            c = 1;
        } else if (iC == 5) {
            c = 4;
        } else if (iC != 6) {
            c = 0;
        }
        return c != 0;
    }
}
