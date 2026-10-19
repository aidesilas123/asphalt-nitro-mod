package com.mbridge.msdk.dycreator.d;

import com.mbridge.msdk.dycreator.g.c;
import com.mbridge.msdk.dycreator.g.d;
import com.mbridge.msdk.dycreator.g.f;
import com.mbridge.msdk.dycreator.g.h;

/* JADX INFO: compiled from: SubjectFactory.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    private static volatile a a;

    /* JADX INFO: renamed from: com.mbridge.msdk.dycreator.d.a$1, reason: invalid class name */
    /* JADX INFO: compiled from: SubjectFactory.java */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[EnumC0395a.values().length];
            a = iArr;
            try {
                iArr[EnumC0395a.VIEW_OBSERVER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[EnumC0395a.CLICK_OBSERVER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[EnumC0395a.EFFECT_OBSERVER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[EnumC0395a.REPORT_OBSERVER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: renamed from: com.mbridge.msdk.dycreator.d.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SubjectFactory.java */
    public enum EnumC0395a {
        VIEW_OBSERVER,
        CLICK_OBSERVER,
        EFFECT_OBSERVER,
        REPORT_OBSERVER
    }

    private a() {
    }

    public static a a() {
        if (a == null) {
            synchronized (a.class) {
                if (a == null) {
                    a = new a();
                }
            }
        }
        return a;
    }

    public final <T extends com.mbridge.msdk.dycreator.g.a> T a(EnumC0395a enumC0395a) {
        int i = AnonymousClass1.a[enumC0395a.ordinal()];
        if (i == 1) {
            return new d();
        }
        if (i == 2) {
            return new c();
        }
        if (i == 3) {
            return new f();
        }
        if (i != 4) {
            return null;
        }
        return new h();
    }
}
