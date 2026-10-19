package com.json.adqualitysdk.sdk.i;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.util.Pair;
import android.widget.VideoView;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class cq extends cx {
    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static Object m526(List<Object> list) {
        return jp.m941((VideoView) cx.m592(list, 0, VideoView.class));
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static long m527() {
        return jt.m952();
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static Object m528(List<Object> list) {
        return ((Pair) cx.m592(list, 0, Pair.class)).second;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static Object m529(List<Object> list) {
        return ((Pair) cx.m592(list, 0, Pair.class)).first;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static Object m530(List<Object> list) {
        return aj.m278((Context) cx.m592(list, 0, Context.class));
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static Object m531(List<Object> list) {
        Context context = (Context) cx.m592(list, 0, Context.class);
        aj.m279(aj.m278(context), (BroadcastReceiver) cx.m592(list, 1, BroadcastReceiver.class));
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static Object m532(List<Object> list) {
        Context context = (Context) cx.m592(list, 0, Context.class);
        aj.m277(aj.m278(context), (BroadcastReceiver) cx.m592(list, 1, BroadcastReceiver.class), (IntentFilter) cx.m592(list, 2, IntentFilter.class));
        return null;
    }
}
