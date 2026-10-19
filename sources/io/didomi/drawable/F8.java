package io.didomi.drawable;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\b\u0017\u0018\u00002\u00020\u0001B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\tR*\u0010\u000e\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00048\u0016@PX\u0096.¢\u0006\u0012\n\u0004\b\b\u0010\u000b\u001a\u0004\b\b\u0010\f\"\u0004\b\b\u0010\r¨\u0006\u000f"}, d2 = {"Lio/didomi/sdk/F8;", "", "<init>", "()V", "", "name", "version", "", "a", "(Ljava/lang/String;Ljava/lang/String;)V", "<set-?>", "Ljava/lang/String;", "()Ljava/lang/String;", "(Ljava/lang/String;)V", "userAgent", "android_release"}, mv = {1, 8, 0})
public class F8 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    public String userAgent;

    public F8() {
        a("Didomi SDK", "2.9.0");
    }

    public String a() {
        String str = this.userAgent;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("userAgent");
        return null;
    }

    public void a(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.userAgent = str;
    }

    public final void a(String name, String version) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(version, "version");
        if (StringsKt__StringsJVMKt.isBlank(name) || StringsKt__StringsJVMKt.isBlank(version)) {
            Log.e$default("Invalid arguments: name='" + name + "' version='" + version, null, 2, null);
            return;
        }
        a(name + '/' + version + ' ' + System.getProperty("http.agent"));
    }
}
