package com.google.android.material.color;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleRes;
import com.google.android.material.R$attr;
import com.google.android.material.color.d;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class DynamicColors {
    private static final int[] a = {R$attr.t};
    private static final c b;

    @SuppressLint({"PrivateApi"})
    private static final c c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<String, c> f3217d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Map<String, c> f3218e;

    class a implements c {
        a() {
        }

        @Override // com.google.android.material.color.DynamicColors.c
        public boolean isSupported() {
            return true;
        }
    }

    class b implements c {
        private Long a;

        b() {
        }

        @Override // com.google.android.material.color.DynamicColors.c
        public boolean isSupported() {
            if (this.a == null) {
                try {
                    Method declaredMethod = Build.class.getDeclaredMethod("getLong", String.class);
                    declaredMethod.setAccessible(true);
                    this.a = Long.valueOf(((Long) declaredMethod.invoke(null, "ro.build.version.oneui")).longValue());
                } catch (Exception unused) {
                    this.a = -1L;
                }
            }
            return this.a.longValue() >= 40100;
        }
    }

    private interface c {
        boolean isSupported();
    }

    private static class d implements Application.ActivityLifecycleCallbacks {
        private final com.google.android.material.color.d a;

        d(@NonNull com.google.android.material.color.d dVar) {
            this.a = dVar;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
            DynamicColors.b(activity, this.a.e(), this.a.d(), this.a.c());
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(@NonNull Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(@NonNull Activity activity) {
        }
    }

    public interface e {
        void a(@NonNull Activity activity);
    }

    public interface f {
        boolean a(@NonNull Activity activity, @StyleRes int i);
    }

    static {
        a aVar = new a();
        b = aVar;
        b bVar = new b();
        c = bVar;
        HashMap map = new HashMap();
        map.put(AndroidStaticDeviceInfoDataSource.STORE_GOOGLE, aVar);
        map.put("hmd global", aVar);
        map.put("infinix", aVar);
        map.put("infinix mobility limited", aVar);
        map.put("itel", aVar);
        map.put("kyocera", aVar);
        map.put("lenovo", aVar);
        map.put("lge", aVar);
        map.put("motorola", aVar);
        map.put("nothing", aVar);
        map.put("oneplus", aVar);
        map.put("oppo", aVar);
        map.put("realme", aVar);
        map.put("robolectric", aVar);
        map.put("samsung", bVar);
        map.put("sharp", aVar);
        map.put("sony", aVar);
        map.put("tcl", aVar);
        map.put("tecno", aVar);
        map.put("tecno mobile limited", aVar);
        map.put("vivo", aVar);
        map.put("xiaomi", aVar);
        f3217d = Collections.unmodifiableMap(map);
        HashMap map2 = new HashMap();
        map2.put("asus", aVar);
        map2.put("jio", aVar);
        f3218e = Collections.unmodifiableMap(map2);
    }

    private DynamicColors() {
    }

    @Deprecated
    public static void applyIfAvailable(@NonNull Activity activity) {
        applyToActivityIfAvailable(activity);
    }

    @Deprecated
    public static void applyIfAvailable(@NonNull Activity activity, @StyleRes int i) {
        applyToActivityIfAvailable(activity, new d.c().f(i).d());
    }

    @Deprecated
    public static void applyIfAvailable(@NonNull Activity activity, @NonNull f fVar) {
        applyToActivityIfAvailable(activity, new d.c().e(fVar).d());
    }

    public static void applyToActivitiesIfAvailable(@NonNull Application application) {
        applyToActivitiesIfAvailable(application, new d.c().d());
    }

    @Deprecated
    public static void applyToActivitiesIfAvailable(@NonNull Application application, @StyleRes int i) {
        applyToActivitiesIfAvailable(application, new d.c().f(i).d());
    }

    @Deprecated
    public static void applyToActivitiesIfAvailable(@NonNull Application application, @StyleRes int i, @NonNull f fVar) {
        applyToActivitiesIfAvailable(application, new d.c().f(i).e(fVar).d());
    }

    @Deprecated
    public static void applyToActivitiesIfAvailable(@NonNull Application application, @NonNull f fVar) {
        applyToActivitiesIfAvailable(application, new d.c().e(fVar).d());
    }

    public static void applyToActivitiesIfAvailable(@NonNull Application application, @NonNull com.google.android.material.color.d dVar) {
        application.registerActivityLifecycleCallbacks(new d(dVar));
    }

    public static void applyToActivityIfAvailable(@NonNull Activity activity) {
        applyToActivityIfAvailable(activity, new d.c().d());
    }

    public static void applyToActivityIfAvailable(@NonNull Activity activity, @NonNull com.google.android.material.color.d dVar) {
        b(activity, dVar.e(), dVar.d(), dVar.c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(@NonNull Activity activity, @StyleRes int i, @NonNull f fVar, @NonNull e eVar) {
        if (isDynamicColorAvailable()) {
            if (i == 0) {
                i = c(activity);
            }
            if (i == 0 || !fVar.a(activity, i)) {
                return;
            }
            com.google.android.material.color.e.a(activity, i);
            eVar.a(activity);
        }
    }

    private static int c(@NonNull Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(a);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    @ChecksSdkIntAtLeast(api = 31)
    @SuppressLint({"DefaultLocale"})
    public static boolean isDynamicColorAvailable() {
        if (Build.VERSION.SDK_INT < 31) {
            return false;
        }
        c cVar = f3217d.get(Build.MANUFACTURER.toLowerCase());
        if (cVar == null) {
            cVar = f3218e.get(Build.BRAND.toLowerCase());
        }
        return cVar != null && cVar.isSupported();
    }

    @NonNull
    public static Context wrapContextIfAvailable(@NonNull Context context) {
        return wrapContextIfAvailable(context, 0);
    }

    @NonNull
    public static Context wrapContextIfAvailable(@NonNull Context context, @StyleRes int i) {
        if (!isDynamicColorAvailable()) {
            return context;
        }
        if (i == 0) {
            i = c(context);
        }
        return i == 0 ? context : new ContextThemeWrapper(context, i);
    }
}
