package com.hyprmx.android.sdk.utility;

import android.media.MediaPlayer;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.Html;
import android.text.Spanned;
import android.util.DisplayMetrics;
import androidx.appcompat.app.AppCompatActivity;
import com.mbridge.msdk.foundation.tools.SameMD5;
import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class w0 {
    public static int a(AppCompatActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        int rotation = activity.getWindowManager().getDefaultDisplay().getRotation();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        if (((rotation == 0 || rotation == 2) && i2 > i) || ((rotation == 1 || rotation == 3) && i > i2)) {
            if (rotation != 0) {
                if (rotation == 1) {
                    return 0;
                }
                if (rotation != 2) {
                    if (rotation != 3) {
                        HyprMXLog.e("Unknown screen orientation. Defaulting to portrait.");
                    }
                    return 8;
                }
                return 9;
            }
            return 1;
        }
        if (rotation == 0) {
            return 0;
        }
        if (rotation != 1) {
            if (rotation != 2) {
                if (rotation != 3) {
                    HyprMXLog.e("Unknown screen orientation. Defaulting to landscape.");
                    return 0;
                }
                return 9;
            }
            return 8;
        }
        return 1;
    }

    public static long a() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
    }

    public static String a(String data) throws NoSuchAlgorithmException {
        Intrinsics.checkNotNullParameter(data, "data");
        MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
        byte[] bytes = data.getBytes(Charsets.b);
        Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
        byte[] bytes2 = messageDigest.digest(bytes);
        Intrinsics.checkNotNullExpressionValue(bytes2, "bytes");
        return ArraysKt___ArraysKt.joinToString$default(bytes2, (CharSequence) "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) v0.a, 30, (Object) null);
    }

    public static String a(JSONObject json, String key, String defaultUrl, com.hyprmx.android.sdk.analytics.b clientErrorController) {
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(defaultUrl, "defaultUrl");
        Intrinsics.checkNotNullParameter(clientErrorController, "clientErrorController");
        try {
            json.get(key);
            String strA = i0.a(key, json);
            if (strA == null || strA.length() == 0) {
                HyprMXLog.d("URL for " + key + " is null or empty");
                return defaultUrl;
            }
            URL url = null;
            try {
                url = new URL(strA);
            } catch (IOException unused) {
                String str = "URL for " + key + " is invalid";
                HyprMXLog.e(str);
                clientErrorController.a(s.HYPRErrorTypeJSONParsingFailure, str, 3);
                strA = defaultUrl;
            }
            if (url != null) {
                try {
                    url.toURI();
                } catch (URISyntaxException unused2) {
                    String str2 = "URL for " + key + " contains invalid characters";
                    HyprMXLog.e(str2);
                    clientErrorController.a(s.HYPRErrorTypeJSONParsingFailure, str2, 3);
                    return defaultUrl;
                }
            }
            return strA;
        } catch (JSONException unused3) {
            return defaultUrl;
        }
    }

    public static Spanned b(String spanText) {
        Spanned spannedFromHtml;
        String str;
        Intrinsics.checkNotNullParameter(spanText, "spanText");
        if (Build.VERSION.SDK_INT >= 24) {
            spannedFromHtml = Html.fromHtml(spanText, 256);
            str = "{\n      Html.fromHtml(sp…ION_USE_CSS_COLORS)\n    }";
        } else {
            spannedFromHtml = Html.fromHtml(spanText);
            str = "{\n      Html.fromHtml(spanText)\n    }";
        }
        Intrinsics.checkNotNullExpressionValue(spannedFromHtml, str);
        return spannedFromHtml;
    }

    public static boolean c(String mediaFilePath) throws Throwable {
        Intrinsics.checkNotNullParameter(mediaFilePath, "mediaFilePath");
        MediaPlayer mediaPlayer = null;
        try {
            MediaPlayer mediaPlayer2 = new MediaPlayer();
            try {
                mediaPlayer2.setDataSource(mediaFilePath);
                mediaPlayer2.prepare();
                mediaPlayer2.release();
                return true;
            } catch (Exception unused) {
                mediaPlayer = mediaPlayer2;
                if (mediaPlayer == null) {
                    return false;
                }
                mediaPlayer.release();
                return false;
            } catch (Throwable th) {
                th = th;
                mediaPlayer = mediaPlayer2;
                if (mediaPlayer != null) {
                    mediaPlayer.release();
                }
                throw th;
            }
        } catch (Exception unused2) {
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
