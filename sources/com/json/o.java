package com.json;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.ext.SdkExtensions;
import kotlin.Metadata;
import kotlin.jvm.internal.n;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/ironsource/o;", "", "<init>", "()V", "a", "mediationsdk_release"}, mv = {1, 8, 0})
public final class o {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: com.ironsource.o$a, reason: from kotlin metadata */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u00028GX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\t"}, d2 = {"Lcom/ironsource/o$a;", "", "", "a", "()I", "getSdkExtensionLevel$annotations", "()V", "sdkExtensionLevel", "<init>", "mediationsdk_release"}, mv = {1, 8, 0})
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(n nVar) {
            this();
        }

        public static /* synthetic */ void b() {
        }

        @SuppressLint({"WrongConstant"})
        public final int a() {
            if (Build.VERSION.SDK_INT < 30) {
                return 0;
            }
            try {
                return SdkExtensions.getExtensionVersion(o2.w);
            } catch (Exception unused) {
                return 0;
            }
        }
    }

    @SuppressLint({"WrongConstant"})
    public static final int a() {
        return INSTANCE.a();
    }
}
