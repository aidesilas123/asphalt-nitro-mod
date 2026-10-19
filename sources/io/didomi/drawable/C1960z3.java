package io.didomi.drawable;

import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.z3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010%\n\u0002\b\u0003\u0018\u0000 \u000b2\u00020\u0001:\u0001\bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\nJ\u000f\u0010\u000b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u000b\u0010\nR \u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\r¨\u0006\u000f"}, d2 = {"Lio/didomi/sdk/z3;", "", "<init>", "()V", "", "key", "value", "", "a", "(Ljava/lang/String;Ljava/lang/Object;)V", "()Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "", "Ljava/util/Map;", "properties", "android_release"}, mv = {1, 8, 0})
public final class C1960z3 {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final Map<String, Object> properties = new LinkedHashMap();

    public final String a() {
        Object obj = this.properties.get("configParamRegulation");
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public final void a(String key, Object value) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (value != null) {
            this.properties.put(key, value);
        } else {
            this.properties.remove(key);
        }
    }

    public final String b() {
        Object obj = this.properties.get("configParamVersion");
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }
}
