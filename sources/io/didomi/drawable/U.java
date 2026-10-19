package io.didomi.drawable;

import androidx.core.app.NotificationCompat;
import androidx.lifecycle.ViewModel;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.google.android.gms.ads.RequestConfiguration;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import io.didomi.drawable.C1806k;
import io.didomi.drawable.apiEvents.b;
import io.didomi.drawable.events.Event;
import io.didomi.drawable.events.NoticeClickAgreeEvent;
import io.didomi.drawable.events.NoticeClickDisagreeEvent;
import io.didomi.drawable.events.NoticeClickMoreInfoEvent;
import io.didomi.drawable.events.NoticeClickViewSPIPurposesEvent;
import io.didomi.drawable.events.NoticeClickViewVendorsEvent;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsKt;

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
@Metadata(d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\b\b\u0016\u0018\u0000 O2\u00020\u0001:\u0002 #Ba\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010 \u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b \u0010!J\u0015\u0010#\u001a\u00020\"2\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b#\u0010$J\u0015\u0010 \u001a\u00020\u001a2\u0006\u0010%\u001a\u00020\u001c¢\u0006\u0004\b \u0010&J\u0015\u0010 \u001a\u00020)2\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b \u0010*J\r\u0010+\u001a\u00020)¢\u0006\u0004\b+\u0010,J\r\u0010-\u001a\u00020)¢\u0006\u0004\b-\u0010,J\r\u0010.\u001a\u00020)¢\u0006\u0004\b.\u0010,J\r\u0010/\u001a\u00020)¢\u0006\u0004\b/\u0010,J\r\u00100\u001a\u00020)¢\u0006\u0004\b0\u0010,R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u00101R\u001a\u0010\u0005\u001a\u00020\u00048\u0004X\u0084\u0004¢\u0006\f\n\u0004\b#\u00102\u001a\u0004\b3\u00104R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u00105R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00106R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\u001a\u0010\u000f\u001a\u00020\u000e8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<R\u0017\u0010\u0011\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@R\u0017\u0010\u0013\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\bA\u0010B\u001a\u0004\bC\u0010DR\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010FR\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010GR\u001b\u0010L\u001a\u00020\u001a8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bH\u0010I\u001a\u0004\bJ\u0010KR\u001b\u0010Q\u001a\u00020M8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bN\u0010I\u001a\u0004\bO\u0010PR\u001b\u0010T\u001a\u00020\u001a8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bR\u0010I\u001a\u0004\bS\u0010KR\u001b\u0010X\u001a\u00020U8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b?\u0010I\u001a\u0004\bV\u0010WR\u001b\u0010]\u001a\u00020Y8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bZ\u0010I\u001a\u0004\b[\u0010\\R\u001b\u0010a\u001a\u00020^8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b_\u0010I\u001a\u0004\b7\u0010`R\u001b\u0010b\u001a\u00020\u001a8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bV\u0010I\u001a\u0004\b9\u0010KR\u001b\u0010d\u001a\u00020\u001a8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bc\u0010I\u001a\u0004\b=\u0010KR\u001b\u0010f\u001a\u00020\u001a8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\be\u0010I\u001a\u0004\bA\u0010KR!\u0010j\u001a\u00020\u001a8TX\u0094\u0084\u0002¢\u0006\u0012\n\u0004\bg\u0010I\u0012\u0004\bi\u0010,\u001a\u0004\bh\u0010KR\u001b\u0010m\u001a\u00020\u001a8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bk\u0010I\u001a\u0004\bl\u0010KR\u0014\u0010o\u001a\u00020\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bR\u0010nR\u0011\u0010q\u001a\u00020\u001f8F¢\u0006\u0006\u001a\u0004\b\u001d\u0010pR\u0011\u0010r\u001a\u00020\u001c8F¢\u0006\u0006\u001a\u0004\b_\u0010nR\u0011\u0010s\u001a\u00020\u001c8F¢\u0006\u0006\u001a\u0004\b#\u0010nR\u0011\u0010t\u001a\u00020\u001f8F¢\u0006\u0006\u001a\u0004\b \u0010pR\u0011\u0010u\u001a\u00020\u001c8F¢\u0006\u0006\u001a\u0004\bk\u0010nR\u0011\u0010v\u001a\u00020\u001c8F¢\u0006\u0006\u001a\u0004\be\u0010nR\u0011\u0010x\u001a\u00020\u001c8F¢\u0006\u0006\u001a\u0004\bw\u0010nR\u0011\u0010y\u001a\u00020\u001c8F¢\u0006\u0006\u001a\u0004\bg\u0010nR\u0014\u0010|\u001a\u00020z8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bc\u0010{R\u0011\u0010}\u001a\u00020\u001c8F¢\u0006\u0006\u001a\u0004\bZ\u0010nR\u0011\u0010~\u001a\u00020\u001f8F¢\u0006\u0006\u001a\u0004\bH\u0010pR\u0012\u0010\u0080\u0001\u001a\u00020\"8F¢\u0006\u0006\u001a\u0004\bN\u0010\u007fR\u0015\u0010\u0081\u0001\u001a\u00020\u001a8DX\u0084\u0004¢\u0006\u0006\u001a\u0004\bE\u0010K¨\u0006\u0082\u0001"}, d2 = {"Lio/didomi/sdk/U;", "Landroidx/lifecycle/ViewModel;", "Lio/didomi/sdk/apiEvents/b;", "apiEventsRepository", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/V;", "consentRepository", "Lio/didomi/sdk/M2;", "eventsRepository", "Lio/didomi/sdk/V8;", "vendorRepository", "Lio/didomi/sdk/s5;", "resourcesHelper", "Lio/didomi/sdk/v3;", "languagesHelper", "Lio/didomi/sdk/C3;", "logoProvider", "Lio/didomi/sdk/I3;", "navigationManager", "Lio/didomi/sdk/P8;", "userStatusRepository", "Lio/didomi/sdk/P3;", "organizationUserRepository", "<init>", "(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/M2;Lio/didomi/sdk/V8;Lio/didomi/sdk/s5;Lio/didomi/sdk/v3;Lio/didomi/sdk/C3;Lio/didomi/sdk/I3;Lio/didomi/sdk/P8;Lio/didomi/sdk/P3;)V", "", "asLink", "", "c", "(Z)Ljava/lang/String;", "Lio/didomi/sdk/a;", "a", "(Z)Lio/didomi/sdk/a;", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Z)Ljava/lang/CharSequence;", "contentText", "(Ljava/lang/String;)Z", "Lio/didomi/sdk/events/Event;", NotificationCompat.CATEGORY_EVENT, "", "(Lio/didomi/sdk/events/Event;)V", "E", "()V", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "F", "C", "D", "Lio/didomi/sdk/apiEvents/b;", "Lio/didomi/sdk/H;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Lio/didomi/sdk/H;", "Lio/didomi/sdk/V;", "Lio/didomi/sdk/M2;", "e", "Lio/didomi/sdk/V8;", InneractiveMediationDefs.GENDER_FEMALE, "Lio/didomi/sdk/v3;", "j", "()Lio/didomi/sdk/v3;", "g", "Lio/didomi/sdk/C3;", b4.p, "()Lio/didomi/sdk/C3;", "h", "Lio/didomi/sdk/I3;", "getNavigationManager", "()Lio/didomi/sdk/I3;", "i", "Lio/didomi/sdk/P8;", "Lio/didomi/sdk/P3;", CampaignEx.JSON_KEY_AD_K, "Lkotlin/Lazy;", "y", "()Z", "useCcpa", "Lio/didomi/sdk/L3;", "l", "v", "()Lio/didomi/sdk/L3;", "regulationResources", InneractiveMediationDefs.GENDER_MALE, "z", "userIsUnderage", "Lio/didomi/sdk/k$f;", CampaignEx.JSON_KEY_AD_Q, "()Lio/didomi/sdk/k$f;", "notice", "Lio/didomi/sdk/k$j;", "o", "x", "()Lio/didomi/sdk/k$j;", "underageNotice", "Lio/didomi/sdk/k$i$a;", TtmlNode.TAG_P, "()Lio/didomi/sdk/k$i$a;", "denyButtonType", "denyCross", "r", "denyLink", "s", "hasManageSpiChoicesButton", "t", "B", "isTcf2_2$annotations", "isTcf2_2", "u", "A", "isTablet", "()Ljava/lang/String;", "learnMoreLabel", "()Lio/didomi/sdk/a;", "closeButtonAccessibility", "manageSpiChoicesButtonLabel", "agreeButtonLabel", "agreeButtonAccessibility", "privacyButtonLabel", "noticeContentText", "w", "underAgeNoticeContentText", "noticeTitle", "Lio/didomi/sdk/U$b;", "()Lio/didomi/sdk/U$b;", "noticeAndPartnersProperties", "manageOurPartnersLabel", "learnMoreButtonAccessibility", "()Ljava/lang/CharSequence;", "learnMoreButtonLabel", "hasVendorsCountMacro", "android_release"}, mv = {1, 8, 0})
public class U extends ViewModel {
    public static final a v = new a(null);
    private final b a;
    private final H b;
    private final V c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final M2 f8379d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final V8 f8380e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final C1920v3 f8381f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final C3 f8382g;
    private final I3 h;
    private final P8 i;
    private final P3 j;
    private final Lazy k;
    private final Lazy l;
    private final Lazy m;
    private final Lazy n;
    private final Lazy o;
    private final Lazy p;
    private final Lazy q;
    private final Lazy r;
    private final Lazy s;
    private final Lazy t;
    private final Lazy u;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lio/didomi/sdk/U$a;", "", "<init>", "()V", "", "VIEW_VENDORS_LINK", "Ljava/lang/String;", "android_release"}, mv = {1, 8, 0})
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.U$b, reason: from toString */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\t\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u000f\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0011\u0010\nR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0012\u001a\u0004\b\u0013\u0010\n¨\u0006\u0017"}, d2 = {"Lio/didomi/sdk/U$b;", "", "", "noticeText", "", "partnersLinkInText", "partnersButtonText", "<init>", "(Ljava/lang/String;ZLjava/lang/String;)V", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Z", "c", "()Z", "android_release"}, mv = {1, 8, 0})
    public static final /* data */ class NoticeAndPartnersProperties {

        /* JADX INFO: renamed from: a, reason: from kotlin metadata and from toString */
        private final String noticeText;

        /* JADX INFO: renamed from: b, reason: from kotlin metadata and from toString */
        private final boolean partnersLinkInText;

        /* JADX INFO: renamed from: c, reason: from kotlin metadata and from toString */
        private final String partnersButtonText;

        public NoticeAndPartnersProperties(String noticeText, boolean z, String str) {
            Intrinsics.checkNotNullParameter(noticeText, "noticeText");
            this.noticeText = noticeText;
            this.partnersLinkInText = z;
            this.partnersButtonText = str;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getNoticeText() {
            return this.noticeText;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final String getPartnersButtonText() {
            return this.partnersButtonText;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final boolean getPartnersLinkInText() {
            return this.partnersLinkInText;
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof NoticeAndPartnersProperties)) {
                return false;
            }
            NoticeAndPartnersProperties noticeAndPartnersProperties = (NoticeAndPartnersProperties) other;
            return Intrinsics.areEqual(this.noticeText, noticeAndPartnersProperties.noticeText) && this.partnersLinkInText == noticeAndPartnersProperties.partnersLinkInText && Intrinsics.areEqual(this.partnersButtonText, noticeAndPartnersProperties.partnersButtonText);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [int] */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r1v7 */
        public int hashCode() {
            int iHashCode = this.noticeText.hashCode() * 31;
            boolean z = this.partnersLinkInText;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            int i = (iHashCode + r1) * 31;
            String str = this.partnersButtonText;
            return i + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "NoticeAndPartnersProperties(noticeText=" + this.noticeText + ", partnersLinkInText=" + this.partnersLinkInText + ", partnersButtonText=" + this.partnersButtonText + ')';
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/k$i$a;", "a", "()Lio/didomi/sdk/k$i$a;"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function0<C1806k.i.a> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final C1806k.i.a invoke() {
            return U.this.y() ? C1806k.i.a.NONE : C1816l.a(U.this.q());
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class d extends Lambda implements Function0<Boolean> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(!U.this.y() && C1816l.b(U.this.q()));
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class e extends Lambda implements Function0<Boolean> {
        e() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(!U.this.y() && C1816l.c(U.this.q()));
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class f extends Lambda implements Function0<Boolean> {
        f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(!U.this.z() && I.l(U.this.d()) && I.a(U.this.d()) && (U.this.f8380e.u().isEmpty() ^ true));
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class g extends Lambda implements Function0<Boolean> {
        final /* synthetic */ C1892s5 a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(C1892s5 c1892s5) {
            super(0);
            this.a = c1892s5;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(this.a.b());
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class h extends Lambda implements Function0<Boolean> {
        h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(Intrinsics.areEqual(C1816l.d(U.this.d().b()), "2.2"));
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/k$f;", "a", "()Lio/didomi/sdk/k$f;"}, mv = {1, 8, 0})
    static final class i extends Lambda implements Function0<C1806k.f> {
        i() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final C1806k.f invoke() {
            return U.this.d().b().e();
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/L3;", "a", "()Lio/didomi/sdk/L3;"}, mv = {1, 8, 0})
    static final class j extends Lambda implements Function0<L3> {
        j() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final L3 invoke() {
            return U.this.y() ? C1896t.a : O2.a;
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/k$j;", "a", "()Lio/didomi/sdk/k$j;"}, mv = {1, 8, 0})
    static final class k extends Lambda implements Function0<C1806k.j> {
        k() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final C1806k.j invoke() {
            return U.this.d().b().k();
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class l extends Lambda implements Function0<Boolean> {
        l() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(I.i(U.this.d()));
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class m extends Lambda implements Function0<Boolean> {
        m() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(U.this.j.getUserIsUnderage());
        }
    }

    public U(b apiEventsRepository, H configurationRepository, V consentRepository, M2 eventsRepository, V8 vendorRepository, C1892s5 resourcesHelper, C1920v3 languagesHelper, C3 logoProvider, I3 navigationManager, P8 userStatusRepository, P3 organizationUserRepository) {
        Intrinsics.checkNotNullParameter(apiEventsRepository, "apiEventsRepository");
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(consentRepository, "consentRepository");
        Intrinsics.checkNotNullParameter(eventsRepository, "eventsRepository");
        Intrinsics.checkNotNullParameter(vendorRepository, "vendorRepository");
        Intrinsics.checkNotNullParameter(resourcesHelper, "resourcesHelper");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        Intrinsics.checkNotNullParameter(logoProvider, "logoProvider");
        Intrinsics.checkNotNullParameter(navigationManager, "navigationManager");
        Intrinsics.checkNotNullParameter(userStatusRepository, "userStatusRepository");
        Intrinsics.checkNotNullParameter(organizationUserRepository, "organizationUserRepository");
        this.a = apiEventsRepository;
        this.b = configurationRepository;
        this.c = consentRepository;
        this.f8379d = eventsRepository;
        this.f8380e = vendorRepository;
        this.f8381f = languagesHelper;
        this.f8382g = logoProvider;
        this.h = navigationManager;
        this.i = userStatusRepository;
        this.j = organizationUserRepository;
        this.k = LazyKt__LazyJVMKt.lazy(new l());
        this.l = LazyKt__LazyJVMKt.lazy(new j());
        this.m = LazyKt__LazyJVMKt.lazy(new m());
        this.n = LazyKt__LazyJVMKt.lazy(new i());
        this.o = LazyKt__LazyJVMKt.lazy(new k());
        this.p = LazyKt__LazyJVMKt.lazy(new c());
        this.q = LazyKt__LazyJVMKt.lazy(new d());
        this.r = LazyKt__LazyJVMKt.lazy(new e());
        this.s = LazyKt__LazyJVMKt.lazy(new f());
        this.t = LazyKt__LazyJVMKt.lazy(new h());
        this.u = LazyKt__LazyJVMKt.lazy(new g(resourcesHelper));
    }

    private final String c(boolean z) {
        if (z()) {
            return C1920v3.a(this.f8381f, x().a().b(), null, 2, null);
        }
        return C1920v3.a(this.f8381f, q().a().b(), z ? "continue_without_agreeing" : "decline_7eeb5ff4", (W5) null, 4, (Object) null);
    }

    private final String m() {
        return C1920v3.a(this.f8381f, q().a().c(), v().b(), (W5) null, 4, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final C1806k.f q() {
        return (C1806k.f) this.n.getValue();
    }

    private final L3 v() {
        return (L3) this.l.getValue();
    }

    private final C1806k.j x() {
        return (C1806k.j) this.o.getValue();
    }

    public final boolean A() {
        return ((Boolean) this.u.getValue()).booleanValue();
    }

    protected boolean B() {
        return ((Boolean) this.t.getValue()).booleanValue();
    }

    public final void C() {
        this.c.a(true, true, true, true, CampaignEx.JSON_NATIVE_VIDEO_CLICK, this.a, this.f8379d, this.i);
        a(new NoticeClickAgreeEvent());
        this.h.a();
    }

    public final void D() {
        boolean z = !q().c();
        this.c.a(false, z, false, z, CampaignEx.JSON_NATIVE_VIDEO_CLICK, this.a, this.f8379d, this.i);
        a(new NoticeClickDisagreeEvent());
        this.h.a();
    }

    public final void E() {
        a(new NoticeClickMoreInfoEvent());
    }

    public final void F() {
        a(new NoticeClickViewSPIPurposesEvent());
    }

    public final void G() {
        a(new NoticeClickViewVendorsEvent());
    }

    public final Accessibility a() {
        return new Accessibility(b(), C1920v3.a(this.f8381f, "accept_our_data_processing_and_close_notice", (W5) null, (Map) null, 6, (Object) null), null, false, 0, null, 60, null);
    }

    public final Accessibility a(boolean z) {
        String strC = c(z);
        return z() ? new Accessibility(strC, C1920v3.a(this.f8381f, "acknowledge_and_close_notice", (W5) null, (Map) null, 6, (Object) null), null, false, 0, null, 60, null) : new Accessibility(strC, C1920v3.a(this.f8381f, "refuse_our_data_processing_and_close_notice", (W5) null, (Map) null, 6, (Object) null), null, false, 0, null, 60, null);
    }

    public final void a(Event event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.f8379d.c(event);
    }

    public final boolean a(String contentText) {
        Intrinsics.checkNotNullParameter(contentText, "contentText");
        return StringsKt__StringsKt.contains$default((CharSequence) new Regex("[`'\"]").f(contentText, ""), (CharSequence) "javascript:Didomi.preferences.show(vendors)", false, 2, (Object) null);
    }

    public final CharSequence b(boolean z) {
        if (!z) {
            return c(false);
        }
        String upperCase = c(true).toUpperCase(this.f8381f.g());
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        return X5.a(X5.b(upperCase), 0, 1, (Object) null);
    }

    public final String b() {
        return C1920v3.a(this.f8381f, q().a().a(), v().a(), (W5) null, 4, (Object) null);
    }

    public final Accessibility c() {
        return new Accessibility(C1920v3.a(this.f8381f, "close", null, null, null, 14, null), C1920v3.a(this.f8381f, "close_consent_notice", null, null, null, 14, null), null, false, 0, null, 60, null);
    }

    protected final H d() {
        return this.b;
    }

    public final C1806k.i.a e() {
        return (C1806k.i.a) this.p.getValue();
    }

    public final boolean f() {
        return ((Boolean) this.q.getValue()).booleanValue();
    }

    public final boolean g() {
        return ((Boolean) this.r.getValue()).booleanValue();
    }

    public final boolean h() {
        return ((Boolean) this.s.getValue()).booleanValue();
    }

    protected final boolean i() {
        String strB = this.f8381f.b(q().a().e(), v().c());
        return StringsKt__StringsKt.contains$default((CharSequence) strB, (CharSequence) "{numberOfPartners}", false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) strB, (CharSequence) "{numberOfIABPartners}", false, 2, (Object) null);
    }

    protected final C1920v3 j() {
        return this.f8381f;
    }

    public final Accessibility k() {
        return new Accessibility(X5.a(m()), C1920v3.a(this.f8381f, "go_to_purpose_configuration_view", (W5) null, (Map) null, 6, (Object) null), null, false, 0, null, 60, null);
    }

    public final CharSequence l() {
        return X5.a(m(), 0, 1, (Object) null);
    }

    public final C3 n() {
        return this.f8382g;
    }

    public final String o() {
        return C1920v3.a(this.f8381f, "manage_our_partners", null, null, null, 14, null);
    }

    public final String p() {
        return C1920v3.a(this.f8381f, this.b.b().e().a().d(), null, 2, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public io.didomi.drawable.U.NoticeAndPartnersProperties r() {
        /*
            r10 = this;
            java.lang.String r0 = r10.s()
            java.lang.String r0 = io.didomi.drawable.V5.b(r0)
            boolean r1 = r10.a(r0)
            boolean r2 = r10.B()
            if (r2 == 0) goto L1b
            if (r1 == 0) goto L1b
            boolean r3 = r10.i()
            if (r3 == 0) goto L1b
            goto L38
        L1b:
            if (r2 == 0) goto L2a
            io.didomi.sdk.v3 r4 = r10.f8381f
            r6 = 0
            r7 = 0
            r8 = 6
            r9 = 0
            java.lang.String r5 = "manage_our_partners_with_counts"
            java.lang.String r2 = io.didomi.drawable.C1920v3.a(r4, r5, r6, r7, r8, r9)
            goto L39
        L2a:
            boolean r2 = r10.y()
            if (r2 != 0) goto L38
            if (r1 == 0) goto L33
            goto L38
        L33:
            java.lang.String r2 = r10.o()
            goto L39
        L38:
            r2 = 0
        L39:
            io.didomi.sdk.U$b r3 = new io.didomi.sdk.U$b
            r3.<init>(r0, r1, r2)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: io.didomi.drawable.U.r():io.didomi.sdk.U$b");
    }

    public final String s() {
        return C1920v3.a(this.f8381f, q().a().e(), v().c(), (W5) null, 4, (Object) null);
    }

    public final String t() {
        return z() ? "" : C1920v3.a(this.f8381f, q().a().g(), v().d(), (W5) null, 4, (Object) null);
    }

    public final String u() {
        return C1920v3.a(this.f8381f, q().a().f(), "our_privacy_policy", (W5) null, 4, (Object) null);
    }

    public final String w() {
        return C1920v3.a(this.f8381f, x().a().a(), null, 2, null);
    }

    public final boolean y() {
        return ((Boolean) this.k.getValue()).booleanValue();
    }

    public final boolean z() {
        return ((Boolean) this.m.getValue()).booleanValue();
    }
}
