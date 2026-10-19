package com.apm.insight.i;

import android.annotation.SuppressLint;
import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
import com.apm.insight.runtime.s;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private static volatile UUID a = null;
    private static String b = "";

    @SuppressLint({"MissingPermission", "HardwareIds"})
    private a(Context context) {
        if (a == null) {
            synchronized (a.class) {
                if (a == null) {
                    String string = null;
                    String strA = s.a().a((String) null);
                    if (strA != null) {
                        a = UUID.fromString(strA);
                    } else {
                        try {
                            string = Settings.Secure.getString(context.getContentResolver(), "android_id");
                        } catch (Throwable unused) {
                        }
                        try {
                            a = string != null ? UUID.nameUUIDFromBytes(string.getBytes("utf8")) : UUID.randomUUID();
                        } catch (Throwable unused2) {
                        }
                        try {
                            s.a().c(a.toString());
                        } catch (Throwable unused3) {
                        }
                    }
                }
            }
        }
    }

    public static synchronized String a(Context context) {
        UUID uuidA;
        if (TextUtils.isEmpty(b) && (uuidA = new a(context).a()) != null) {
            b = uuidA.toString();
        }
        return b;
    }

    public UUID a() {
        return a;
    }
}
