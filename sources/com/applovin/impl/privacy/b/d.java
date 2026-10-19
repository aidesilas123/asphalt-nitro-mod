package com.applovin.impl.privacy.b;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.mbridge.msdk.MBridgeConstans;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class d {
    public static boolean cr(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        for (String str2 : str.split("\\.")) {
            if (!cs(str2)) {
                return false;
            }
        }
        return true;
    }

    private static boolean cs(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("^[a-zA-Z\\d_-]*$");
    }

    public static boolean ct(@Nullable String str) {
        if (str == null || str.length() < 2) {
            return false;
        }
        String[] strArrSplit = str.split("~", -1);
        return (strArrSplit.length == 2 && "1".equals(strArrSplit[0])) ? Pattern.matches("(\\d+(\\.\\d+)*)?", strArrSplit[1]) : strArrSplit.length == 3 && MBridgeConstans.API_REUQEST_CATEGORY_APP.equals(strArrSplit[0]) && Pattern.matches("(\\d+(\\.\\d+)*)?", strArrSplit[1]) && strArrSplit[2].length() >= 3 && strArrSplit[2].startsWith("dv.") && Pattern.matches("(\\d+(\\.\\d+)*)?", strArrSplit[2].substring(3));
    }

    public static boolean e(@Nullable String str, int i) {
        return str != null && i >= 0 && str.length() > i && str.charAt(i) == '1';
    }

    public static Boolean f(int i, @Nullable String str) {
        if (!ct(str)) {
            return null;
        }
        String[] strArrSplit = str.split("~", -1);
        List listAsList = Arrays.asList(strArrSplit[1].split("\\."));
        String strValueOf = String.valueOf(i);
        boolean zContains = listAsList.contains(strValueOf);
        if (strArrSplit[0].equals("1")) {
            return Boolean.valueOf(zContains);
        }
        if (zContains) {
            return Boolean.TRUE;
        }
        if (Arrays.asList(strArrSplit[2].split("\\.")).contains(strValueOf)) {
            return Boolean.FALSE;
        }
        return null;
    }
}
