package io.didomi.drawable;

import android.content.SharedPreferences;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import io.didomi.drawable.consent.model.ConsentStatus;
import io.didomi.drawable.consent.model.ConsentToken;
import io.didomi.drawable.events.ConsentChangedEvent;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.models.InternalVendor;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.v;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Exception occurred when reading Kotlin metadata
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:108)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
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
    	... 5 more
    */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000²\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u001e\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 Q2\u00020\u0001:\u0001\u0012B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ%\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J1\u0010\u0012\u001a\u00020\u001b2\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u0012\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u0014H\u0002¢\u0006\u0004\b!\u0010 J\u000f\u0010\"\u001a\u00020\u001eH\u0002¢\u0006\u0004\b\"\u0010#J\u0017\u0010\u0012\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u0012\u0010%J\u0017\u0010(\u001a\u00020\u001b2\u0006\u0010'\u001a\u00020&H\u0002¢\u0006\u0004\b(\u0010)J-\u0010\u001f\u001a\u00020\u001b2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\u000e\u0010,\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010+0\u0010H\u0002¢\u0006\u0004\b\u001f\u0010-J/\u0010!\u001a\u00020\u001e2\u000e\u0010.\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010\u00102\u000e\u0010/\u001a\n\u0012\u0004\u0012\u00020&\u0018\u00010\u0010H\u0002¢\u0006\u0004\b!\u00100J\u0017\u0010\u0012\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0012\u00101J\u001b\u0010\u0012\u001a\u00020\u001e2\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u001e02¢\u0006\u0004\b\u0012\u00104J\r\u00105\u001a\u00020\u001e¢\u0006\u0004\b5\u0010#J1\u0010\u0012\u001a\u00020\u00142\u0006\u00107\u001a\u0002062\b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018H\u0000¢\u0006\u0004\b\u0012\u00108J\r\u00109\u001a\u00020\u001e¢\u0006\u0004\b9\u0010#J!\u0010\u0012\u001a\u00020\u001e2\b\u0010:\u001a\u0004\u0018\u00010\u00162\b\u0010;\u001a\u0004\u0018\u00010&¢\u0006\u0004\b\u0012\u0010<J\u0015\u0010>\u001a\u00020\u001b2\u0006\u0010=\u001a\u00020&¢\u0006\u0004\b>\u0010)J\u0015\u0010\u0012\u001a\u00020@2\u0006\u0010?\u001a\u00020&¢\u0006\u0004\b\u0012\u0010AJ\u0015\u0010!\u001a\u00020@2\u0006\u0010?\u001a\u00020&¢\u0006\u0004\b!\u0010AJ\u0015\u0010\u001f\u001a\u00020@2\u0006\u0010=\u001a\u00020&¢\u0006\u0004\b\u001f\u0010AJ\u0015\u0010B\u001a\u00020@2\u0006\u0010=\u001a\u00020&¢\u0006\u0004\bB\u0010AJ\u008f\u0001\u0010\u0012\u001a\u00020\u001b2\u000e\u0010C\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u000e\u0010D\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u000e\u0010E\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u000e\u0010F\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u000e\u0010G\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u00102\u000e\u0010H\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u00102\u000e\u0010I\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u00102\u000e\u0010J\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u0010H\u0000¢\u0006\u0004\b\u0012\u0010KJ#\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\u000e\u0010M\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010L¢\u0006\u0004\b\u0012\u0010NJ)\u0010\u0012\u001a\u00020\u001b2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\f\u0010,\u001a\b\u0012\u0004\u0012\u00020+0\u0010¢\u0006\u0004\b\u0012\u0010-J\r\u0010O\u001a\u00020\u001b¢\u0006\u0004\bO\u0010PJ\r\u0010Q\u001a\u00020\u001b¢\u0006\u0004\bQ\u0010PJ·\u0001\u0010\u0012\u001a\u00020\u001b2\u000e\u0010R\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u000e\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u000e\u0010T\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u000e\u0010U\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00102\u000e\u0010V\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u00102\u000e\u0010W\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u00102\u000e\u0010X\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u00102\u000e\u0010Y\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010\u00102\u0006\u0010Z\u001a\u00020\u001b2\b\u0010[\u001a\u0004\u0018\u00010&2\u0006\u0010]\u001a\u00020\\2\u0006\u0010_\u001a\u00020^2\u0006\u0010a\u001a\u00020`¢\u0006\u0004\b\u0012\u0010bJ·\u0001\u0010\u0012\u001a\u00020\u001e2\u000e\b\u0002\u0010c\u001a\b\u0012\u0004\u0012\u00020&0\u00102\u000e\b\u0002\u0010d\u001a\b\u0012\u0004\u0012\u00020&0\u00102\u000e\b\u0002\u0010e\u001a\b\u0012\u0004\u0012\u00020&0\u00102\u000e\b\u0002\u0010f\u001a\b\u0012\u0004\u0012\u00020&0\u00102\u000e\b\u0002\u0010g\u001a\b\u0012\u0004\u0012\u00020&0\u00102\u000e\b\u0002\u0010h\u001a\b\u0012\u0004\u0012\u00020&0\u00102\u000e\b\u0002\u0010i\u001a\b\u0012\u0004\u0012\u00020&0\u00102\u000e\b\u0002\u0010j\u001a\b\u0012\u0004\u0012\u00020&0\u00102\u0006\u0010Z\u001a\u00020\u001b2\b\u0010[\u001a\u0004\u0018\u00010&2\u0006\u0010_\u001a\u00020^2\u0006\u0010]\u001a\u00020\\2\u0006\u0010a\u001a\u00020`¢\u0006\u0004\b\u0012\u0010kJ-\u0010\u0012\u001a\u00020\u001b2\u0006\u0010m\u001a\u00020l2\u0006\u0010]\u001a\u00020\\2\u0006\u0010_\u001a\u00020^2\u0006\u0010a\u001a\u00020`¢\u0006\u0004\b\u0012\u0010nJO\u0010\u0012\u001a\u00020\u001b2\u0006\u0010o\u001a\u00020\u001b2\u0006\u0010p\u001a\u00020\u001b2\u0006\u0010q\u001a\u00020\u001b2\u0006\u0010r\u001a\u00020\u001b2\b\u0010[\u001a\u0004\u0018\u00010&2\u0006\u0010]\u001a\u00020\\2\u0006\u0010_\u001a\u00020^2\u0006\u0010a\u001a\u00020`¢\u0006\u0004\b\u0012\u0010sJ\r\u0010t\u001a\u00020\u001e¢\u0006\u0004\bt\u0010#J\r\u0010u\u001a\u00020\u001b¢\u0006\u0004\bu\u0010PJ\r\u0010v\u001a\u00020\u001b¢\u0006\u0004\bv\u0010PJ\r\u0010w\u001a\u00020\u001b¢\u0006\u0004\bw\u0010PJ\r\u0010x\u001a\u00020\u001b¢\u0006\u0004\bx\u0010PR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010yR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010zR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010{R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010|R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010}R\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010~R\u001c\u0010\u0081\u0001\u001a\b\u0012\u0004\u0012\u00020\u00110\u00108\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u007f\u0010\u0080\u0001R$\u0010\u0084\u0001\u001a\b\u0012\u0004\u0012\u00020&0\u00108FX\u0086\u0084\u0002¢\u0006\u000e\n\u0005\bO\u0010\u0082\u0001\u001a\u0005\b>\u0010\u0083\u0001R\u001f\u0010\u0087\u0001\u001a\u00030\u0085\u00018@X\u0080\u0084\u0002¢\u0006\u000e\n\u0005\bu\u0010\u0082\u0001\u001a\u0005\b(\u0010\u0086\u0001R\u001e\u0010\u0089\u0001\u001a\u00020&8BX\u0082\u0084\u0002¢\u0006\u000e\n\u0005\bv\u0010\u0082\u0001\u001a\u0005\b!\u0010\u0088\u0001R'\u0010\u001d\u001a\u00020\u00142\u0007\u0010\u008a\u0001\u001a\u00020\u00148\u0006@BX\u0086.¢\u0006\u000e\n\u0005\bw\u0010\u008b\u0001\u001a\u0005\b\u001f\u0010\u008c\u0001R\u0015\u0010\u008d\u0001\u001a\u0004\u0018\u00010&8F¢\u0006\u0007\u001a\u0005\b\u0012\u0010\u0088\u0001R\u0015\u0010\u008e\u0001\u001a\u0004\u0018\u00010&8F¢\u0006\u0007\u001a\u0005\bB\u0010\u0088\u0001R\u0014\u00107\u001a\u0004\u0018\u0001068F¢\u0006\u0007\u001a\u0005\b\u007f\u0010\u008f\u0001¨\u0006\u0090\u0001"}, d2 = {"Lio/didomi/sdk/V;", "", "Landroid/content/SharedPreferences;", "sharedPreferences", "Lio/didomi/sdk/V8;", "vendorRepository", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/j0;", "dcsRepository", "Lio/didomi/sdk/h3;", "iabStorageRepository", "Lio/didomi/sdk/v3;", "languagesHelper", "<init>", "(Landroid/content/SharedPreferences;Lio/didomi/sdk/V8;Lio/didomi/sdk/H;Lio/didomi/sdk/j0;Lio/didomi/sdk/h3;Lio/didomi/sdk/v3;)V", "", "Lio/didomi/sdk/models/InternalPurpose;", "a", "(Lio/didomi/sdk/H;Lio/didomi/sdk/V8;)Ljava/util/Set;", "Lio/didomi/sdk/consent/model/ConsentToken;", "token", "Ljava/util/Date;", "ignoreConsentBefore", "", "consentDurationInSeconds", "deniedConsentDurationInSeconds", "", "(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Date;JJ)Z", "consentToken", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lio/didomi/sdk/consent/model/ConsentToken;)V", "c", "o", "()V", "existingToken", "(Z)V", "", "purposeID", "e", "(Ljava/lang/String;)Z", Didomi.VIEW_PURPOSES, "Lio/didomi/sdk/models/InternalVendor;", Didomi.VIEW_VENDORS, "(Ljava/util/Set;Ljava/util/Set;)Z", "enabledPurposeIds", "disabledPurposeIds", "(Ljava/util/Set;Ljava/util/Set;)V", "(Lio/didomi/sdk/consent/model/ConsentToken;)Lio/didomi/sdk/consent/model/ConsentToken;", "Lkotlin/Function0;", "callback", "(Lkotlin/jvm/functions/Function0;)V", InneractiveMediationDefs.GENDER_MALE, "", "tcfVersion", "(ILjava/util/Date;JJ)Lio/didomi/sdk/consent/model/ConsentToken;", b4.p, "lastSyncDate", "lastSyncedUserId", "(Ljava/util/Date;Ljava/lang/String;)V", "vendorId", InneractiveMediationDefs.GENDER_FEMALE, "purposeId", "Lio/didomi/sdk/consent/model/ConsentStatus;", "(Ljava/lang/String;)Lio/didomi/sdk/consent/model/ConsentStatus;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "enabledPurposes", "disabledPurposes", "enabledLegitimatePurposes", "disabledLegitimatePurposes", "enabledVendors", "disabledVendors", "enabledLegIntVendors", "disabledLegIntVendors", "(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Z", "", "purposeSet", "(Ljava/util/Collection;)Ljava/util/Set;", "h", "()Z", "l", "enabledConsentPurposes", "disabledConsentPurposes", "enabledLIPurposes", "disabledLIPurposes", "enabledConsentVendors", "disabledConsentVendors", "enabledLIVendors", "disabledLIVendors", "sendAPIEvent", "eventAction", "Lio/didomi/sdk/apiEvents/b;", "apiEventsRepository", "Lio/didomi/sdk/M2;", "eventsRepository", "Lio/didomi/sdk/P8;", "userStatusRepository", "(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZLjava/lang/String;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/P8;)Z", "previouslyEnabledPurposeIds", "previouslyDisabledPurposeIds", "previouslyEnabledLegitimatePurposeIds", "previouslyDisabledLegitimatePurposeIds", "previouslyEnabledVendorIds", "previouslyDisabledVendorIds", "previouslyEnabledLegIntVendorIds", "previouslyDisabledLegIntVendorIds", "(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZLjava/lang/String;Lio/didomi/sdk/M2;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/P8;)V", "Lio/didomi/sdk/O8;", "parameters", "(Lio/didomi/sdk/O8;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/P8;)Z", "purposesConsentStatus", "purposesLIStatus", "vendorsConsentStatus", "vendorsLIStatus", "(ZZZZLjava/lang/String;Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/M2;Lio/didomi/sdk/P8;)Z", TtmlNode.TAG_P, "i", "j", CampaignEx.JSON_KEY_AD_K, CampaignEx.JSON_KEY_AD_Q, "Landroid/content/SharedPreferences;", "Lio/didomi/sdk/V8;", "Lio/didomi/sdk/H;", "Lio/didomi/sdk/j0;", "Lio/didomi/sdk/h3;", "Lio/didomi/sdk/v3;", "g", "Ljava/util/Set;", "requiredAndEssentialPurposes", "Lkotlin/Lazy;", "()Ljava/util/Set;", "requiredEssentialPurposesIds", "Lio/didomi/sdk/Q2;", "()Lio/didomi/sdk/Q2;", "googleRepository", "()Ljava/lang/String;", "consentTokenKey", "<set-?>", "Lio/didomi/sdk/consent/model/ConsentToken;", "()Lio/didomi/sdk/consent/model/ConsentToken;", "consentString", "googleAdditionalConsent", "()Ljava/lang/Integer;", "android_release"}, mv = {1, 8, 0})
public final class V {
    public static final a l = new a(null);
    private final SharedPreferences a;
    private final V8 b;
    private final H c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final C1797j0 f8401d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final InterfaceC1780h3 f8402e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final C1920v3 f8403f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Set<InternalPurpose> f8404g;
    private final Lazy h;
    private final Lazy i;
    private final Lazy j;
    private ConsentToken k;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lio/didomi/sdk/V$a;", "", "<init>", "()V", "", "IAB_TIMESTAMP_GRANULARITY", "Ljava/lang/String;", "android_release"}, mv = {1, 8, 0})
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J#\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"io/didomi/sdk/V$b", "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;", "Landroid/content/SharedPreferences;", "sharedPreferences", "", "key", "", "onSharedPreferenceChanged", "(Landroid/content/SharedPreferences;Ljava/lang/String;)V", "android_release"}, mv = {1, 8, 0})
    public static final class b implements SharedPreferences.OnSharedPreferenceChangeListener {
        final /* synthetic */ Function0<v> b;

        b(Function0<v> function0) {
            this.b = function0;
        }

        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String key) {
            if (Intrinsics.areEqual(key, V.this.c())) {
                V.this.a.unregisterOnSharedPreferenceChangeListener(this);
                this.b.invoke();
            }
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/String;"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function0<String> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke() {
            return V.this.c.e().getTokenKey();
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/Q2;", "a", "()Lio/didomi/sdk/Q2;"}, mv = {1, 8, 0})
    static final class d extends Lambda implements Function0<Q2> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Q2 invoke() {
            return new Q2(V.this.c, V.this.b);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"", "", "a", "()Ljava/util/Set;"}, mv = {1, 8, 0})
    static final class e extends Lambda implements Function0<Set<? extends String>> {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Set<String> invoke() {
            Set set = V.this.f8404g;
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(set, 10));
            Iterator it = set.iterator();
            while (it.hasNext()) {
                arrayList.add(((InternalPurpose) it.next()).getId());
            }
            return CollectionsKt___CollectionsKt.toSet(arrayList);
        }
    }

    public V(SharedPreferences sharedPreferences, V8 vendorRepository, H configurationRepository, C1797j0 dcsRepository, InterfaceC1780h3 iabStorageRepository, C1920v3 languagesHelper) {
        Intrinsics.checkNotNullParameter(sharedPreferences, "sharedPreferences");
        Intrinsics.checkNotNullParameter(vendorRepository, "vendorRepository");
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(dcsRepository, "dcsRepository");
        Intrinsics.checkNotNullParameter(iabStorageRepository, "iabStorageRepository");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        this.a = sharedPreferences;
        this.b = vendorRepository;
        this.c = configurationRepository;
        this.f8401d = dcsRepository;
        this.f8402e = iabStorageRepository;
        this.f8403f = languagesHelper;
        this.f8404g = a(configurationRepository, vendorRepository);
        this.h = LazyKt__LazyJVMKt.lazy(new e());
        this.i = LazyKt__LazyJVMKt.lazy(new d());
        this.j = LazyKt__LazyJVMKt.lazy(new c());
        try {
            C1806k c1806kB = configurationRepository.b();
            this.k = a(iabStorageRepository.getVersion(), C1816l.a(c1806kB.l()), C1816l.a(c1806kB.a()), C1816l.c(c1806kB.a()));
            a(true);
        } catch (Exception unused) {
            m();
            a(false);
        }
    }

    private final ConsentToken a(ConsentToken consentToken) {
        Set<InternalPurpose> setN = this.b.n();
        Set<InternalVendor> setT = this.b.t();
        Set setSubtract = CollectionsKt___CollectionsKt.subtract(setN, CollectionsKt___CollectionsKt.toSet(consentToken.getDisabledLegitimatePurposes().values()));
        Set setSubtract2 = CollectionsKt___CollectionsKt.subtract(setT, CollectionsKt___CollectionsKt.toSet(consentToken.getDisabledLegitimateVendors().values()));
        ConsentToken consentTokenA = Y.a(consentToken);
        Y.a(consentTokenA, CollectionsKt___CollectionsKt.toSet(consentToken.getEnabledPurposes().values()), CollectionsKt___CollectionsKt.toSet(consentToken.getDisabledPurposes().values()), setSubtract, CollectionsKt___CollectionsKt.toSet(consentToken.getDisabledLegitimatePurposes().values()), CollectionsKt___CollectionsKt.toSet(consentToken.getEnabledVendors().values()), CollectionsKt___CollectionsKt.toSet(consentToken.getDisabledVendors().values()), setSubtract2, CollectionsKt___CollectionsKt.toSet(consentToken.getDisabledLegitimateVendors().values()));
        return consentTokenA;
    }

    private final Set<InternalPurpose> a(H h, V8 v8) {
        Set set = CollectionsKt___CollectionsKt.toSet(C1816l.d(h.b().a()));
        if (set.isEmpty()) {
            return SetsKt__SetsKt.emptySet();
        }
        List<CustomPurpose> listC = h.b().a().c();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listC, 10));
        Iterator<T> it = listC.iterator();
        while (it.hasNext()) {
            arrayList.add(((CustomPurpose) it.next()).getId());
        }
        Set<InternalPurpose> setK = v8.k();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : setK) {
            InternalPurpose internalPurpose = (InternalPurpose) obj;
            if (set.contains(internalPurpose.getId()) && arrayList.contains(internalPurpose.getId())) {
                arrayList2.add(obj);
            }
        }
        Set<InternalPurpose> set2 = CollectionsKt___CollectionsKt.toSet(arrayList2);
        v8.c(set2);
        return set2;
    }

    private final void a(boolean z) {
        if (!I.k(this.c) || this.a.getBoolean("Didomi_IAB_Timestamp_granularity_days", false)) {
            return;
        }
        if (z) {
            c(b());
        }
        this.a.edit().putBoolean("Didomi_IAB_Timestamp_granularity_days", true).apply();
    }

    private final boolean a(ConsentToken consentToken, Date date, long j, long j2) {
        if (date != null && consentToken.getUpdated().before(date)) {
            return true;
        }
        long jB = (C1917v0.a.b() - consentToken.getUpdated().getTime()) / ((long) 1000);
        if (jB > j) {
            return true;
        }
        return 1 <= j2 && j2 < jB && Y.l(consentToken);
    }

    private final void b(ConsentToken consentToken) {
        try {
            String string = X.a(consentToken).toString();
            Intrinsics.checkNotNullExpressionValue(string, "consentToken.toJSON().toString()");
            this.a.edit().putString(c(), string).apply();
        } catch (Exception e2) {
            Log.e("Unable to save the Didomi token to shared preferences", e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean b(java.util.Set<io.didomi.drawable.models.InternalPurpose> r3, java.util.Set<io.didomi.drawable.models.InternalVendor> r4) {
        /*
            r2 = this;
            boolean r0 = r3 instanceof java.util.Collection
            if (r0 == 0) goto Lb
            boolean r0 = r3.isEmpty()
            if (r0 == 0) goto Lb
            goto L28
        Lb:
            java.util.Iterator r3 = r3.iterator()
        Lf:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L28
            java.lang.Object r0 = r3.next()
            io.didomi.sdk.models.InternalPurpose r0 = (io.didomi.drawable.models.InternalPurpose) r0
            java.lang.String r0 = r0.getId()
            io.didomi.sdk.consent.model.ConsentStatus r0 = r2.c(r0)
            io.didomi.sdk.consent.model.ConsentStatus r1 = io.didomi.drawable.consent.model.ConsentStatus.UNKNOWN
            if (r0 != r1) goto Lf
            goto L4f
        L28:
            boolean r3 = r4 instanceof java.util.Collection
            if (r3 == 0) goto L33
            boolean r3 = r4.isEmpty()
            if (r3 == 0) goto L33
            goto L51
        L33:
            java.util.Iterator r3 = r4.iterator()
        L37:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L51
            java.lang.Object r4 = r3.next()
            io.didomi.sdk.models.InternalVendor r4 = (io.didomi.drawable.models.InternalVendor) r4
            io.didomi.sdk.consent.model.ConsentToken r0 = r2.b()
            io.didomi.sdk.consent.model.ConsentStatus r4 = io.didomi.drawable.Y.b(r0, r4)
            io.didomi.sdk.consent.model.ConsentStatus r0 = io.didomi.drawable.consent.model.ConsentStatus.UNKNOWN
            if (r4 != r0) goto L37
        L4f:
            r3 = 0
            goto L52
        L51:
            r3 = 1
        L52:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: io.didomi.drawable.V.b(java.util.Set, java.util.Set):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String c() {
        return (String) this.j.getValue();
    }

    private final void c(ConsentToken consentToken) {
        try {
            this.f8402e.a(this.a, consentToken, this.c.b(), this.c.d(), this.b.d(), this.f8403f.e());
        } catch (Exception e2) {
            Log.e("Unable to store TCF consent information to device", e2);
        }
    }

    private final void c(Set<String> set, Set<String> set2) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        if (set != null) {
            for (String str : set) {
                if (e(str)) {
                    hashSet.add(str);
                }
            }
        }
        if (set2 != null) {
            for (String str2 : set2) {
                if (e(str2)) {
                    hashSet2.add(str2);
                }
            }
        }
        hashSet3.addAll(hashSet);
        hashSet3.addAll(hashSet2);
        Iterator it = hashSet3.iterator();
        while (it.hasNext()) {
            Log.e$default("Cannot set consent status for essential purpose " + ((String) it.next()), null, 2, null);
        }
    }

    private final boolean e(String str) {
        return f().contains(str);
    }

    private final void o() {
        try {
            e().a(this.a, this);
        } catch (Exception e2) {
            Log.e("Unable to store Google additional consent information to device", e2);
        }
    }

    public final ConsentStatus a(String purposeId) {
        Intrinsics.checkNotNullParameter(purposeId, "purposeId");
        return e(purposeId) ? ConsentStatus.ENABLE : Y.b(b(), purposeId);
    }

    public final ConsentToken a(int i, Date date, long j, long j2) throws Exception {
        try {
            ConsentToken consentTokenA = W.a.a(this.a.getString(c(), null), this.b);
            if (consentTokenA.getTcfVersion() != i) {
                throw new Exception("Invalid TCF version from token");
            }
            if (a(consentTokenA, date, j, j2)) {
                throw new Exception("Consent from shared preferences is older than allowed by configuration");
            }
            return consentTokenA;
        } catch (Exception unused) {
            throw new Exception("Could not load the Didomi token from shared preferences");
        }
    }

    public final String a() {
        return this.f8402e.a(this.a);
    }

    public final Set<InternalPurpose> a(Collection<InternalPurpose> collection) {
        if (collection != null) {
            ArrayList arrayList = new ArrayList();
            for (Object obj : collection) {
                if (!e(((InternalPurpose) obj).getId())) {
                    arrayList.add(obj);
                }
            }
            Set<InternalPurpose> set = CollectionsKt___CollectionsKt.toSet(arrayList);
            if (set != null) {
                return set;
            }
        }
        return SetsKt__SetsKt.emptySet();
    }

    public final void a(Date date, String str) {
        b().setLastSyncDate(date);
        b().setLastSyncedUserId(str);
    }

    public final void a(Set<String> previouslyEnabledPurposeIds, Set<String> previouslyDisabledPurposeIds, Set<String> previouslyEnabledLegitimatePurposeIds, Set<String> previouslyDisabledLegitimatePurposeIds, Set<String> previouslyEnabledVendorIds, Set<String> previouslyDisabledVendorIds, Set<String> previouslyEnabledLegIntVendorIds, Set<String> previouslyDisabledLegIntVendorIds, boolean z, String str, M2 eventsRepository, io.didomi.drawable.apiEvents.b apiEventsRepository, P8 userStatusRepository) {
        Intrinsics.checkNotNullParameter(previouslyEnabledPurposeIds, "previouslyEnabledPurposeIds");
        Intrinsics.checkNotNullParameter(previouslyDisabledPurposeIds, "previouslyDisabledPurposeIds");
        Intrinsics.checkNotNullParameter(previouslyEnabledLegitimatePurposeIds, "previouslyEnabledLegitimatePurposeIds");
        Intrinsics.checkNotNullParameter(previouslyDisabledLegitimatePurposeIds, "previouslyDisabledLegitimatePurposeIds");
        Intrinsics.checkNotNullParameter(previouslyEnabledVendorIds, "previouslyEnabledVendorIds");
        Intrinsics.checkNotNullParameter(previouslyDisabledVendorIds, "previouslyDisabledVendorIds");
        Intrinsics.checkNotNullParameter(previouslyEnabledLegIntVendorIds, "previouslyEnabledLegIntVendorIds");
        Intrinsics.checkNotNullParameter(previouslyDisabledLegIntVendorIds, "previouslyDisabledLegIntVendorIds");
        Intrinsics.checkNotNullParameter(eventsRepository, "eventsRepository");
        Intrinsics.checkNotNullParameter(apiEventsRepository, "apiEventsRepository");
        Intrinsics.checkNotNullParameter(userStatusRepository, "userStatusRepository");
        eventsRepository.c(new ConsentChangedEvent());
        eventsRepository.a(userStatusRepository.b());
        Set<InternalPurpose> setA = a(b().getEnabledPurposes().values());
        Set<InternalPurpose> setA2 = a(b().getDisabledPurposes().values());
        Set<InternalPurpose> setA3 = a(b().getEnabledLegitimatePurposes().values());
        Set<InternalPurpose> setA4 = a(b().getDisabledLegitimatePurposes().values());
        if (!z || str == null) {
            return;
        }
        apiEventsRepository.a(C1860p3.a((Collection<InternalPurpose>) setA), C1860p3.a((Collection<InternalPurpose>) setA2), C1860p3.a((Collection<InternalPurpose>) setA3), C1860p3.a((Collection<InternalPurpose>) setA4), Y.i(b()), Y.e(b()), Y.g(b()), Y.c(b()), previouslyEnabledPurposeIds, previouslyDisabledPurposeIds, previouslyEnabledLegitimatePurposeIds, previouslyDisabledLegitimatePurposeIds, previouslyEnabledVendorIds, previouslyDisabledVendorIds, previouslyEnabledLegIntVendorIds, previouslyDisabledLegIntVendorIds, str);
    }

    public final void a(Function0<v> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.a.registerOnSharedPreferenceChangeListener(new b(callback));
    }

    public final boolean a(UserStatusParameters parameters, io.didomi.drawable.apiEvents.b apiEventsRepository, M2 eventsRepository, P8 userStatusRepository) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(apiEventsRepository, "apiEventsRepository");
        Intrinsics.checkNotNullParameter(eventsRepository, "eventsRepository");
        Intrinsics.checkNotNullParameter(userStatusRepository, "userStatusRepository");
        c(parameters.e(), parameters.a());
        V8 v8 = this.b;
        Set<String> setE = parameters.e();
        if (setE == null) {
            setE = SetsKt__SetsKt.emptySet();
        }
        Set<InternalPurpose> setA = v8.a(setE);
        V8 v82 = this.b;
        Set<String> setA2 = parameters.a();
        if (setA2 == null) {
            setA2 = SetsKt__SetsKt.emptySet();
        }
        Set<InternalPurpose> setA3 = v82.a(setA2);
        V8 v83 = this.b;
        Set<String> setG = parameters.g();
        if (setG == null) {
            setG = SetsKt__SetsKt.emptySet();
        }
        Set<InternalPurpose> setA4 = v83.a(setG);
        V8 v84 = this.b;
        Set<String> setC = parameters.c();
        if (setC == null) {
            setC = SetsKt__SetsKt.emptySet();
        }
        Set<InternalPurpose> setA5 = v84.a(setC);
        V8 v85 = this.b;
        Set<String> setF = parameters.f();
        if (setF == null) {
            setF = SetsKt__SetsKt.emptySet();
        }
        Set<InternalVendor> setB = v85.b(setF);
        V8 v86 = this.b;
        Set<String> setB2 = parameters.b();
        if (setB2 == null) {
            setB2 = SetsKt__SetsKt.emptySet();
        }
        Set<InternalVendor> setB3 = v86.b(setB2);
        V8 v87 = this.b;
        Set<String> setH = parameters.h();
        if (setH == null) {
            setH = SetsKt__SetsKt.emptySet();
        }
        Set<InternalVendor> setB4 = v87.b(setH);
        V8 v88 = this.b;
        Set<String> setD = parameters.d();
        if (setD == null) {
            setD = SetsKt__SetsKt.emptySet();
        }
        return a(setA, setA3, setA4, setA5, setB, setB3, setB4, v88.b(setD), parameters.getSendAPIEvent(), parameters.getEventAction(), apiEventsRepository, eventsRepository, userStatusRepository);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0047  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(java.util.Set<io.didomi.drawable.models.InternalPurpose> r3, java.util.Set<io.didomi.drawable.models.InternalVendor> r4) {
        /*
            r2 = this;
            java.lang.String r0 = "purposes"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "vendors"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            boolean r0 = r3 instanceof java.util.Collection
            if (r0 == 0) goto L15
            boolean r0 = r3.isEmpty()
            if (r0 == 0) goto L15
            goto L32
        L15:
            java.util.Iterator r3 = r3.iterator()
        L19:
            boolean r0 = r3.hasNext()
            if (r0 == 0) goto L32
            java.lang.Object r0 = r3.next()
            io.didomi.sdk.models.InternalPurpose r0 = (io.didomi.drawable.models.InternalPurpose) r0
            java.lang.String r0 = r0.getId()
            io.didomi.sdk.consent.model.ConsentStatus r0 = r2.a(r0)
            io.didomi.sdk.consent.model.ConsentStatus r1 = io.didomi.drawable.consent.model.ConsentStatus.UNKNOWN
            if (r0 != r1) goto L19
            goto L59
        L32:
            boolean r3 = r4 instanceof java.util.Collection
            if (r3 == 0) goto L3d
            boolean r3 = r4.isEmpty()
            if (r3 == 0) goto L3d
            goto L5b
        L3d:
            java.util.Iterator r3 = r4.iterator()
        L41:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L5b
            java.lang.Object r4 = r3.next()
            io.didomi.sdk.models.InternalVendor r4 = (io.didomi.drawable.models.InternalVendor) r4
            io.didomi.sdk.consent.model.ConsentToken r0 = r2.b()
            io.didomi.sdk.consent.model.ConsentStatus r4 = io.didomi.drawable.Y.a(r0, r4)
            io.didomi.sdk.consent.model.ConsentStatus r0 = io.didomi.drawable.consent.model.ConsentStatus.UNKNOWN
            if (r4 != r0) goto L41
        L59:
            r3 = 0
            goto L5c
        L5b:
            r3 = 1
        L5c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: io.didomi.drawable.V.a(java.util.Set, java.util.Set):boolean");
    }

    public final boolean a(Set<InternalPurpose> set, Set<InternalPurpose> set2, Set<InternalPurpose> set3, Set<InternalPurpose> set4, Set<InternalVendor> set5, Set<InternalVendor> set6, Set<InternalVendor> set7, Set<InternalVendor> set8) {
        boolean zA = Y.a(b(), a(set), a(set2), a(set3), a(set4), set5, set6, set7, set8);
        if (zA) {
            b().setUpdated(C1917v0.a.a());
            n();
        }
        return zA;
    }

    public final synchronized boolean a(Set<InternalPurpose> set, Set<InternalPurpose> set2, Set<InternalPurpose> set3, Set<InternalPurpose> set4, Set<InternalVendor> set5, Set<InternalVendor> set6, Set<InternalVendor> set7, Set<InternalVendor> set8, boolean z, String str, io.didomi.drawable.apiEvents.b apiEventsRepository, M2 eventsRepository, P8 userStatusRepository) {
        boolean zA;
        Intrinsics.checkNotNullParameter(apiEventsRepository, "apiEventsRepository");
        Intrinsics.checkNotNullParameter(eventsRepository, "eventsRepository");
        Intrinsics.checkNotNullParameter(userStatusRepository, "userStatusRepository");
        Set<String> setH = Y.h(b());
        Set<String> setD = Y.d(b());
        Set<String> setF = Y.f(b());
        Set<String> setB = Y.b(b());
        Set<String> setI = Y.i(b());
        Set<String> setE = Y.e(b());
        Set<String> setG = Y.g(b());
        Set<String> setC = Y.c(b());
        zA = a(set, set2, set3, set4, set5, set6, set7, set8);
        if (zA) {
            a(setH, setD, setF, setB, setI, setE, setG, setC, z, str, eventsRepository, apiEventsRepository, userStatusRepository);
        }
        return zA;
    }

    public final boolean a(boolean z, boolean z2, boolean z3, boolean z4, String str, io.didomi.drawable.apiEvents.b apiEventsRepository, M2 eventsRepository, P8 userStatusRepository) {
        Set<InternalPurpose> setEmptySet;
        Set<InternalPurpose> setL;
        Set<InternalPurpose> setEmptySet2;
        Set<InternalPurpose> setN;
        Set<InternalVendor> setEmptySet3;
        Set<InternalVendor> setR;
        Set<InternalVendor> setEmptySet4;
        Set<InternalVendor> setT;
        Intrinsics.checkNotNullParameter(apiEventsRepository, "apiEventsRepository");
        Intrinsics.checkNotNullParameter(eventsRepository, "eventsRepository");
        Intrinsics.checkNotNullParameter(userStatusRepository, "userStatusRepository");
        if (z) {
            setEmptySet = this.b.l();
            setL = SetsKt__SetsKt.emptySet();
        } else {
            setEmptySet = SetsKt__SetsKt.emptySet();
            setL = this.b.l();
        }
        Set<InternalPurpose> set = setL;
        Set<InternalPurpose> set2 = setEmptySet;
        if (z2) {
            setEmptySet2 = this.b.n();
            setN = SetsKt__SetsKt.emptySet();
        } else {
            setEmptySet2 = SetsKt__SetsKt.emptySet();
            setN = this.b.n();
        }
        Set<InternalPurpose> set3 = setN;
        Set<InternalPurpose> set4 = setEmptySet2;
        if (z3) {
            setEmptySet3 = this.b.r();
            setR = SetsKt__SetsKt.emptySet();
        } else {
            setEmptySet3 = SetsKt__SetsKt.emptySet();
            setR = this.b.r();
        }
        Set<InternalVendor> set5 = setR;
        Set<InternalVendor> set6 = setEmptySet3;
        if (z4) {
            setEmptySet4 = this.b.t();
            setT = SetsKt__SetsKt.emptySet();
        } else {
            setEmptySet4 = SetsKt__SetsKt.emptySet();
            setT = this.b.t();
        }
        return a(set2, set, set4, set3, set6, set5, setEmptySet4, setT, true, str, apiEventsRepository, eventsRepository, userStatusRepository);
    }

    public final ConsentStatus b(String vendorId) {
        Object next;
        Intrinsics.checkNotNullParameter(vendorId, "vendorId");
        InternalVendor internalVendorG = this.b.g(vendorId);
        if (internalVendorG == null) {
            return ConsentStatus.UNKNOWN;
        }
        if (C1870q3.b(internalVendorG)) {
            return ConsentStatus.ENABLE;
        }
        if (Y.c(b(), vendorId) != ConsentStatus.ENABLE) {
            return ConsentStatus.DISABLE;
        }
        Iterator<T> it = internalVendorG.getPurposeIds().iterator();
        while (it.hasNext()) {
            if (a((String) it.next()) != ConsentStatus.ENABLE) {
                return ConsentStatus.DISABLE;
            }
        }
        for (String str : internalVendorG.getSpecialFeatureIds()) {
            Iterator<T> it2 = this.b.k().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                }
                next = it2.next();
                InternalPurpose internalPurpose = (InternalPurpose) next;
                if (internalPurpose.isSpecialFeature() && Intrinsics.areEqual(internalPurpose.getIabId(), str)) {
                    break;
                }
            }
            InternalPurpose internalPurpose2 = (InternalPurpose) next;
            if (internalPurpose2 != null && a(internalPurpose2.getId()) != ConsentStatus.ENABLE) {
                return ConsentStatus.DISABLE;
            }
        }
        return ConsentStatus.ENABLE;
    }

    public final ConsentToken b() {
        ConsentToken consentToken = this.k;
        if (consentToken != null) {
            return consentToken;
        }
        Intrinsics.throwUninitializedPropertyAccessException("consentToken");
        return null;
    }

    public final ConsentStatus c(String purposeId) {
        Intrinsics.checkNotNullParameter(purposeId, "purposeId");
        return this.b.c(purposeId) == null ? ConsentStatus.UNKNOWN : e(purposeId) ? ConsentStatus.ENABLE : Y.a(b(), purposeId);
    }

    public final ConsentStatus d(String vendorId) {
        Intrinsics.checkNotNullParameter(vendorId, "vendorId");
        InternalVendor internalVendorG = this.b.g(vendorId);
        if (internalVendorG == null) {
            return ConsentStatus.UNKNOWN;
        }
        ConsentStatus consentStatusD = Y.d(b(), vendorId);
        ConsentStatus consentStatus = ConsentStatus.DISABLE;
        if (consentStatusD == consentStatus) {
            return consentStatus;
        }
        if (C1870q3.b(internalVendorG)) {
            return ConsentStatus.ENABLE;
        }
        Iterator<T> it = internalVendorG.getLegIntPurposeIds().iterator();
        while (it.hasNext()) {
            ConsentStatus consentStatusC = c((String) it.next());
            ConsentStatus consentStatus2 = ConsentStatus.DISABLE;
            if (consentStatusC == consentStatus2) {
                return consentStatus2;
            }
        }
        return ConsentStatus.ENABLE;
    }

    public final String d() {
        return e().a(this.a);
    }

    public final Q2 e() {
        return (Q2) this.i.getValue();
    }

    public final Set<String> f() {
        return (Set) this.h.getValue();
    }

    public final boolean f(String vendorId) {
        Intrinsics.checkNotNullParameter(vendorId, "vendorId");
        ConsentStatus consentStatusC = Y.c(b(), vendorId);
        ConsentStatus consentStatus = ConsentStatus.UNKNOWN;
        return consentStatusC == consentStatus && Y.d(b(), vendorId) == consentStatus;
    }

    public final Integer g() {
        if (C1816l.b(this.c.b())) {
            return Integer.valueOf(this.f8402e.getVersion());
        }
        return null;
    }

    public final boolean h() {
        return Y.k(b());
    }

    public final boolean i() {
        return (!I.b(this.c) || this.b.q().isEmpty() || a(this.b.l(), this.b.r())) ? false : true;
    }

    public final boolean j() {
        return (!I.b(this.c) || this.b.t().isEmpty() || b(this.b.n(), this.b.t())) ? false : true;
    }

    public final boolean k() {
        return i() || j();
    }

    public final boolean l() {
        return C1917v0.a.a(b().getUpdated()) >= this.c.b().e().b();
    }

    public final void m() {
        this.k = new ConsentToken(C1917v0.a.a());
        n();
    }

    public final void n() {
        b().setTcfVersion(this.f8402e.getVersion());
        b(b());
        c(b());
        o();
        this.f8401d.a(b());
    }

    public final void p() {
        if (h()) {
            return;
        }
        c(a(b()));
    }

    public final boolean q() {
        return this.c.e() != Regulation.NONE && k() && (l() || !h());
    }
}
