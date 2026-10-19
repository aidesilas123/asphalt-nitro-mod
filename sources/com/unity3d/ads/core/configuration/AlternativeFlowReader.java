package com.unity3d.ads.core.configuration;

import com.unity3d.services.core.misc.JsonStorage;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;

/* JADX INFO: compiled from: AlternativeFlowReader.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0007B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\t\u0010\u0006\u001a\u00020\u0002H\u0086\u0002¨\u0006\b"}, d2 = {"Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;", "Lcom/unity3d/ads/core/configuration/MetadataReader;", "", "jsonStorage", "Lcom/unity3d/services/core/misc/JsonStorage;", "(Lcom/unity3d/services/core/misc/JsonStorage;)V", "invoke", "Companion", "unity-ads_release"}, mv = {1, 8, 0}, xi = 48)
public final class AlternativeFlowReader extends MetadataReader<Boolean> {
    public static final String ALTERNATIVE_FLOW_ENABLED_KEY = "adsGateway.value";

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AlternativeFlowReader(JsonStorage jsonStorage) {
        super(jsonStorage, ALTERNATIVE_FLOW_ENABLED_KEY);
        Intrinsics.checkNotNullParameter(jsonStorage, "jsonStorage");
    }

    public final boolean invoke() throws JSONException {
        boolean zBooleanValue;
        Object obj = getJsonStorage().get(ALTERNATIVE_FLOW_ENABLED_KEY);
        if (obj == null) {
            return false;
        }
        if (obj instanceof String) {
            zBooleanValue = Boolean.parseBoolean((String) obj);
        } else {
            if (!(obj instanceof Boolean)) {
                return false;
            }
            zBooleanValue = ((Boolean) obj).booleanValue();
        }
        return zBooleanValue;
    }
}
