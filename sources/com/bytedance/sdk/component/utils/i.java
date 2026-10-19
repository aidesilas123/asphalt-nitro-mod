package com.bytedance.sdk.component.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import java.util.Locale;

/* JADX INFO: compiled from: LanguageUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public class i {

    @SuppressLint({"StaticFieldLeak"})
    private static Context a;

    public static void a(Context context, String str, String str2) {
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        try {
            Configuration configurationB = b(context, str, str2);
            if (Build.VERSION.SDK_INT >= 17) {
                a = context.createConfigurationContext(configurationB);
            }
        } catch (Throwable th) {
            l.d(th.getMessage());
        }
        s.a(a);
    }

    private static Configuration b(Context context, String str, String str2) {
        Configuration configuration = new Configuration(context.getResources().getConfiguration());
        if (Build.VERSION.SDK_INT >= 17) {
            configuration.setLocale(new Locale(str, str2));
        }
        return configuration;
    }
}
