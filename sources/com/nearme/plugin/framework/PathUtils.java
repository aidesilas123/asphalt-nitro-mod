package com.nearme.plugin.framework;

import android.content.Context;
import android.text.TextUtils;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public class PathUtils {
    private static Map<String, Integer> a = new HashMap();
    private static Map<String, String> b = new HashMap();

    public static Pattern createPluginPattern(String str) {
        return Pattern.compile("(" + getNameExcludExtension(str) + ")_(\\w+)(\\.\\w+)?");
    }

    public static String getLibPath(Context context) throws IOException {
        return context.getDir("lib", 0).getCanonicalPath();
    }

    public static String getNameExcludExtension(String str) {
        int iLastIndexOf;
        return (TextUtils.isEmpty(str) || (iLastIndexOf = str.lastIndexOf(46)) == -1) ? str : str.substring(0, iLastIndexOf);
    }

    public static String getOptimizedDexPath(Context context) throws IOException {
        return context.getDir("odex", 0).getCanonicalPath();
    }

    public static String getPluginInstallPath(Context context, String str) throws IOException {
        if (a.get(str) == null) {
            int iA = PluginFrameworkVersionSpUtils.getInstance(context).a(str);
            if (Integer.MIN_VALUE == iA) {
                Pattern patternCreatePluginPattern = createPluginPattern(str);
                int i = 0;
                String[] list = context.getDir("plugins", 0).list();
                String strGroup = null;
                if (list != null) {
                    int length = list.length;
                    while (true) {
                        if (i >= length) {
                            break;
                        }
                        Matcher matcher = patternCreatePluginPattern.matcher(list[i]);
                        if (matcher.matches()) {
                            strGroup = matcher.group(2);
                            break;
                        }
                        i++;
                    }
                }
                if (TextUtils.isEmpty(strGroup)) {
                    throw new IOException("未找到已安装的插件apk");
                }
                iA = Integer.parseInt(strGroup);
            }
            a.put(str, Integer.valueOf(iA));
        }
        return getPluginInstallPath(context, str, a.get(str).intValue());
    }

    public static String getPluginInstallPath(Context context, String str, int i) throws IOException {
        String str2 = b.get(str + i);
        if (!TextUtils.isEmpty(str2)) {
            return str2;
        }
        String canonicalPath = new File(context.getDir("plugins", 0), getNameExcludExtension(str) + "_" + i + ".apk").getCanonicalPath();
        Map<String, String> map = b;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(i);
        map.put(sb.toString(), canonicalPath);
        return canonicalPath;
    }

    public static String getPluginTempPath(Context context, String str, int i) {
        try {
            return getPluginInstallPath(context, str, i) + "_temp";
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String getPluginUpdatePath(Context context, String str, int i) {
        try {
            return getPluginInstallPath(context, str, i) + "_update";
        } catch (IOException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static void updateVersionCache(String str, int i) {
        a.put(str, Integer.valueOf(i));
    }
}
