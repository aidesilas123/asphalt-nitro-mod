package com.tapjoy.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.tapjoy.TapjoyUtil;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.io.File;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class m2 {
    public static final m2 a = new m2();
    public Context b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public File f7940e;
    public SharedPreferences c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public SharedPreferences f7939d = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ThreadPoolExecutor f7941f = new ThreadPoolExecutor(0, 1, 1, TimeUnit.SECONDS, new LinkedBlockingQueue());

    public final synchronized String a(URL url) {
        String str;
        String string;
        String string2 = url.toString();
        try {
            String strConvertToHex = TapjoyUtil.convertToHex(MessageDigest.getInstance(AndroidStaticDeviceInfoDataSource.ALGORITHM_SHA1).digest(string2.getBytes()));
            String string3 = this.f7939d.getString(strConvertToHex, null);
            if (string3 == null) {
                this.f7939d.edit().putString(strConvertToHex, string2).commit();
                return strConvertToHex;
            }
            if (string3.equals(string2)) {
                return strConvertToHex;
            }
            int i = 0;
            do {
                i++;
                str = strConvertToHex + "_" + i;
                string = this.f7939d.getString(str, null);
                if (string == null) {
                    break;
                }
            } while (!string.equals(string2));
            this.f7939d.edit().putString(str, string2).commit();
            return str;
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException(e2);
        }
    }
}
