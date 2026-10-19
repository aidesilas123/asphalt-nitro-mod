package io.didomi.drawable;

import android.text.Spanned;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.google.android.gms.ads.RequestConfiguration;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import io.didomi.drawable.W3;
import io.didomi.drawable.events.Event;
import io.didomi.drawable.events.PreferencesClickSPICategoryAgreeEvent;
import io.didomi.drawable.events.PreferencesClickSPICategoryDisagreeEvent;
import io.didomi.drawable.events.PreferencesClickSPIPurposeAgreeEvent;
import io.didomi.drawable.events.PreferencesClickSPIPurposeDisagreeEvent;
import io.didomi.drawable.events.PreferencesClickSPIPurposeSaveChoicesEvent;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.purpose.common.model.PurposeCategory;
import io.didomi.drawable.view.mobile.DidomiToggle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.p;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsJVMKt;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Metadata is missing: kotlin.Metadata.data1 must not be an empty array
    	at kotlin.metadata.jvm.internal.JvmExceptionUtilsKt.requireNotEmpty(JvmExceptionUtils.kt:12)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000´\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b,\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0017\u0018\u00002\u00020\u0001BY\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0015\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0018H\u0002¢\u0006\u0004\b\u001d\u0010\u001bJ\u0017\u0010 \u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001cH\u0002¢\u0006\u0004\b \u0010!J\u0017\u0010$\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b$\u0010%J\u0017\u0010 \u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b \u0010%J\u000f\u0010'\u001a\u00020&H\u0002¢\u0006\u0004\b'\u0010(J\u001d\u0010)\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00182\u0006\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b)\u0010*J\u0019\u0010,\u001a\u0004\u0018\u00010\u001c2\u0006\u0010+\u001a\u00020\"H\u0002¢\u0006\u0004\b,\u0010-J\u0017\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001a\u0010.J\u0017\u0010$\u001a\u00020/2\u0006\u0010\u001e\u001a\u00020\u001cH\u0002¢\u0006\u0004\b$\u00100J\u0017\u00101\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b1\u00102J\u001f\u0010\u001a\u001a\u00020&2\u0006\u0010\u001e\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b\u001a\u00103J\u0015\u00104\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\b4\u0010%J\u001b\u0010\u001a\u001a\b\u0012\u0004\u0012\u000206052\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\b\u001a\u0010*J\u0013\u0010 \u001a\b\u0012\u0004\u0012\u00020605¢\u0006\u0004\b \u0010\u001bJ\u0015\u00107\u001a\b\u0012\u0004\u0012\u00020\u001c0\u0018H\u0016¢\u0006\u0004\b7\u0010\u001bJ\u0015\u0010\u001a\u001a\u00020&2\u0006\u00109\u001a\u000208¢\u0006\u0004\b\u001a\u0010:J\u0017\u0010 \u001a\u0004\u0018\u00010\u001c2\u0006\u0010;\u001a\u00020\u001f¢\u0006\u0004\b \u0010<J\u0017\u0010\u001a\u001a\u0004\u0018\u00010\"2\u0006\u0010;\u001a\u00020\u001f¢\u0006\u0004\b\u001a\u0010=J\u0015\u0010\u001a\u001a\u00020>2\u0006\u0010?\u001a\u00020>¢\u0006\u0004\b\u001a\u0010@J\u0015\u0010B\u001a\u00020&2\u0006\u0010A\u001a\u00020\"¢\u0006\u0004\bB\u0010CJ\u0015\u0010D\u001a\u00020/2\u0006\u0010#\u001a\u00020\"¢\u0006\u0004\bD\u0010EJ\u0015\u0010G\u001a\u00020&2\u0006\u0010F\u001a\u00020\"¢\u0006\u0004\bG\u0010CJ\r\u0010H\u001a\u00020&¢\u0006\u0004\bH\u0010(J\u001d\u0010\u001a\u001a\u00020&2\u0006\u0010\u001e\u001a\u00020\u001c2\u0006\u0010I\u001a\u00020/¢\u0006\u0004\b\u001a\u0010JJ\u001d\u0010\u001a\u001a\u00020&2\u0006\u0010#\u001a\u00020\"2\u0006\u0010I\u001a\u00020/¢\u0006\u0004\b\u001a\u0010KJ\r\u0010L\u001a\u00020&¢\u0006\u0004\bL\u0010(J\r\u0010M\u001a\u00020&¢\u0006\u0004\bM\u0010(J\r\u0010N\u001a\u00020&¢\u0006\u0004\bN\u0010(J\r\u0010O\u001a\u00020&¢\u0006\u0004\bO\u0010(J\r\u0010P\u001a\u00020&¢\u0006\u0004\bP\u0010(J\r\u0010Q\u001a\u00020&¢\u0006\u0004\bQ\u0010(R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010RR\u001a\u0010\u0005\u001a\u00020\u00048\u0004X\u0084\u0004¢\u0006\f\n\u0004\b \u0010S\u001a\u0004\b,\u0010TR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010UR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010VR\u001a\u0010\u000b\u001a\u00020\n8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b4\u0010W\u001a\u0004\bX\u0010YR\u001a\u0010\r\u001a\u00020\f8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b1\u0010Z\u001a\u0004\b[\u0010\\R\u0017\u0010\u000f\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b)\u0010]\u001a\u0004\b^\u0010_R\u0017\u0010\u0011\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b,\u0010`\u001a\u0004\ba\u0010bR\u0017\u0010\u0013\u001a\u00020\u00128\u0006¢\u0006\f\n\u0004\bG\u0010c\u001a\u0004\bG\u0010dR\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010eR\u001c\u0010h\u001a\b\u0012\u0004\u0012\u00020\u001c0\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u001c\u0010j\u001a\b\u0012\u0004\u0012\u00020\"0\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010gR\u001f\u0010F\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\"0k8\u0006¢\u0006\f\n\u0004\bl\u0010m\u001a\u0004\bl\u0010nR\u001d\u0010p\u001a\b\u0012\u0004\u0012\u00020/0k8\u0006¢\u0006\f\n\u0004\bo\u0010m\u001a\u0004\bo\u0010nR\u001d\u0010u\u001a\u0004\u0018\u00010q8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\br\u0010s\u001a\u0004\br\u0010tR\u0018\u0010y\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010xR\u0018\u0010{\u001a\u0004\u0018\u00010v8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bz\u0010xR\u001a\u0010|\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00188BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b)\u0010\u001bR\u0014\u0010~\u001a\u00020\u001f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b$\u0010}R\u001a\u0010\u007f\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00188BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b1\u0010\u001bR\u0017\u0010\u0082\u0001\u001a\u00030\u0080\u00018BX\u0082\u0004¢\u0006\u0007\u001a\u0005\bw\u0010\u0081\u0001R\u0016\u0010\u0084\u0001\u001a\u00020\u001f8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0083\u0001\u0010}R\u0015\u0010\u0085\u0001\u001a\u00020\u001f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bB\u0010}R\u0012\u0010\u0086\u0001\u001a\u00020\u001f8F¢\u0006\u0006\u001a\u0004\bf\u0010}R\u0012\u0010\u0087\u0001\u001a\u00020\u001f8F¢\u0006\u0006\u001a\u0004\bz\u0010}R\u0012\u0010\u0088\u0001\u001a\u00020\u001f8F¢\u0006\u0006\u001a\u0004\bD\u0010}R\u0012\u0010\u0089\u0001\u001a\u00020\u001f8F¢\u0006\u0006\u001a\u0004\b4\u0010}R\u0012\u0010\u008a\u0001\u001a\u00020\u001f8F¢\u0006\u0006\u001a\u0004\bi\u0010}¨\u0006\u008b\u0001"}, d2 = {"Lio/didomi/sdk/Q5;", "Landroidx/lifecycle/ViewModel;", "Lio/didomi/sdk/apiEvents/b;", "apiEventsRepository", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/V;", "consentRepository", "Lio/didomi/sdk/M2;", "eventsRepository", "Lio/didomi/sdk/v3;", "languagesHelper", "Lio/didomi/sdk/G8;", "userChoicesInfoProvider", "Lio/didomi/sdk/D8;", "uiProvider", "Lio/didomi/sdk/V8;", "vendorRepository", "Lio/didomi/sdk/C3;", "logoProvider", "Lio/didomi/sdk/P8;", "userStatusRepository", "<init>", "(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/G8;Lio/didomi/sdk/D8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;Lio/didomi/sdk/P8;)V", "", "Lio/didomi/sdk/a4;", "a", "()Ljava/util/List;", "Lio/didomi/sdk/models/InternalPurpose;", "z", "personalData", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lio/didomi/sdk/models/InternalPurpose;)Ljava/lang/String;", "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "category", "c", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/lang/String;", "", "B", "()V", "g", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Ljava/util/List;", "purposeCategory", "h", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/models/InternalPurpose;", "(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/a4;", "Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;", InneractiveMediationDefs.GENDER_FEMALE, "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/a4;", "(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V", "e", "", "Lio/didomi/sdk/W3;", "A", "Lio/didomi/sdk/events/Event;", NotificationCompat.CATEGORY_EVENT, "(Lio/didomi/sdk/events/Event;)V", "id", "(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;", "(Ljava/lang/String;)Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "", "isMainScreen", "(Z)Z", "item", "j", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/view/mobile/DidomiToggle$b;", "selectedCategory", "i", "v", "state", "(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Lio/didomi/sdk/view/mobile/DidomiToggle$b;)V", "w", "C", "y", "x", "u", "t", "Lio/didomi/sdk/apiEvents/b;", "Lio/didomi/sdk/H;", "()Lio/didomi/sdk/H;", "Lio/didomi/sdk/V;", "Lio/didomi/sdk/M2;", "Lio/didomi/sdk/v3;", "getLanguagesHelper", "()Lio/didomi/sdk/v3;", "Lio/didomi/sdk/G8;", "getUserChoicesInfoProvider", "()Lio/didomi/sdk/G8;", "Lio/didomi/sdk/D8;", "s", "()Lio/didomi/sdk/D8;", "Lio/didomi/sdk/V8;", "getVendorRepository", "()Lio/didomi/sdk/V8;", "Lio/didomi/sdk/C3;", "()Lio/didomi/sdk/C3;", "Lio/didomi/sdk/P8;", CampaignEx.JSON_KEY_AD_K, "Ljava/util/List;", "requiredPersonalData", "l", "requiredCategories", "Landroidx/lifecycle/MutableLiveData;", InneractiveMediationDefs.GENDER_MALE, "Landroidx/lifecycle/MutableLiveData;", "()Landroidx/lifecycle/MutableLiveData;", b4.p, "selectedCategoryState", "Lio/didomi/sdk/S5;", "o", "Lkotlin/Lazy;", "()Lio/didomi/sdk/S5;", "spiContent", "Lio/didomi/sdk/m3;", TtmlNode.TAG_P, "Lio/didomi/sdk/m3;", "spiInitialPurposesHolder", CampaignEx.JSON_KEY_AD_Q, "categoryInitialPurposesHolder", "accessibilityStateDescription", "()Ljava/lang/String;", "accessibilityActionDescription", "accessibilityStateActionDescription", "Landroid/text/Spanned;", "()Landroid/text/Spanned;", "spiContentDescription", "r", "spiSectionTitle", "noSpiContentLabel", "saveAndCloseButtonTitle", "spiContentTitle", "accessibilityCloseDescription", "accessibilityClosePurposesActionDescription", "saveButtonLabel", "android_release"}, mv = {1, 8, 0})
public class Q5 extends ViewModel {
    private final io.didomi.drawable.apiEvents.b a;
    private final H b;
    private final V c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final M2 f8343d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final C1920v3 f8344e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final G8 f8345f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final D8 f8346g;
    private final V8 h;
    private final C3 i;
    private final P8 j;
    private List<InternalPurpose> k;
    private List<PurposeCategory> l;
    private final MutableLiveData<PurposeCategory> m;
    private final MutableLiveData<DidomiToggle.b> n;
    private final Lazy o;
    private InitialPurposesHolder p;
    private InitialPurposesHolder q;

    @Metadata(mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[DidomiToggle.b.values().length];
            try {
                iArr[DidomiToggle.b.DISABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DidomiToggle.b.ENABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[DidomiToggle.b.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            a = iArr;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "a", "kotlin.jvm.PlatformType", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, mv = {1, 8, 0}, xi = 48)
    public static final class b<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return ComparisonsKt__ComparisonsKt.compareValues(((InternalPurpose) t).getName(), ((InternalPurpose) t2).getName());
        }
    }

    @Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lio/didomi/sdk/S5;", "a", "()Lio/didomi/sdk/S5;"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function0<SensitivePersonalInformation> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SensitivePersonalInformation invoke() {
            return Q5.this.h().b().f().f();
        }
    }

    public Q5(io.didomi.drawable.apiEvents.b apiEventsRepository, H configurationRepository, V consentRepository, M2 eventsRepository, C1920v3 languagesHelper, G8 userChoicesInfoProvider, D8 uiProvider, V8 vendorRepository, C3 logoProvider, P8 userStatusRepository) {
        Intrinsics.checkNotNullParameter(apiEventsRepository, "apiEventsRepository");
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(consentRepository, "consentRepository");
        Intrinsics.checkNotNullParameter(eventsRepository, "eventsRepository");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        Intrinsics.checkNotNullParameter(userChoicesInfoProvider, "userChoicesInfoProvider");
        Intrinsics.checkNotNullParameter(uiProvider, "uiProvider");
        Intrinsics.checkNotNullParameter(vendorRepository, "vendorRepository");
        Intrinsics.checkNotNullParameter(logoProvider, "logoProvider");
        Intrinsics.checkNotNullParameter(userStatusRepository, "userStatusRepository");
        this.a = apiEventsRepository;
        this.b = configurationRepository;
        this.c = consentRepository;
        this.f8343d = eventsRepository;
        this.f8344e = languagesHelper;
        this.f8345f = userChoicesInfoProvider;
        this.f8346g = uiProvider;
        this.h = vendorRepository;
        this.i = logoProvider;
        this.j = userStatusRepository;
        this.k = W8.b(vendorRepository);
        this.l = vendorRepository.u();
        this.m = new MutableLiveData<>();
        this.n = new MutableLiveData<>();
        this.o = LazyKt__LazyJVMKt.lazy(new c());
    }

    private final void B() {
        this.a.i();
        this.c.a(this.f8345f.f(), this.f8345f.b(), this.f8345f.h(), this.f8345f.d(), this.f8345f.g(), this.f8345f.c(), this.f8345f.i(), this.f8345f.e(), true, CampaignEx.JSON_NATIVE_VIDEO_CLICK, this.a, this.f8343d, this.j);
    }

    private final PersonalDataDisplayItem a(InternalPurpose internalPurpose) {
        return new PersonalDataDisplayItem(internalPurpose.getId().hashCode(), W3.a.PersonalData, false, internalPurpose.getId(), b(internalPurpose), null, c(internalPurpose), f(), g(), false);
    }

    private final List<PersonalDataDisplayItem> a() {
        ArrayList arrayList = new ArrayList();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (PurposeCategory purposeCategory : this.l) {
            PersonalDataDisplayItem personalDataDisplayItemF = null;
            if (C1901t4.a(purposeCategory) == PurposeCategory.Type.Purpose) {
                InternalPurpose internalPurposeB = b(purposeCategory.getPurposeId());
                if (internalPurposeB != null) {
                    personalDataDisplayItemF = a(internalPurposeB);
                    linkedHashSet.add(purposeCategory.getPurposeId());
                }
            } else {
                List<String> listG = g(purposeCategory);
                if (!listG.isEmpty()) {
                    linkedHashSet.addAll(listG);
                    personalDataDisplayItemF = f(purposeCategory);
                }
            }
            if (personalDataDisplayItemF != null) {
                arrayList.add(personalDataDisplayItemF);
            }
        }
        for (InternalPurpose internalPurpose : z()) {
            if (!linkedHashSet.contains(internalPurpose.getId())) {
                arrayList.add(a(internalPurpose));
            }
        }
        return CollectionsKt___CollectionsKt.filterNotNull(arrayList);
    }

    private final void a(InternalPurpose internalPurpose, PurposeCategory purposeCategory) {
        if ((!StringsKt__StringsJVMKt.isBlank(internalPurpose.getId())) && Intrinsics.areEqual(internalPurpose.getId(), purposeCategory.getPurposeId())) {
            internalPurpose.setCategory(purposeCategory);
        }
    }

    private final String b(InternalPurpose internalPurpose) {
        return internalPurpose.getName();
    }

    private final String b(PurposeCategory purposeCategory) {
        return C1920v3.a(this.f8344e, purposeCategory.getDescription(), null, 2, null);
    }

    private final DidomiToggle.b c(InternalPurpose internalPurpose) {
        return this.f8345f.f().contains(internalPurpose) ? DidomiToggle.b.ENABLED : DidomiToggle.b.DISABLED;
    }

    private final String c() {
        return C1920v3.a(this.f8344e, "know_more_about_this_purpose", null, null, null, 14, null);
    }

    private final String c(PurposeCategory purposeCategory) {
        return C1920v3.a(this.f8344e, purposeCategory.getName(), null, 2, null);
    }

    private final PersonalDataDisplayItem f(PurposeCategory purposeCategory) {
        return new PersonalDataDisplayItem(purposeCategory.getId().hashCode(), W3.a.Category, true, purposeCategory.getId(), c(purposeCategory), c(), d(purposeCategory), f(), g(), false);
    }

    private final List<String> f() {
        return CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{C1920v3.a(this.f8344e, "enable_this_purpose", null, null, null, 14, null), C1920v3.a(this.f8344e, "disable_this_purpose", null, null, null, 14, null), C1920v3.a(this.f8344e, "enable_this_purpose", null, null, null, 14, null)});
    }

    private final List<String> g() {
        return CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{C1920v3.a(this.f8344e, "disabled", null, null, null, 14, null), C1920v3.a(this.f8344e, b4.r, null, null, null, 14, null), C1920v3.a(this.f8344e, "unspecified", null, null, null, 14, null)});
    }

    private final List<String> g(PurposeCategory purposeCategory) {
        List<PurposeCategory> children = purposeCategory.getChildren();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = children.iterator();
        while (it.hasNext()) {
            InternalPurpose internalPurposeH = h((PurposeCategory) it.next());
            String id = internalPurposeH != null ? internalPurposeH.getId() : null;
            if (id != null) {
                arrayList.add(id);
            }
        }
        return arrayList;
    }

    private final InternalPurpose h(PurposeCategory purposeCategory) {
        if (C1901t4.a(purposeCategory) == PurposeCategory.Type.Purpose) {
            return b(purposeCategory.getPurposeId());
        }
        return null;
    }

    private final String j() {
        return C1920v3.a(this.f8344e, "no_sensitive_personal_info", null, null, null, 14, null);
    }

    private final SensitivePersonalInformation o() {
        return (SensitivePersonalInformation) this.o.getValue();
    }

    private final Spanned p() {
        C1920v3 c1920v3 = this.f8344e;
        SensitivePersonalInformation sensitivePersonalInformationO = o();
        return V5.k(C1920v3.a(c1920v3, sensitivePersonalInformationO != null ? sensitivePersonalInformationO.b() : null, null, 2, null));
    }

    private final String r() {
        C1920v3 c1920v3 = this.f8344e;
        SensitivePersonalInformation sensitivePersonalInformationO = o();
        return C1920v3.a(c1920v3, sensitivePersonalInformationO != null ? sensitivePersonalInformationO.c() : null, null, 2, null);
    }

    private final List<InternalPurpose> z() {
        List<InternalPurpose> mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) this.k);
        if (mutableList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, new b());
        }
        if (this.l.isEmpty()) {
            return mutableList;
        }
        for (InternalPurpose internalPurpose : mutableList) {
            Iterator<T> it = this.l.iterator();
            while (it.hasNext()) {
                a(internalPurpose, (PurposeCategory) it.next());
            }
        }
        return mutableList;
    }

    public List<InternalPurpose> A() {
        Set<InternalPurpose> setK = this.h.k();
        ArrayList arrayList = new ArrayList();
        for (Object obj : setK) {
            if (C1860p3.a((InternalPurpose) obj)) {
                arrayList.add(obj);
            }
        }
        this.k = arrayList;
        return z();
    }

    public final void C() {
        H8.a(this.f8345f, this.c.b(), this.h);
    }

    public final PurposeCategory a(String id) {
        Object next;
        Intrinsics.checkNotNullParameter(id, "id");
        Iterator<T> it = this.l.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(((PurposeCategory) next).getId(), id)) {
                break;
            }
        }
        return (PurposeCategory) next;
    }

    public final List<W3> a(PurposeCategory category) {
        Intrinsics.checkNotNullParameter(category, "category");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new PersonalDataDisplayCategoryHeader(b(category)));
        List<PurposeCategory> children = category.getChildren();
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it = children.iterator();
        while (it.hasNext()) {
            InternalPurpose internalPurposeH = h((PurposeCategory) it.next());
            if (internalPurposeH != null) {
                arrayList2.add(internalPurposeH);
            }
        }
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10));
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(a((InternalPurpose) it2.next()));
        }
        arrayList.addAll(arrayList3);
        return arrayList;
    }

    public final void a(Event event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.f8343d.c(event);
    }

    public final void a(InternalPurpose personalData, DidomiToggle.b state) {
        Intrinsics.checkNotNullParameter(personalData, "personalData");
        Intrinsics.checkNotNullParameter(state, "state");
        int i = a.a[state.ordinal()];
        if (i == 1) {
            this.f8345f.a(personalData);
            a(new PreferencesClickSPIPurposeDisagreeEvent(personalData.getId()));
        } else {
            if (i != 2) {
                return;
            }
            this.f8345f.c(personalData);
            a(new PreferencesClickSPIPurposeAgreeEvent(personalData.getId()));
        }
    }

    public final void a(PurposeCategory category, DidomiToggle.b state) {
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(state, "state");
        List<PurposeCategory> children = category.getChildren();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = children.iterator();
        while (it.hasNext()) {
            InternalPurpose internalPurposeH = h((PurposeCategory) it.next());
            if (internalPurposeH != null) {
                arrayList.add(internalPurposeH);
            }
        }
        int i = a.a[state.ordinal()];
        if (i == 1) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                this.f8345f.a((InternalPurpose) it2.next());
            }
            a(new PreferencesClickSPICategoryDisagreeEvent(category.getId()));
            return;
        }
        if (i != 2) {
            return;
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            this.f8345f.c((InternalPurpose) it3.next());
        }
        a(new PreferencesClickSPICategoryAgreeEvent(category.getId()));
    }

    public final boolean a(boolean z) {
        C1806k c1806kB = this.b.b();
        return c1806kB.a().l() || (z && c1806kB.f().g());
    }

    public final InternalPurpose b(String id) {
        Object next;
        Intrinsics.checkNotNullParameter(id, "id");
        Iterator<T> it = this.k.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(((InternalPurpose) next).getId(), id)) {
                break;
            }
        }
        return (InternalPurpose) next;
    }

    public final List<W3> b() {
        ArrayList arrayList = new ArrayList();
        List<PersonalDataDisplayItem> listA = a();
        if (listA.isEmpty()) {
            arrayList.add(new PersonalDataDisplayEmpty(j()));
        } else {
            arrayList.add(new PersonalDataDisplayHeader(p(), r()));
            arrayList.addAll(listA);
        }
        return arrayList;
    }

    public final DidomiToggle.b d(PurposeCategory category) {
        Intrinsics.checkNotNullParameter(category, "category");
        List<PurposeCategory> children = category.getChildren();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = children.iterator();
        while (it.hasNext()) {
            InternalPurpose internalPurposeH = h((PurposeCategory) it.next());
            if (internalPurposeH != null) {
                arrayList.add(internalPurposeH);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(c((InternalPurpose) it2.next()));
        }
        List listDistinct = CollectionsKt___CollectionsKt.distinct(arrayList2);
        return listDistinct.size() == 1 ? (DidomiToggle.b) p.first(listDistinct) : DidomiToggle.b.UNKNOWN;
    }

    public final String d() {
        return C1920v3.a(this.f8344e, "close", null, null, null, 14, null);
    }

    public final String e() {
        return C1920v3.a(this.f8344e, "close_purpose_view", null, null, null, 14, null);
    }

    public final String e(PurposeCategory category) {
        Intrinsics.checkNotNullParameter(category, "category");
        return C1920v3.a(this.f8344e, category.getName(), null, 2, null);
    }

    protected final H h() {
        return this.b;
    }

    public final C3 i() {
        return this.i;
    }

    public final void i(PurposeCategory selectedCategory) {
        Intrinsics.checkNotNullParameter(selectedCategory, "selectedCategory");
        this.n.setValue(d(selectedCategory));
    }

    public final void j(PurposeCategory item) {
        Intrinsics.checkNotNullParameter(item, "item");
        this.m.setValue(item);
    }

    public final String k() {
        return C1920v3.a(this.f8344e, "save_11a80ec3", null, null, null, 14, null);
    }

    public final String l() {
        return C1920v3.a(this.f8344e, this.b.b().f().b().g(), "save_11a80ec3", (W5) null, 4, (Object) null);
    }

    public final MutableLiveData<PurposeCategory> m() {
        return this.m;
    }

    public final MutableLiveData<DidomiToggle.b> n() {
        return this.n;
    }

    public final String q() {
        C1920v3 c1920v3 = this.f8344e;
        SensitivePersonalInformation sensitivePersonalInformationO = o();
        return C1920v3.a(c1920v3, sensitivePersonalInformationO != null ? sensitivePersonalInformationO.d() : null, null, 2, null);
    }

    public final D8 s() {
        return this.f8346g;
    }

    public final void t() {
        InitialPurposesHolder initialPurposesHolder = this.q;
        if (initialPurposesHolder != null) {
            C1840n3.a(initialPurposesHolder, this.f8345f);
        }
        this.m.setValue(null);
    }

    public final void u() {
        this.q = InitialPurposesHolder.INSTANCE.a(this.f8345f);
    }

    public final void v() {
        B();
        a(new PreferencesClickSPIPurposeSaveChoicesEvent());
    }

    public final void w() {
        this.a.j();
    }

    public final void x() {
        InitialPurposesHolder initialPurposesHolder = this.p;
        if (initialPurposesHolder != null) {
            C1840n3.a(initialPurposesHolder, this.f8345f);
        }
        this.m.setValue(null);
    }

    public final void y() {
        this.p = InitialPurposesHolder.INSTANCE.a(this.f8345f);
    }
}
