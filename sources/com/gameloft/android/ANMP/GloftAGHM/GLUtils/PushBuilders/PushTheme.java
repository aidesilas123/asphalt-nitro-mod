package com.gameloft.android.ANMP.GloftAGHM.GLUtils.PushBuilders;

import android.content.Context;
import android.content.res.Resources;
import com.gameloft.android.ANMP.GloftAGHM.PushNotification.SimplifiedAndroidUtils;
import com.gameloft.android.ANMP.GloftAGHM.R;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;

/* JADX INFO: loaded from: classes2.dex */
public class PushTheme {
    public static int a = 2131231110;
    public static int b;

    public static int getIcon() {
        return a;
    }

    public static void init(Context context) {
        initCustoms(context);
    }

    static void initCustoms(Context context) {
        Resources resources = context.getResources();
        if (SimplifiedAndroidUtils.f2849d) {
            String str = SimplifiedAndroidUtils.f2852g;
            if (str != null) {
                a = resources.getIdentifier(str, "drawable", context.getPackageName());
            }
            if (a == 0) {
                a = resources.getIdentifier("pn_custom_icon", "drawable", context.getPackageName());
            }
        } else {
            a = resources.getIdentifier("pn_icon", "drawable", context.getPackageName());
        }
        b = resources.getIdentifier("custom_notification_layout", TtmlNode.TAG_LAYOUT, context.getPackageName());
        if (a == 0) {
            a = R.drawable.icon;
        }
    }
}
