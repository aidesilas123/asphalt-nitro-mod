package com.facebook.appevents.integrity;

import android.os.Build;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.facebook.FacebookSdk;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: MACARuleMatchingManager.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class MACARuleMatchingManager {
    private static JSONArray MACARules;
    private static boolean enabled;
    public static final MACARuleMatchingManager INSTANCE = new MACARuleMatchingManager();
    private static String[] keys = {NotificationCompat.CATEGORY_EVENT, "_locale", "_appVersion", "_deviceOS", "_platform", "_deviceModel", "_nativeAppID", "_nativeAppShortVersion", "_timezone", "_carrier", "_deviceOSTypeName", "_deviceOSVersion", "_remainingDiskGB"};

    private MACARuleMatchingManager() {
    }

    public static final void enable() {
        if (CrashShieldHandler.isObjectCrashing(MACARuleMatchingManager.class)) {
            return;
        }
        try {
            INSTANCE.loadMACARules();
            if (MACARules != null) {
                enabled = true;
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MACARuleMatchingManager.class);
        }
    }

    public static final void generateInfo(Bundle params, String event) {
        String language;
        String country;
        if (CrashShieldHandler.isObjectCrashing(MACARuleMatchingManager.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(params, "params");
            Intrinsics.checkNotNullParameter(event, "event");
            params.putString(NotificationCompat.CATEGORY_EVENT, event);
            StringBuilder sb = new StringBuilder();
            Utility utility = Utility.INSTANCE;
            Locale locale = utility.getLocale();
            String str = "";
            if (locale == null || (language = locale.getLanguage()) == null) {
                language = "";
            }
            sb.append(language);
            sb.append('_');
            Locale locale2 = utility.getLocale();
            if (locale2 == null || (country = locale2.getCountry()) == null) {
                country = "";
            }
            sb.append(country);
            params.putString("_locale", sb.toString());
            String versionName = utility.getVersionName();
            if (versionName == null) {
                versionName = "";
            }
            params.putString("_appVersion", versionName);
            params.putString("_deviceOS", "ANDROID");
            params.putString("_platform", "mobile");
            String str2 = Build.MODEL;
            if (str2 == null) {
                str2 = "";
            }
            params.putString("_deviceModel", str2);
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            params.putString("_nativeAppID", FacebookSdk.getApplicationId());
            String versionName2 = utility.getVersionName();
            if (versionName2 != null) {
                str = versionName2;
            }
            params.putString("_nativeAppShortVersion", str);
            params.putString("_timezone", utility.getDeviceTimeZoneName());
            params.putString("_carrier", utility.getCarrierName());
            params.putString("_deviceOSTypeName", "ANDROID");
            params.putString("_deviceOSVersion", Build.VERSION.RELEASE);
            params.putLong("_remainingDiskGB", utility.getAvailableExternalStorageGB());
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MACARuleMatchingManager.class);
        }
    }

    public static final String getKey(JSONObject logic) {
        if (CrashShieldHandler.isObjectCrashing(MACARuleMatchingManager.class)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(logic, "logic");
            Iterator<String> itKeys = logic.keys();
            if (itKeys.hasNext()) {
                return itKeys.next();
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MACARuleMatchingManager.class);
            return null;
        }
    }

    public static final String getMatchPropertyIDs(Bundle bundle) {
        String strOptString;
        if (CrashShieldHandler.isObjectCrashing(MACARuleMatchingManager.class)) {
            return null;
        }
        try {
            JSONArray jSONArray = MACARules;
            if (jSONArray == null) {
                return "[]";
            }
            Integer numValueOf = jSONArray == null ? null : Integer.valueOf(jSONArray.length());
            if (numValueOf != null && numValueOf.intValue() == 0) {
                return "[]";
            }
            JSONArray jSONArray2 = MACARules;
            if (jSONArray2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type org.json.JSONArray");
            }
            ArrayList arrayList = new ArrayList();
            int i = 0;
            int length = jSONArray2.length();
            if (length > 0) {
                while (true) {
                    int i2 = i + 1;
                    String strOptString2 = jSONArray2.optString(i);
                    if (strOptString2 != null) {
                        JSONObject jSONObject = new JSONObject(strOptString2);
                        long jOptLong = jSONObject.optLong("id");
                        if (jOptLong != 0 && (strOptString = jSONObject.optString("rule")) != null && isMatchCCRule(strOptString, bundle)) {
                            arrayList.add(Long.valueOf(jOptLong));
                        }
                    }
                    if (i2 >= length) {
                        break;
                    }
                    i = i2;
                }
            }
            String string = new JSONArray((Collection) arrayList).toString();
            Intrinsics.checkNotNullExpressionValue(string, "JSONArray(res).toString()");
            return string;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MACARuleMatchingManager.class);
            return null;
        }
    }

    public static final ArrayList<String> getStringArrayList(JSONArray jSONArray) {
        if (CrashShieldHandler.isObjectCrashing(MACARuleMatchingManager.class) || jSONArray == null) {
            return null;
        }
        try {
            ArrayList<String> arrayList = new ArrayList<>();
            int i = 0;
            int length = jSONArray.length();
            if (length > 0) {
                while (true) {
                    int i2 = i + 1;
                    arrayList.add(jSONArray.get(i).toString());
                    if (i2 >= length) {
                        break;
                    }
                    i = i2;
                }
            }
            return arrayList;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MACARuleMatchingManager.class);
            return null;
        }
    }

    public static final boolean isMatchCCRule(String str, Bundle bundle) {
        int length;
        if (!CrashShieldHandler.isObjectCrashing(MACARuleMatchingManager.class) && str != null && bundle != null) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                String key = getKey(jSONObject);
                if (key == null) {
                    return false;
                }
                Object obj = jSONObject.get(key);
                int iHashCode = key.hashCode();
                if (iHashCode != 3555) {
                    if (iHashCode != 96727) {
                        if (iHashCode == 109267 && key.equals("not")) {
                            return !isMatchCCRule(obj.toString(), bundle);
                        }
                    } else if (key.equals("and")) {
                        JSONArray jSONArray = (JSONArray) obj;
                        if (jSONArray == null) {
                            return false;
                        }
                        int length2 = jSONArray.length();
                        if (length2 > 0) {
                            int i = 0;
                            while (true) {
                                int i2 = i + 1;
                                if (!isMatchCCRule(jSONArray.get(i).toString(), bundle)) {
                                    return false;
                                }
                                if (i2 >= length2) {
                                    break;
                                }
                                i = i2;
                            }
                        }
                        return true;
                    }
                } else if (key.equals("or")) {
                    JSONArray jSONArray2 = (JSONArray) obj;
                    if (jSONArray2 != null && (length = jSONArray2.length()) > 0) {
                        int i3 = 0;
                        while (true) {
                            int i4 = i3 + 1;
                            if (isMatchCCRule(jSONArray2.get(i3).toString(), bundle)) {
                                return true;
                            }
                            if (i4 >= length) {
                                break;
                            }
                            i3 = i4;
                        }
                    }
                    return false;
                }
                JSONObject jSONObject2 = (JSONObject) obj;
                if (jSONObject2 == null) {
                    return false;
                }
                return stringComparison(key, jSONObject2, bundle);
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, MACARuleMatchingManager.class);
            }
        }
        return false;
    }

    private final void loadMACARules() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            FetchedAppSettings fetchedAppSettingsQueryAppSettings = FetchedAppSettingsManager.queryAppSettings(FacebookSdk.getApplicationId(), false);
            if (fetchedAppSettingsQueryAppSettings == null) {
                return;
            }
            MACARules = fetchedAppSettingsQueryAppSettings.getMACARuleMatchingSetting();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public static final void processParameters(Bundle bundle, String event) {
        if (CrashShieldHandler.isObjectCrashing(MACARuleMatchingManager.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(event, "event");
            if (!enabled || bundle == null) {
                return;
            }
            try {
                generateInfo(bundle, event);
                bundle.putString("_audiencePropertyIds", getMatchPropertyIDs(bundle));
                bundle.putString("cs_maca", "1");
                removeGeneratedInfo(bundle);
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MACARuleMatchingManager.class);
        }
    }

    public static final void removeGeneratedInfo(Bundle params) {
        if (CrashShieldHandler.isObjectCrashing(MACARuleMatchingManager.class)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(params, "params");
            String[] strArr = keys;
            int i = 0;
            int length = strArr.length;
            while (i < length) {
                String str = strArr[i];
                i++;
                params.remove(str);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MACARuleMatchingManager.class);
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0251 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0252 A[Catch: all -> 0x03c7, TryCatch #0 {all -> 0x03c7, blocks: (B:5:0x000a, B:8:0x001b, B:13:0x003f, B:12:0x0037, B:22:0x0065, B:25:0x006d, B:29:0x007a, B:32:0x0084, B:34:0x008a, B:36:0x0095, B:37:0x00a2, B:38:0x00a7, B:39:0x00a8, B:40:0x00ad, B:41:0x00ae, B:44:0x00b8, B:47:0x00c4, B:149:0x0252, B:152:0x0259, B:153:0x025d, B:155:0x0263, B:157:0x026b, B:159:0x027a, B:162:0x028a, B:163:0x028f, B:164:0x0290, B:165:0x0295, B:50:0x00ce, B:53:0x00d8, B:55:0x00de, B:57:0x00e9, B:58:0x00f6, B:59:0x00fb, B:60:0x00fc, B:61:0x0101, B:62:0x0102, B:171:0x02a3, B:174:0x02ab, B:175:0x02af, B:177:0x02b5, B:179:0x02bd, B:181:0x02cc, B:184:0x02db, B:185:0x02e0, B:186:0x02e1, B:187:0x02e6, B:65:0x010c, B:68:0x0116, B:70:0x011c, B:72:0x0127, B:73:0x0134, B:74:0x0139, B:75:0x013a, B:76:0x013f, B:77:0x0140, B:125:0x01ee, B:80:0x014a, B:119:0x01d3, B:83:0x0154, B:110:0x01ae, B:86:0x015e, B:89:0x0168, B:141:0x0234, B:92:0x0172, B:95:0x017c, B:228:0x0388, B:98:0x0186, B:131:0x0205, B:101:0x0190, B:104:0x019a, B:137:0x0220, B:107:0x01a4, B:113:0x01bf, B:116:0x01c9, B:122:0x01e4, B:128:0x01fb, B:134:0x0216, B:138:0x022a, B:144:0x0245, B:166:0x0296, B:188:0x02e7, B:191:0x02f1, B:193:0x02f7, B:195:0x0302, B:198:0x0311, B:199:0x0316, B:200:0x0317, B:201:0x031c, B:202:0x031d, B:205:0x0327, B:206:0x0331, B:222:0x0373, B:209:0x033b, B:212:0x0345, B:213:0x0354, B:216:0x035e, B:217:0x0367, B:223:0x037c, B:229:0x0391, B:232:0x039a, B:234:0x03a0, B:236:0x03ab, B:239:0x03ba, B:240:0x03bf, B:241:0x03c0, B:242:0x03c5, B:18:0x0052), top: B:247:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x02b5 A[Catch: all -> 0x03c7, TryCatch #0 {all -> 0x03c7, blocks: (B:5:0x000a, B:8:0x001b, B:13:0x003f, B:12:0x0037, B:22:0x0065, B:25:0x006d, B:29:0x007a, B:32:0x0084, B:34:0x008a, B:36:0x0095, B:37:0x00a2, B:38:0x00a7, B:39:0x00a8, B:40:0x00ad, B:41:0x00ae, B:44:0x00b8, B:47:0x00c4, B:149:0x0252, B:152:0x0259, B:153:0x025d, B:155:0x0263, B:157:0x026b, B:159:0x027a, B:162:0x028a, B:163:0x028f, B:164:0x0290, B:165:0x0295, B:50:0x00ce, B:53:0x00d8, B:55:0x00de, B:57:0x00e9, B:58:0x00f6, B:59:0x00fb, B:60:0x00fc, B:61:0x0101, B:62:0x0102, B:171:0x02a3, B:174:0x02ab, B:175:0x02af, B:177:0x02b5, B:179:0x02bd, B:181:0x02cc, B:184:0x02db, B:185:0x02e0, B:186:0x02e1, B:187:0x02e6, B:65:0x010c, B:68:0x0116, B:70:0x011c, B:72:0x0127, B:73:0x0134, B:74:0x0139, B:75:0x013a, B:76:0x013f, B:77:0x0140, B:125:0x01ee, B:80:0x014a, B:119:0x01d3, B:83:0x0154, B:110:0x01ae, B:86:0x015e, B:89:0x0168, B:141:0x0234, B:92:0x0172, B:95:0x017c, B:228:0x0388, B:98:0x0186, B:131:0x0205, B:101:0x0190, B:104:0x019a, B:137:0x0220, B:107:0x01a4, B:113:0x01bf, B:116:0x01c9, B:122:0x01e4, B:128:0x01fb, B:134:0x0216, B:138:0x022a, B:144:0x0245, B:166:0x0296, B:188:0x02e7, B:191:0x02f1, B:193:0x02f7, B:195:0x0302, B:198:0x0311, B:199:0x0316, B:200:0x0317, B:201:0x031c, B:202:0x031d, B:205:0x0327, B:206:0x0331, B:222:0x0373, B:209:0x033b, B:212:0x0345, B:213:0x0354, B:216:0x035e, B:217:0x0367, B:223:0x037c, B:229:0x0391, B:232:0x039a, B:234:0x03a0, B:236:0x03ab, B:239:0x03ba, B:240:0x03bf, B:241:0x03c0, B:242:0x03c5, B:18:0x0052), top: B:247:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0372 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0373 A[Catch: all -> 0x03c7, TryCatch #0 {all -> 0x03c7, blocks: (B:5:0x000a, B:8:0x001b, B:13:0x003f, B:12:0x0037, B:22:0x0065, B:25:0x006d, B:29:0x007a, B:32:0x0084, B:34:0x008a, B:36:0x0095, B:37:0x00a2, B:38:0x00a7, B:39:0x00a8, B:40:0x00ad, B:41:0x00ae, B:44:0x00b8, B:47:0x00c4, B:149:0x0252, B:152:0x0259, B:153:0x025d, B:155:0x0263, B:157:0x026b, B:159:0x027a, B:162:0x028a, B:163:0x028f, B:164:0x0290, B:165:0x0295, B:50:0x00ce, B:53:0x00d8, B:55:0x00de, B:57:0x00e9, B:58:0x00f6, B:59:0x00fb, B:60:0x00fc, B:61:0x0101, B:62:0x0102, B:171:0x02a3, B:174:0x02ab, B:175:0x02af, B:177:0x02b5, B:179:0x02bd, B:181:0x02cc, B:184:0x02db, B:185:0x02e0, B:186:0x02e1, B:187:0x02e6, B:65:0x010c, B:68:0x0116, B:70:0x011c, B:72:0x0127, B:73:0x0134, B:74:0x0139, B:75:0x013a, B:76:0x013f, B:77:0x0140, B:125:0x01ee, B:80:0x014a, B:119:0x01d3, B:83:0x0154, B:110:0x01ae, B:86:0x015e, B:89:0x0168, B:141:0x0234, B:92:0x0172, B:95:0x017c, B:228:0x0388, B:98:0x0186, B:131:0x0205, B:101:0x0190, B:104:0x019a, B:137:0x0220, B:107:0x01a4, B:113:0x01bf, B:116:0x01c9, B:122:0x01e4, B:128:0x01fb, B:134:0x0216, B:138:0x022a, B:144:0x0245, B:166:0x0296, B:188:0x02e7, B:191:0x02f1, B:193:0x02f7, B:195:0x0302, B:198:0x0311, B:199:0x0316, B:200:0x0317, B:201:0x031c, B:202:0x031d, B:205:0x0327, B:206:0x0331, B:222:0x0373, B:209:0x033b, B:212:0x0345, B:213:0x0354, B:216:0x035e, B:217:0x0367, B:223:0x037c, B:229:0x0391, B:232:0x039a, B:234:0x03a0, B:236:0x03ab, B:239:0x03ba, B:240:0x03bf, B:241:0x03c0, B:242:0x03c5, B:18:0x0052), top: B:247:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0387 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0388 A[Catch: all -> 0x03c7, TryCatch #0 {all -> 0x03c7, blocks: (B:5:0x000a, B:8:0x001b, B:13:0x003f, B:12:0x0037, B:22:0x0065, B:25:0x006d, B:29:0x007a, B:32:0x0084, B:34:0x008a, B:36:0x0095, B:37:0x00a2, B:38:0x00a7, B:39:0x00a8, B:40:0x00ad, B:41:0x00ae, B:44:0x00b8, B:47:0x00c4, B:149:0x0252, B:152:0x0259, B:153:0x025d, B:155:0x0263, B:157:0x026b, B:159:0x027a, B:162:0x028a, B:163:0x028f, B:164:0x0290, B:165:0x0295, B:50:0x00ce, B:53:0x00d8, B:55:0x00de, B:57:0x00e9, B:58:0x00f6, B:59:0x00fb, B:60:0x00fc, B:61:0x0101, B:62:0x0102, B:171:0x02a3, B:174:0x02ab, B:175:0x02af, B:177:0x02b5, B:179:0x02bd, B:181:0x02cc, B:184:0x02db, B:185:0x02e0, B:186:0x02e1, B:187:0x02e6, B:65:0x010c, B:68:0x0116, B:70:0x011c, B:72:0x0127, B:73:0x0134, B:74:0x0139, B:75:0x013a, B:76:0x013f, B:77:0x0140, B:125:0x01ee, B:80:0x014a, B:119:0x01d3, B:83:0x0154, B:110:0x01ae, B:86:0x015e, B:89:0x0168, B:141:0x0234, B:92:0x0172, B:95:0x017c, B:228:0x0388, B:98:0x0186, B:131:0x0205, B:101:0x0190, B:104:0x019a, B:137:0x0220, B:107:0x01a4, B:113:0x01bf, B:116:0x01c9, B:122:0x01e4, B:128:0x01fb, B:134:0x0216, B:138:0x022a, B:144:0x0245, B:166:0x0296, B:188:0x02e7, B:191:0x02f1, B:193:0x02f7, B:195:0x0302, B:198:0x0311, B:199:0x0316, B:200:0x0317, B:201:0x031c, B:202:0x031d, B:205:0x0327, B:206:0x0331, B:222:0x0373, B:209:0x033b, B:212:0x0345, B:213:0x0354, B:216:0x035e, B:217:0x0367, B:223:0x037c, B:229:0x0391, B:232:0x039a, B:234:0x03a0, B:236:0x03ab, B:239:0x03ba, B:240:0x03bf, B:241:0x03c0, B:242:0x03c5, B:18:0x0052), top: B:247:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:278:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:281:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:283:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:286:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:290:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final boolean stringComparison(java.lang.String r9, org.json.JSONObject r10, android.os.Bundle r11) {
        /*
            Method dump skipped, instruction units count: 1106
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.integrity.MACARuleMatchingManager.stringComparison(java.lang.String, org.json.JSONObject, android.os.Bundle):boolean");
    }
}
