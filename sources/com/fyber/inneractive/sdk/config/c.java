package com.fyber.inneractive.sdk.config;

import android.text.TextUtils;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.external.InvalidAppIdException;
import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.util.IAlog;
import com.unity3d.services.UnityAdsConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class c implements com.fyber.inneractive.sdk.cache.a<IAConfigManager.c> {
    public boolean a = false;

    public static Object a(Object obj, Object... objArr) {
        for (Object obj2 : objArr) {
            if (obj2 != null) {
                return obj2;
            }
        }
        return obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01f4  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x03aa  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x03ad  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x03b5  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x03b8  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x03e6  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x03e9  */
    /* JADX WARN: Removed duplicated region for block: B:229:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x03f2  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x03fa  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0427  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x042a  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x042f  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x0432  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0438  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x043b  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x045a  */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0466  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0469  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x046f  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0473  */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0479  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x047d  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0499  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0187  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.fyber.inneractive.sdk.config.IAConfigManager.c a(com.fyber.inneractive.sdk.config.remote.e r24) {
        /*
            Method dump skipped, instruction units count: 1244
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.config.c.a(com.fyber.inneractive.sdk.config.remote.e):com.fyber.inneractive.sdk.config.IAConfigManager$c");
    }

    @Override // com.fyber.inneractive.sdk.cache.a
    public IAConfigManager.c a(String str) throws Exception {
        try {
            IAConfigManager iAConfigManager = IAConfigManager.M;
            iAConfigManager.D.b();
            com.fyber.inneractive.sdk.config.remote.e eVarA = com.fyber.inneractive.sdk.config.remote.e.a(new JSONObject(str));
            String str2 = iAConfigManager.c;
            if (eVarA != null && str2.equals(eVarA.a.a)) {
                eVarA.f1971d = str;
                return a(eVarA);
            }
            IAlog.b("internal error while parsing local configuration", new Object[0]);
            if (eVarA != null && !str2.equals(eVarA.a.a)) {
                throw new InvalidAppIdException();
            }
            a((Throwable) null, str);
            return null;
        } catch (Throwable th) {
            a(th, str);
            IAlog.b("Exception Error while parsing local configuration", new Object[0]);
            throw th;
        }
    }

    @Override // com.fyber.inneractive.sdk.cache.a
    public String a() {
        String str = IAConfigManager.M.c;
        StringBuilder sb = new StringBuilder("https://");
        int i = f.a;
        String property = System.getProperty("ia.testEnvironmentConfiguration.baseConfigUrl");
        if (TextUtils.isEmpty(property)) {
            sb.append("cdn2.inner-active.mobi/ia-sdk-config/apps/");
        } else {
            sb.append(property);
        }
        sb.append(str);
        sb.append('/');
        sb.append(str);
        sb.append(".json");
        String string = sb.toString();
        int i2 = IAlog.a;
        IAlog.a(1, null, "%s: %s", "APP_CONFIG_REQUEST", string);
        return string;
    }

    @Override // com.fyber.inneractive.sdk.cache.a
    public void a(IAConfigManager.c cVar) {
        IAConfigManager.c cVar2 = cVar;
        if (cVar2 == null || cVar2.a == null) {
            return;
        }
        com.fyber.inneractive.sdk.util.l.a.getSharedPreferences("IAConfigurationPreferences", 0).edit().putString("cached.config.appid", cVar2.a).apply();
    }

    public final void a(Throwable th, String str) {
        String strSubstring;
        String name;
        String localizedMessage;
        if (this.a) {
            return;
        }
        this.a = true;
        if (TextUtils.isEmpty(str)) {
            strSubstring = "Empty Json Data";
        } else {
            strSubstring = str.substring(0, str.length() > 501 ? 500 : str.length() - 1);
        }
        if (th != null) {
            name = th.getClass().getName();
            localizedMessage = th.getLocalizedMessage();
        } else {
            name = "Bad remote configuration";
            localizedMessage = UnityAdsConstants.Messages.MSG_INTERNAL_ERROR;
        }
        String str2 = IAConfigManager.M.c;
        s.a aVar = new s.a(com.fyber.inneractive.sdk.network.q.FATAL_CONFIGURATION_ERROR);
        Object[] objArr = new Object[8];
        objArr[0] = "exception";
        objArr[1] = name;
        objArr[2] = "message";
        if (localizedMessage == null) {
            localizedMessage = "No message";
        }
        objArr[3] = localizedMessage;
        objArr[4] = "data";
        objArr[5] = strSubstring;
        objArr[6] = "appId";
        if (TextUtils.isEmpty(str2)) {
            str2 = "EMPTY_APP_ID";
        }
        objArr[7] = str2;
        aVar.a(objArr).a((String) null);
    }

    @Override // com.fyber.inneractive.sdk.cache.a
    public String b() {
        return "IALastModifiedFromHeader";
    }

    @Override // com.fyber.inneractive.sdk.cache.a
    public String c() {
        return "inneractive.config";
    }

    @Override // com.fyber.inneractive.sdk.cache.a
    public boolean d() {
        String string = com.fyber.inneractive.sdk.util.l.a.getSharedPreferences("IAConfigurationPreferences", 0).getString("cached.config.appid", null);
        return string != null && string.equalsIgnoreCase(IAConfigManager.M.c);
    }
}
