package com.hyprmx.android.sdk.utility;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import com.google.android.gms.drive.DriveFile;
import com.hyprmx.android.R;
import com.hyprmx.android.sdk.banner.HyprMXBannerSize;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class a1 {
    public static final HyprMXBannerSize a(Context context, AttributeSet attrs) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attrs, R.styleable.HyprMXView, 0, 0);
        Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "context.theme.obtainStyl….HyprMXView,\n    0, 0\n  )");
        int integer = typedArrayObtainStyledAttributes.getInteger(R.styleable.HyprMXView_hyprMXAdSize, Integer.MIN_VALUE);
        if (integer == Integer.MIN_VALUE) {
            HyprMXLog.d("HyprMXAdSize not defined in XML");
            return null;
        }
        if (integer == 0) {
            return HyprMXBannerSize.HyprMXAdSizeShort.INSTANCE;
        }
        if (integer == 1) {
            return HyprMXBannerSize.HyprMXAdSizeBanner.INSTANCE;
        }
        if (integer == 2) {
            return HyprMXBannerSize.HyprMXAdSizeMediumRectangle.INSTANCE;
        }
        if (integer == 3) {
            return HyprMXBannerSize.HyprMXAdSizeLeaderboard.INSTANCE;
        }
        if (integer == 4) {
            return HyprMXBannerSize.HyprMXAdSizeSkyScraper.INSTANCE;
        }
        if (integer == 5) {
            return new HyprMXBannerSize.HyprMXAdSizeCustom(0, 0);
        }
        HyprMXLog.d("Could not determine HyprMXAdSize from attributes");
        return null;
    }

    public static final boolean a() {
        return Build.VERSION.SDK_INT < 26;
    }

    public static final boolean a(Context context, String url) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(url, "<this>");
        Intent intent = Intent.parseUri(url, Build.VERSION.SDK_INT >= 23 ? 3 : 1).addFlags(DriveFile.MODE_READ_ONLY);
        Intrinsics.checkNotNullExpressionValue(intent, "parseUri(this, uriFlags)…t.FLAG_ACTIVITY_NEW_TASK)");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        try {
            HyprMXLog.d("Starting Activity for intent " + intent);
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException unused) {
            HyprMXLog.d("Unable to start activity for intent " + intent);
            return false;
        }
    }

    public static final String b(Context context, AttributeSet attrs) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attrs, R.styleable.HyprMXView, 0, 0);
        Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "context.theme.obtainStyl….HyprMXView,\n    0, 0\n  )");
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.HyprMXView_hyprMXPlacementName);
        if (string == null) {
            HyprMXLog.d("HyprMXPlacementName not defined in XML");
        }
        return string;
    }
}
