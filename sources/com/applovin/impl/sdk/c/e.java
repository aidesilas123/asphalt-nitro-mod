package com.applovin.impl.sdk.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.e.ab;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.u;
import com.applovin.impl.sdk.x;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class e {
    private static n aRU;
    private static SharedPreferences aRV;
    private final SharedPreferences ayw;

    public e(n nVar) {
        this.ayw = n.getApplicationContext().getSharedPreferences("com.applovin.sdk.preferences." + nVar.getSdkKey(), 0);
        if (nVar.Bq()) {
            return;
        }
        aRU = nVar;
    }

    private static SharedPreferences S(Context context) {
        if (aRV == null) {
            aRV = context.getSharedPreferences("com.applovin.sdk.shared", 0);
        }
        return aRV;
    }

    @Nullable
    public static <T> T a(d<T> dVar, @Nullable T t, SharedPreferences sharedPreferences, boolean z) {
        return (T) a(dVar.getName(), t, dVar.JJ(), sharedPreferences, z);
    }

    @Nullable
    public static <T> T a(String str, @Nullable T t, Class cls, SharedPreferences sharedPreferences) {
        return (T) a(str, t, cls, sharedPreferences, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static <T> T a(String str, @Nullable T t, Class cls, SharedPreferences sharedPreferences, boolean z) {
        Object objValueOf;
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            if (!sharedPreferences.contains(str)) {
                return t;
            }
            if (Boolean.class.equals(cls)) {
                objValueOf = t != 0 ? Boolean.valueOf(sharedPreferences.getBoolean(str, ((Boolean) t).booleanValue())) : Boolean.valueOf(sharedPreferences.getBoolean(str, false));
            } else if (Float.class.equals(cls)) {
                objValueOf = t != 0 ? Float.valueOf(sharedPreferences.getFloat(str, ((Float) t).floatValue())) : Float.valueOf(sharedPreferences.getFloat(str, 0.0f));
            } else if (Integer.class.equals(cls)) {
                if (t != 0) {
                    objValueOf = Integer.valueOf(sharedPreferences.getInt(str, t.getClass().equals(Long.class) ? ((Long) t).intValue() : ((Integer) t).intValue()));
                } else {
                    objValueOf = Integer.valueOf(sharedPreferences.getInt(str, 0));
                }
            } else if (!Long.class.equals(cls)) {
                objValueOf = Double.class.equals(cls) ? t != 0 ? Double.valueOf(Double.longBitsToDouble(sharedPreferences.getLong(str, Double.doubleToRawLongBits(((Double) t).doubleValue())))) : Double.valueOf(Double.longBitsToDouble(sharedPreferences.getLong(str, 0L))) : String.class.equals(cls) ? sharedPreferences.getString(str, (String) t) : Set.class.isAssignableFrom(cls) ? sharedPreferences.getStringSet(str, (Set) t) : t;
            } else if (t != 0) {
                objValueOf = Long.valueOf(sharedPreferences.getLong(str, t.getClass().equals(Integer.class) ? ((Integer) t).longValue() : ((Long) t).longValue()));
            } else {
                objValueOf = Long.valueOf(sharedPreferences.getLong(str, 0L));
            }
            return objValueOf != null ? (T) cls.cast(objValueOf) : t;
        } catch (Throwable th) {
            if (z) {
                try {
                    x.e("SharedPreferencesManager", "Error getting value for key: " + str, th);
                } finally {
                    StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                }
            }
            return t;
        }
    }

    private static void a(final SharedPreferences.Editor editor) {
        try {
            if (u.Lx()) {
                n nVar = aRU;
                if (nVar == null || nVar.BO() == null) {
                    editor.apply();
                } else {
                    q qVarBO = aRU.BO();
                    n nVar2 = aRU;
                    Objects.requireNonNull(editor);
                    qVarBO.a(new ab(nVar2, "commitSharedPreferencesChanges", new Runnable() { // from class: com.applovin.impl.sdk.c.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            editor.commit();
                        }
                    }), q.b.BACKGROUND);
                }
            } else {
                editor.commit();
            }
        } catch (Throwable th) {
            x.e("SharedPreferencesManager", "Unable to apply changes", th);
        }
    }

    public static <T> void a(d<T> dVar, @Nullable T t, Context context) {
        a(dVar.getName(), t, S(context), (SharedPreferences.Editor) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void a(String str, @Nullable T t, SharedPreferences sharedPreferences, SharedPreferences.Editor editor) {
        boolean z = true;
        boolean z2 = editor != null;
        if (!z2) {
            editor = sharedPreferences.edit();
        }
        if (t == 0) {
            editor.remove(str);
        } else if (t instanceof Boolean) {
            editor.putBoolean(str, ((Boolean) t).booleanValue());
        } else if (t instanceof Float) {
            editor.putFloat(str, ((Float) t).floatValue());
        } else if (t instanceof Integer) {
            editor.putInt(str, ((Integer) t).intValue());
        } else if (t instanceof Long) {
            editor.putLong(str, ((Long) t).longValue());
        } else if (t instanceof Double) {
            editor.putLong(str, Double.doubleToRawLongBits(((Double) t).doubleValue()));
        } else if (t instanceof String) {
            editor.putString(str, (String) t);
        } else if (t instanceof Set) {
            editor.putStringSet(str, (Set) t);
        } else {
            x.H("SharedPreferencesManager", "Unable to put default value of invalid type: " + t);
            z = false;
        }
        if (!z || z2) {
            return;
        }
        a(editor);
    }

    @Nullable
    public static <T> T b(d<T> dVar, @Nullable T t, Context context) {
        return (T) a(dVar.getName(), t, dVar.JJ(), S(context));
    }

    public void a(SharedPreferences sharedPreferences) {
        a(sharedPreferences.edit().clear());
    }

    public <T> void a(d<T> dVar, @Nullable T t) {
        a(dVar, t, this.ayw);
    }

    public <T> void a(d<T> dVar, @Nullable T t, SharedPreferences sharedPreferences) {
        a(dVar.getName(), t, sharedPreferences);
    }

    public <T> void a(String str, @Nullable T t, SharedPreferences.Editor editor) {
        a(str, t, (SharedPreferences) null, editor);
    }

    public <T> void a(String str, @Nullable T t, SharedPreferences sharedPreferences) {
        a(str, t, sharedPreferences, (SharedPreferences.Editor) null);
    }

    @Nullable
    public <T> T b(d<T> dVar, @Nullable T t) {
        return (T) b(dVar, t, this.ayw);
    }

    @Nullable
    public <T> T b(d<T> dVar, @Nullable T t, SharedPreferences sharedPreferences) {
        return (T) a(dVar.getName(), t, dVar.JJ(), sharedPreferences);
    }

    public <T> void b(d<T> dVar) {
        a(this.ayw.edit().remove(dVar.getName()));
    }
}
