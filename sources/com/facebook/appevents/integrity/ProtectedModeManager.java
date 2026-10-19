package com.facebook.appevents.integrity;

import android.os.Bundle;
import com.facebook.FacebookSdk;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;

/* JADX INFO: compiled from: ProtectedModeManager.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class ProtectedModeManager {
    public static final ProtectedModeManager INSTANCE = new ProtectedModeManager();
    private static final Lazy defaultStandardParameterNames$delegate = LazyKt__LazyJVMKt.lazy(ProtectedModeManager$defaultStandardParameterNames$2.INSTANCE);
    private static boolean enabled;
    private static HashSet<String> standardParams;

    private ProtectedModeManager() {
    }

    private final HashSet<String> convertJSONArrayToHashSet(JSONArray jSONArray) {
        if (!CrashShieldHandler.isObjectCrashing(this) && jSONArray != null) {
            try {
                if (jSONArray.length() != 0) {
                    HashSet<String> hashSet = new HashSet<>();
                    int i = 0;
                    int length = jSONArray.length();
                    if (length > 0) {
                        while (true) {
                            int i2 = i + 1;
                            String string = jSONArray.getString(i);
                            Intrinsics.checkNotNullExpressionValue(string, "jsonArray.getString(i)");
                            hashSet.add(string);
                            if (i2 >= length) {
                                break;
                            }
                            i = i2;
                        }
                    }
                    return hashSet;
                }
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
            }
        }
        return null;
    }

    public static final void disable() {
        if (CrashShieldHandler.isObjectCrashing(ProtectedModeManager.class)) {
            return;
        }
        try {
            enabled = false;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ProtectedModeManager.class);
        }
    }

    public static final void enable() {
        if (CrashShieldHandler.isObjectCrashing(ProtectedModeManager.class)) {
            return;
        }
        try {
            ProtectedModeManager protectedModeManager = INSTANCE;
            enabled = true;
            protectedModeManager.loadStandardParams();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ProtectedModeManager.class);
        }
    }

    private final void loadStandardParams() {
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
            HashSet<String> hashSetConvertJSONArrayToHashSet = convertJSONArrayToHashSet(fetchedAppSettingsQueryAppSettings.getProtectedModeStandardParamsSetting());
            if (hashSetConvertJSONArrayToHashSet == null) {
                hashSetConvertJSONArrayToHashSet = getDefaultStandardParameterNames();
            }
            standardParams = hashSetConvertJSONArrayToHashSet;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public static final void processParametersForProtectedMode(Bundle bundle) {
        if (CrashShieldHandler.isObjectCrashing(ProtectedModeManager.class)) {
            return;
        }
        try {
            if (enabled && bundle != null && !bundle.isEmpty() && standardParams != null) {
                ArrayList arrayList = new ArrayList();
                Set<String> setKeySet = bundle.keySet();
                Intrinsics.checkNotNullExpressionValue(setKeySet, "parameters.keySet()");
                for (String param : setKeySet) {
                    HashSet<String> hashSet = standardParams;
                    Intrinsics.checkNotNull(hashSet);
                    if (!hashSet.contains(param)) {
                        Intrinsics.checkNotNullExpressionValue(param, "param");
                        arrayList.add(param);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    bundle.remove((String) it.next());
                }
                bundle.putString("pm", "1");
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, ProtectedModeManager.class);
        }
    }

    public final HashSet<String> getDefaultStandardParameterNames() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            return (HashSet) defaultStandardParameterNames$delegate.getValue();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }
}
