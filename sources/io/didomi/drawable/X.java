package io.didomi.drawable;

import com.json.b4;
import io.didomi.drawable.consent.model.ConsentToken;
import io.didomi.drawable.consent.model.DidomiConsentToken;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Exception occurred when reading Kotlin metadata
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:108)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    Caused by: kotlin.metadata.internal.protobuf.InvalidProtocolBufferException: Message was missing required fields.  (Lite runtime could not determine which fields were missing).
    	at kotlin.metadata.internal.protobuf.UninitializedMessageException.asInvalidProtocolBufferException(UninitializedMessageException.java:81)
    	at kotlin.metadata.internal.protobuf.AbstractParser.checkMessageInitialized(AbstractParser.java:71)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:209)
    	at kotlin.metadata.internal.protobuf.AbstractParser.parseFrom(AbstractParser.java:49)
    	at kotlin.metadata.internal.metadata.ProtoBuf$Class.parseFrom(ProtoBuf.java:10614)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:37)
    	at kotlin.metadata.internal.metadata.jvm.deserialization.JvmProtoBufUtil.readClassDataFrom(JvmProtoBufUtil.kt:32)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	... 4 more
    */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\b\n\u0002\b\u0002\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0019\u0010\u0002\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0007\u001a%\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u000b0\n*\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\bH\u0002¢\u0006\u0004\b\u0002\u0010\f¨\u0006\r"}, d2 = {"Lio/didomi/sdk/consent/model/ConsentToken;", "Lorg/json/JSONObject;", "a", "(Lio/didomi/sdk/consent/model/ConsentToken;)Lorg/json/JSONObject;", "", "userId", "Lio/didomi/sdk/consent/model/DidomiConsentToken;", "(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/lang/String;)Lio/didomi/sdk/consent/model/DidomiConsentToken;", "", "Lio/didomi/sdk/H3;", "", "", "(Ljava/util/Map;)Ljava/util/Set;", "android_release"}, mv = {1, 8, 0})
public final class X {
    public static final DidomiConsentToken a(ConsentToken consentToken, String userId) {
        Intrinsics.checkNotNullParameter(consentToken, "<this>");
        Intrinsics.checkNotNullParameter(userId, "userId");
        C1917v0 c1917v0 = C1917v0.a;
        String str = c1917v0.c().format(consentToken.getCreated());
        String str2 = c1917v0.c().format(consentToken.getUpdated());
        DidomiConsentToken.Ids ids = new DidomiConsentToken.Ids(a(consentToken.getEnabledPurposes()), a(consentToken.getDisabledPurposes()));
        DidomiConsentToken.Ids ids2 = new DidomiConsentToken.Ids(a(consentToken.getEnabledVendors()), a(consentToken.getDisabledVendors()));
        DidomiConsentToken.Ids ids3 = new DidomiConsentToken.Ids(a(consentToken.getEnabledLegitimatePurposes()), a(consentToken.getDisabledLegitimatePurposes()));
        DidomiConsentToken.Ids ids4 = new DidomiConsentToken.Ids(a(consentToken.getEnabledLegitimateVendors()), a(consentToken.getDisabledLegitimateVendors()));
        Intrinsics.checkNotNullExpressionValue(str, "format(created)");
        Intrinsics.checkNotNullExpressionValue(str2, "format(updated)");
        return new DidomiConsentToken(userId, str, str2, null, ids2, ids, ids4, ids3, 8, null);
    }

    private static final Set<Integer> a(Map<String, ? extends H3> map) {
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, ? extends H3>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            N3 namespaces = it.next().getValue().getNamespaces();
            Integer num = namespaces != null ? namespaces.getNum() : null;
            if (num != null) {
                arrayList.add(num);
            }
        }
        return CollectionsKt___CollectionsKt.toSet(arrayList);
    }

    public static final JSONObject a(ConsentToken consentToken) throws JSONException {
        Intrinsics.checkNotNullParameter(consentToken, "<this>");
        JSONObject jSONObject = new JSONObject();
        SimpleDateFormat simpleDateFormatC = C1917v0.a.c();
        jSONObject.put("created", simpleDateFormatC.format(consentToken.getCreated()));
        jSONObject.put("updated", simpleDateFormatC.format(consentToken.getUpdated()));
        Date lastSyncDate = consentToken.getLastSyncDate();
        if (lastSyncDate != null) {
            jSONObject.put("sync", simpleDateFormatC.format(lastSyncDate));
        }
        String lastSyncedUserId = consentToken.getLastSyncedUserId();
        if (lastSyncedUserId != null) {
            jSONObject.put("sync_user_id", lastSyncedUserId);
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put(b4.r, new JSONArray((Collection) consentToken.getEnabledPurposes().keySet()));
        jSONObject2.put("disabled", new JSONArray((Collection) consentToken.getDisabledPurposes().keySet()));
        jSONObject.put(Didomi.VIEW_PURPOSES, jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put(b4.r, new JSONArray((Collection) consentToken.getEnabledVendors().keySet()));
        jSONObject3.put("disabled", new JSONArray((Collection) consentToken.getDisabledVendors().keySet()));
        jSONObject.put(Didomi.VIEW_VENDORS, jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        jSONObject4.put(b4.r, new JSONArray((Collection) consentToken.getEnabledLegitimatePurposes().keySet()));
        jSONObject4.put("disabled", new JSONArray((Collection) consentToken.getDisabledLegitimatePurposes().keySet()));
        jSONObject.put("purposes_li", jSONObject4);
        JSONObject jSONObject5 = new JSONObject();
        jSONObject5.put(b4.r, new JSONArray((Collection) consentToken.getEnabledLegitimateVendors().keySet()));
        jSONObject5.put("disabled", new JSONArray((Collection) consentToken.getDisabledLegitimateVendors().keySet()));
        jSONObject.put("vendors_li", jSONObject5);
        jSONObject.put("tcf_version", consentToken.getTcfVersion());
        return jSONObject;
    }
}
