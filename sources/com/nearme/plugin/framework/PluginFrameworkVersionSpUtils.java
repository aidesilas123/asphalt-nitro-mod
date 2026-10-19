package com.nearme.plugin.framework;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes4.dex */
public class PluginFrameworkVersionSpUtils {
    private static PluginFrameworkVersionSpUtils a;
    private SharedPreferences b;
    private SharedPreferences.Editor c;

    private PluginFrameworkVersionSpUtils(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("plugin_framework", 0);
        this.b = sharedPreferences;
        this.c = sharedPreferences.edit();
    }

    public static PluginFrameworkVersionSpUtils getInstance(Context context) {
        if (a == null) {
            synchronized (PluginFrameworkVersionSpUtils.class) {
                if (a == null) {
                    a = new PluginFrameworkVersionSpUtils(context);
                }
            }
        }
        return a;
    }

    public int a(String str) {
        return this.b.getInt("cur_version_of_" + str, Integer.MIN_VALUE);
    }

    public int b(String str) {
        return this.b.getInt("update_version_of_" + str, Integer.MIN_VALUE);
    }

    public boolean c(String str, int i) {
        this.c.putInt("cur_version_of_" + str, i);
        return this.c.commit();
    }

    public boolean d(String str, int i) {
        this.c.putInt("update_version_of_" + str, i);
        return this.c.commit();
    }
}
