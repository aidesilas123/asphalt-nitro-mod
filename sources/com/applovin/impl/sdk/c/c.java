package com.applovin.impl.sdk.c;

import android.content.Context;
import android.content.SharedPreferences;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.u;
import com.applovin.impl.sdk.x;
import com.applovin.mediation.MaxAdFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class c {
    protected final Context E;
    private final Map<String, Object> aRf = new HashMap();
    private final Object aRg = new Object();
    protected final SharedPreferences ayw;
    protected final n sdk;

    public c(n nVar) {
        this.sdk = nVar;
        Context applicationContext = n.getApplicationContext();
        this.E = applicationContext;
        this.ayw = applicationContext.getSharedPreferences("com.applovin.sdk.1", 0);
        try {
            Class.forName(b.class.getName());
            Class.forName(a.class.getName());
        } catch (Throwable unused) {
        }
        JG();
    }

    private String JI() {
        return "com.applovin.sdk." + u.dD(this.sdk.getSdkKey()) + ".";
    }

    private static Object a(String str, JSONObject jSONObject, Object obj) throws JSONException {
        if (obj instanceof Boolean) {
            return Boolean.valueOf(jSONObject.getBoolean(str));
        }
        if (obj instanceof Float) {
            return Float.valueOf((float) jSONObject.getDouble(str));
        }
        if (obj instanceof Integer) {
            return Integer.valueOf(jSONObject.getInt(str));
        }
        if (obj instanceof Long) {
            return Long.valueOf(jSONObject.getLong(str));
        }
        if (obj instanceof String) {
            return jSONObject.getString(str);
        }
        throw new RuntimeException("SDK Error: unknown value type: " + obj.getClass());
    }

    public void JF() {
        String strJI = JI();
        synchronized (this.aRg) {
            SharedPreferences.Editor editorEdit = this.ayw.edit();
            for (b<?> bVar : b.JE()) {
                Object obj = this.aRf.get(bVar.getName());
                if (obj != null) {
                    this.sdk.a(strJI + bVar.getName(), obj, editorEdit);
                }
            }
            editorEdit.apply();
        }
    }

    public void JG() {
        String strJI = JI();
        synchronized (this.aRg) {
            for (b<?> bVar : b.JE()) {
                try {
                    Object objA = this.sdk.a(strJI + bVar.getName(), null, bVar.JD().getClass(), this.ayw);
                    if (objA != null) {
                        this.aRf.put(bVar.getName(), objA);
                    }
                } catch (Throwable th) {
                    x.e("SettingsManager", "Unable to load \"" + bVar.getName() + "\"", th);
                    this.sdk.Cs().d("SettingsManager", "initSettings", th);
                }
            }
        }
    }

    public void JH() {
        synchronized (this.aRg) {
            this.aRf.clear();
        }
        this.sdk.a(this.ayw);
    }

    public void M(JSONObject jSONObject) {
        synchronized (this.aRg) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (next != null && next.length() > 0) {
                    try {
                        b<Long> bVarA = a(next, (b) null);
                        if (bVarA != null) {
                            this.aRf.put(bVarA.getName(), a(next, jSONObject, bVarA.JD()));
                            if (bVarA == b.aQg) {
                                this.aRf.put(b.aQh.getName(), Long.valueOf(System.currentTimeMillis()));
                            }
                        }
                    } catch (JSONException e2) {
                        x.e("SettingsManager", "Unable to parse JSON settingsValues array", e2);
                        this.sdk.Cs().d("SettingsManager", "loadSettings", e2);
                    } catch (Throwable th) {
                        x.e("SettingsManager", "Unable to convert setting object ", th);
                        this.sdk.Cs().d("SettingsManager", "loadSettings", th);
                    }
                }
            }
        }
    }

    public <T> b<T> a(String str, b<T> bVar) {
        synchronized (this.aRg) {
            Iterator<b<?>> it = b.JE().iterator();
            while (it.hasNext()) {
                b<T> bVar2 = (b) it.next();
                if (bVar2.getName().equals(str)) {
                    return bVar2;
                }
            }
            return bVar;
        }
    }

    public <T> T a(b<T> bVar) {
        if (bVar == null) {
            throw new IllegalArgumentException("No setting type specified");
        }
        synchronized (this.aRg) {
            Object obj = this.aRf.get(bVar.getName());
            if (obj == null) {
                return bVar.JD();
            }
            return bVar.af(obj);
        }
    }

    public <T> void a(b<?> bVar, Object obj) {
        if (bVar == null) {
            throw new IllegalArgumentException("No setting type specified");
        }
        if (obj == null) {
            throw new IllegalArgumentException("No new value specified");
        }
        synchronized (this.aRg) {
            this.aRf.put(bVar.getName(), obj);
        }
    }

    public List<String> b(b<String> bVar) {
        return CollectionUtils.explode((String) a(bVar));
    }

    public List<MaxAdFormat> c(b<String> bVar) {
        ArrayList arrayList = new ArrayList(6);
        Iterator<String> it = b(bVar).iterator();
        while (it.hasNext()) {
            arrayList.add(MaxAdFormat.formatFromString(it.next()));
        }
        return arrayList;
    }

    public boolean isVerboseLoggingEnabled() {
        return this.sdk.getSettings().isVerboseLoggingEnabled() || ((Boolean) a(b.aKq)).booleanValue();
    }
}
