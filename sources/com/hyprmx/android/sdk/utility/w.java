package com.hyprmx.android.sdk.utility;

import android.content.Context;
import android.graphics.Color;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class w {
    public static final int a(int i, Context context) {
        if (context == null) {
            return 0;
        }
        float f2 = i;
        Intrinsics.checkNotNullParameter(context, "<this>");
        float f3 = 0.0f;
        if (f2 > 0.0f) {
            Intrinsics.checkNotNullParameter(context, "<this>");
            f3 = f2 * context.getResources().getDisplayMetrics().density;
        }
        return (int) (f3 + 0.5f);
    }

    public static final int a(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (str.length() == 8) {
            StringBuilder sb = new StringBuilder();
            String strSubstring = str.substring(6);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String).substring(startIndex)");
            sb.append(strSubstring);
            String strSubstring2 = str.substring(0, 6);
            Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
            sb.append(strSubstring2);
            str = sb.toString();
        }
        return Color.parseColor("#" + str);
    }

    public static final float b(int i, Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        float f2 = i;
        Intrinsics.checkNotNullParameter(context, "<this>");
        if (f2 <= 0.0f) {
            return 0.0f;
        }
        Intrinsics.checkNotNullParameter(context, "<this>");
        return f2 / context.getResources().getDisplayMetrics().density;
    }
}
