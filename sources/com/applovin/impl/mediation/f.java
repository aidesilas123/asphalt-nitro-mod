package com.applovin.impl.mediation;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapters.MediationAdapterBase;
import com.applovin.sdk.AppLovinSdk;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class f {
    private final Map<String, g> ama = Collections.synchronizedMap(new HashMap(16));
    private final Object amb = new Object();
    private final Map<String, Class<? extends MaxAdapter>> amc = new HashMap();
    private final Set<String> amd = new HashSet();
    private final Object ame = new Object();
    private final Set<a> amf = new HashSet();
    private final com.applovin.impl.sdk.x mLogger;
    private final com.applovin.impl.sdk.n mSdk;

    private static class a {
        private final String amg;
        private final JSONObject amh;
        private final String className;
        private final MaxAdFormat format;

        a(String str, String str2, @Nullable com.applovin.impl.mediation.b.a aVar, com.applovin.impl.sdk.n nVar) {
            this.className = str;
            this.amg = str2;
            JSONObject jSONObject = new JSONObject();
            this.amh = jSONObject;
            JsonUtils.putString(jSONObject, "class", str);
            JsonUtils.putString(jSONObject, "operation", str2);
            if (aVar == null) {
                this.format = null;
            } else {
                this.format = aVar.getFormat();
                JsonUtils.putString(jSONObject, "format", aVar.getFormat().getLabel());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (!this.className.equals(aVar.className) || !this.amg.equals(aVar.amg)) {
                return false;
            }
            MaxAdFormat maxAdFormat = this.format;
            MaxAdFormat maxAdFormat2 = aVar.format;
            return maxAdFormat == null ? maxAdFormat2 == null : maxAdFormat.equals(maxAdFormat2);
        }

        public int hashCode() {
            int iHashCode = ((this.className.hashCode() * 31) + this.amg.hashCode()) * 31;
            MaxAdFormat maxAdFormat = this.format;
            return iHashCode + (maxAdFormat != null ? maxAdFormat.hashCode() : 0);
        }

        public String toString() {
            return "DisabledAdapterInfo{className='" + this.className + "', operationTag='" + this.amg + "', format=" + this.format + '}';
        }

        JSONObject ua() {
            return this.amh;
        }
    }

    public f(com.applovin.impl.sdk.n nVar) {
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.mSdk = nVar;
        this.mLogger = nVar.BN();
    }

    private g a(com.applovin.impl.mediation.b.f fVar, Class<? extends MaxAdapter> cls, boolean z) {
        try {
            return new g(fVar, (MediationAdapterBase) cls.getConstructor(AppLovinSdk.class).newInstance(this.mSdk.getWrappingSdk()), z, this.mSdk);
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("MediationAdapterManager", "Failed to load adapter: " + fVar, th);
            return null;
        }
    }

    private Class<? extends MaxAdapter> bB(String str) {
        try {
            Class<?> cls = Class.forName(str);
            if (MaxAdapter.class.isAssignableFrom(cls)) {
                return cls.asSubclass(MaxAdapter.class);
            }
            com.applovin.impl.sdk.x.H("MediationAdapterManager", str + " error: not an instance of '" + MaxAdapter.class.getName() + "'.");
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    g a(com.applovin.impl.mediation.b.f fVar, boolean z) {
        Class<? extends MaxAdapter> clsBB;
        g gVar;
        if (fVar == null) {
            throw new IllegalArgumentException("No adapter spec specified");
        }
        String strYA = fVar.yA();
        String strVt = fVar.vt();
        if (TextUtils.isEmpty(strYA)) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.mLogger.i("MediationAdapterManager", "No adapter name provided for " + strVt + ", not loading the adapter ");
            }
            return null;
        }
        if (TextUtils.isEmpty(strVt)) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.mLogger.i("MediationAdapterManager", "Unable to find default className for '" + strYA + "'");
            }
            return null;
        }
        if (z && (gVar = this.ama.get(strVt)) != null) {
            return gVar;
        }
        synchronized (this.amb) {
            if (this.amd.contains(strVt)) {
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.mLogger.f("MediationAdapterManager", "Not attempting to load " + strYA + " due to prior errors");
                }
                return null;
            }
            if (this.amc.containsKey(strVt)) {
                clsBB = this.amc.get(strVt);
            } else {
                clsBB = bB(strVt);
                if (clsBB == null) {
                    this.amd.add(strVt);
                    return null;
                }
            }
            g gVarA = a(fVar, clsBB, z);
            if (gVarA == null) {
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.mLogger.i("MediationAdapterManager", "Failed to load " + strYA);
                }
                this.amd.add(strVt);
                return null;
            }
            if (com.applovin.impl.sdk.x.Fn()) {
                this.mLogger.f("MediationAdapterManager", "Loaded " + strYA);
            }
            this.amc.put(strVt, clsBB);
            if (z) {
                this.ama.put(fVar.vt(), gVarA);
            }
            return gVarA;
        }
    }

    public void a(String str, String str2, @Nullable com.applovin.impl.mediation.b.a aVar) {
        synchronized (this.ame) {
            this.mSdk.BN();
            if (com.applovin.impl.sdk.x.Fn()) {
                this.mSdk.BN().i("MediationAdapterManager", "Adding " + str + " to list of disabled adapters.");
            }
            this.amf.add(new a(str, str2, aVar, this.mSdk));
        }
    }

    g c(com.applovin.impl.mediation.b.f fVar) {
        return a(fVar, false);
    }

    public Collection<String> tX() {
        Set setUnmodifiableSet;
        synchronized (this.amb) {
            HashSet hashSet = new HashSet(this.amc.size());
            Iterator<Class<? extends MaxAdapter>> it = this.amc.values().iterator();
            while (it.hasNext()) {
                hashSet.add(it.next().getName());
            }
            setUnmodifiableSet = Collections.unmodifiableSet(hashSet);
        }
        return setUnmodifiableSet;
    }

    public Collection<String> tY() {
        Set setUnmodifiableSet;
        synchronized (this.amb) {
            setUnmodifiableSet = Collections.unmodifiableSet(this.amd);
        }
        return setUnmodifiableSet;
    }

    public Collection<JSONObject> tZ() {
        ArrayList arrayList;
        synchronized (this.ame) {
            arrayList = new ArrayList(this.amf.size());
            Iterator<a> it = this.amf.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().ua());
            }
        }
        return arrayList;
    }
}
