package com.apm.insight.runtime.a;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apm.insight.CrashType;
import com.apm.insight.entity.Header;
import com.apm.insight.runtime.a.c;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class f {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile f a;
    private Context b;
    private Map<CrashType, c> c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f308d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f309e;

    /* JADX INFO: renamed from: com.apm.insight.runtime.a.f$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[CrashType.values().length];
            a = iArr;
            try {
                iArr[CrashType.JAVA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[CrashType.LAUNCH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[CrashType.NATIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[CrashType.ANR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[CrashType.DART.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[CrashType.CUSTOM_JAVA.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[CrashType.BLOCK.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[CrashType.ENSURE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private f(@NonNull Context context) {
        this.b = context;
        try {
            this.f308d = b.d();
            this.f309e = new d(this.b);
        } catch (Throwable th) {
            com.apm.insight.c.a().a("NPTH_CATCH", th);
        }
    }

    @Nullable
    private c a(CrashType crashType) {
        c jVar = this.c.get(crashType);
        if (jVar != null) {
            return jVar;
        }
        switch (AnonymousClass1.a[crashType.ordinal()]) {
            case 1:
                jVar = new j(this.b, this.f308d, this.f309e);
                break;
            case 2:
                jVar = new k(this.b, this.f308d, this.f309e);
                break;
            case 3:
                jVar = new l(this.b, this.f308d, this.f309e);
                break;
            case 4:
                jVar = new a(this.b, this.f308d, this.f309e);
                break;
            case 5:
                jVar = new h(this.b, this.f308d, this.f309e);
                break;
            case 6:
                jVar = new g(this.b, this.f308d, this.f309e);
                break;
            case 7:
                jVar = new e(this.b, this.f308d, this.f309e);
                break;
            case 8:
                jVar = new i(this.b, this.f308d, this.f309e);
                break;
        }
        if (jVar != null) {
            this.c.put(crashType, jVar);
        }
        return jVar;
    }

    public static f a() {
        if (a == null) {
            Context contextG = com.apm.insight.i.g();
            if (contextG == null) {
                throw new IllegalArgumentException("NpthBus not init");
            }
            a = new f(contextG);
        }
        return a;
    }

    public com.apm.insight.entity.a a(CrashType crashType, com.apm.insight.entity.a aVar) {
        c cVarA;
        return (crashType == null || (cVarA = a(crashType)) == null) ? aVar : cVarA.a(aVar, null, false);
    }

    public com.apm.insight.entity.a a(CrashType crashType, com.apm.insight.entity.a aVar, @Nullable c.a aVar2, boolean z) {
        c cVarA;
        return (crashType == null || (cVarA = a(crashType)) == null) ? aVar : cVarA.a(aVar, aVar2, z);
    }

    public com.apm.insight.entity.a a(List<com.apm.insight.entity.a> list, JSONArray jSONArray) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        com.apm.insight.entity.a aVar = new com.apm.insight.entity.a();
        JSONArray jSONArray2 = new JSONArray();
        Iterator<com.apm.insight.entity.a> it = list.iterator();
        while (it.hasNext()) {
            jSONArray2.put(it.next().h());
        }
        aVar.a("data", (Object) jSONArray2);
        aVar.a("all_data", (Object) jSONArray);
        Header headerA = Header.a(this.b);
        Header.a(headerA);
        headerA.c();
        headerA.d();
        headerA.e();
        Header.b(headerA);
        aVar.a(headerA);
        return aVar;
    }
}
