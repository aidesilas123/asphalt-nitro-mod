package io.didomi.drawable;

import android.graphics.Bitmap;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import com.google.android.gms.ads.RequestConfiguration;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.A7;
import io.didomi.drawable.AbstractC1775g8;
import io.didomi.drawable.V7;
import io.didomi.drawable.events.PreferencesClickViewVendorsEvent;
import io.didomi.drawable.models.DataCategory;
import io.didomi.drawable.models.InternalVendor;
import io.didomi.drawable.vendors.ctv.model.TVDataProcessingLegalType;
import io.didomi.drawable.view.mobile.DidomiToggle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: io.didomi.sdk.t8, reason: case insensitive filesystem */
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
@Metadata(d1 = {"\u0000Ð\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b.\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001BQ\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0002¢\u0006\u0004\b\u001a\u0010\u0019J\u0015\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0002¢\u0006\u0004\b\u001b\u0010\u0019J\u0015\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0002¢\u0006\u0004\b\u001c\u0010\u0019J\u0019\u0010 \u001a\u00020\u001f*\b\u0012\u0004\u0012\u00020\u001e0\u001dH\u0002¢\u0006\u0004\b \u0010!J\u001f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016*\b\u0012\u0004\u0012\u00020\"0\u001dH\u0002¢\u0006\u0004\b#\u0010$J\u0015\u0010(\u001a\u00020'2\u0006\u0010&\u001a\u00020%¢\u0006\u0004\b(\u0010)J\r\u0010+\u001a\u00020*¢\u0006\u0004\b+\u0010,J\u0015\u0010 \u001a\u00020*2\u0006\u0010.\u001a\u00020-¢\u0006\u0004\b \u0010/J\u0015\u00100\u001a\u00020*2\u0006\u0010.\u001a\u00020-¢\u0006\u0004\b0\u0010/J\u0015\u00101\u001a\u00020*2\u0006\u0010.\u001a\u00020-¢\u0006\u0004\b1\u0010/J\u0015\u00102\u001a\u00020-2\u0006\u0010&\u001a\u00020%¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u0004\u0018\u00010\u001f¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u0004\u0018\u00010\u001f¢\u0006\u0004\b6\u00105J\u000f\u00107\u001a\u0004\u0018\u00010\u001f¢\u0006\u0004\b7\u00105J\u000f\u00108\u001a\u0004\u0018\u00010\u001f¢\u0006\u0004\b8\u00105J\u001b\u0010#\u001a\b\u0012\u0004\u0012\u00020;0\u00162\u0006\u0010:\u001a\u000209¢\u0006\u0004\b#\u0010<J\u0017\u00100\u001a\u00020=2\u0006\u0010:\u001a\u000209H\u0000¢\u0006\u0004\b0\u0010>J\u001d\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\u0006\u0010:\u001a\u000209H\u0000¢\u0006\u0004\b \u0010<J\r\u0010?\u001a\u00020=¢\u0006\u0004\b?\u0010@J\u0017\u00100\u001a\u0004\u0018\u00010C2\u0006\u0010B\u001a\u00020A¢\u0006\u0004\b0\u0010DJ\u0017\u0010 \u001a\u0004\u0018\u00010C2\u0006\u0010B\u001a\u00020A¢\u0006\u0004\b \u0010DJ\u0017\u0010#\u001a\u0004\u0018\u00010C2\u0006\u0010B\u001a\u00020A¢\u0006\u0004\b#\u0010DJ\r\u0010E\u001a\u00020*¢\u0006\u0004\bE\u0010,J\u0017\u0010F\u001a\u00020-2\u0006\u0010&\u001a\u00020%H\u0000¢\u0006\u0004\bF\u00103J\u0017\u0010G\u001a\u00020-2\u0006\u0010&\u001a\u00020%H\u0000¢\u0006\u0004\bG\u00103J\u0015\u00100\u001a\u00020*2\u0006\u0010H\u001a\u00020=¢\u0006\u0004\b0\u0010IR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010KR\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bL\u0010MR\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010OR\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010QR\u0014\u0010\u0013\u001a\u00020\u00128\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010SR\"\u0010Z\u001a\u00020A8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010U\u001a\u0004\bV\u0010W\"\u0004\bX\u0010YR\"\u0010]\u001a\u00020A8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b[\u0010U\u001a\u0004\b\\\u0010W\"\u0004\b1\u0010YR\u0018\u0010a\u001a\u0004\u0018\u00010^8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010`R\u001b\u0010f\u001a\u00020-8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\bb\u0010c\u001a\u0004\bd\u0010eR\u0014\u0010h\u001a\u00020=8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bg\u0010@R\u0011\u0010j\u001a\u00020=8F¢\u0006\u0006\u001a\u0004\bi\u0010@R\u0011\u0010l\u001a\u00020=8F¢\u0006\u0006\u001a\u0004\bk\u0010@R\u0011\u0010n\u001a\u00020=8F¢\u0006\u0006\u001a\u0004\bm\u0010@R\u0011\u0010p\u001a\u00020=8F¢\u0006\u0006\u001a\u0004\bo\u0010@R\u0011\u0010r\u001a\u00020=8F¢\u0006\u0006\u001a\u0004\bq\u0010@R\u0011\u0010t\u001a\u00020=8F¢\u0006\u0006\u001a\u0004\bs\u0010@R\u0011\u0010v\u001a\u00020=8F¢\u0006\u0006\u001a\u0004\bu\u0010@R\u0011\u0010x\u001a\u00020=8F¢\u0006\u0006\u001a\u0004\bw\u0010@R\u0011\u0010z\u001a\u00020=8F¢\u0006\u0006\u001a\u0004\by\u0010@R\u0011\u0010|\u001a\u00020=8F¢\u0006\u0006\u001a\u0004\b{\u0010@R\u0011\u0010~\u001a\u00020=8F¢\u0006\u0006\u001a\u0004\b}\u0010@R\u0012\u0010\u0080\u0001\u001a\u00020=8F¢\u0006\u0006\u001a\u0004\b\u007f\u0010@R\u0013\u0010\u0082\u0001\u001a\u00020=8F¢\u0006\u0007\u001a\u0005\b\u0081\u0001\u0010@R\u0013\u0010\u0084\u0001\u001a\u00020=8F¢\u0006\u0007\u001a\u0005\b\u0083\u0001\u0010@R\u0013\u0010\u0086\u0001\u001a\u00020=8F¢\u0006\u0007\u001a\u0005\b\u0085\u0001\u0010@R\u0013\u0010\u0088\u0001\u001a\u00020=8F¢\u0006\u0007\u001a\u0005\b\u0087\u0001\u0010@R\u0013\u0010\u008a\u0001\u001a\u00020=8F¢\u0006\u0007\u001a\u0005\b\u0089\u0001\u0010@R\u0013\u0010\u008c\u0001\u001a\u00020=8F¢\u0006\u0007\u001a\u0005\b\u008b\u0001\u0010@R\u001b\u0010\u0090\u0001\u001a\n\u0012\u0005\u0012\u00030\u008e\u00010\u008d\u00018F¢\u0006\u0007\u001a\u0005\b\u008f\u0001\u0010\u0019R\u0015\u0010\u0094\u0001\u001a\u00030\u0091\u00018F¢\u0006\b\u001a\u0006\b\u0092\u0001\u0010\u0093\u0001R\u0019\u0010\u0096\u0001\u001a\b\u0012\u0004\u0012\u00020'0\u00168F¢\u0006\u0007\u001a\u0005\b\u0095\u0001\u0010\u0019R\u0015\u0010\u0098\u0001\u001a\u0004\u0018\u00010=8F¢\u0006\u0007\u001a\u0005\b\u0097\u0001\u0010@R\u0013\u0010\u009a\u0001\u001a\u00020-8F¢\u0006\u0007\u001a\u0005\b\u0099\u0001\u0010eR\u001b\u0010\u009d\u0001\u001a\n\u0012\u0005\u0012\u00030\u009b\u00010\u008d\u00018F¢\u0006\u0007\u001a\u0005\b\u009c\u0001\u0010\u0019R\u0013\u0010\u009f\u0001\u001a\u00020=8F¢\u0006\u0007\u001a\u0005\b\u009e\u0001\u0010@R\u0013\u0010¡\u0001\u001a\u00020=8F¢\u0006\u0007\u001a\u0005\b \u0001\u0010@R\u0016\u0010£\u0001\u001a\u00020=8@X\u0080\u0004¢\u0006\u0007\u001a\u0005\b¢\u0001\u0010@R\u0015\u0010§\u0001\u001a\u00030¤\u00018F¢\u0006\b\u001a\u0006\b¥\u0001\u0010¦\u0001¨\u0006¨\u0001"}, d2 = {"Lio/didomi/sdk/t8;", "Lio/didomi/sdk/h9;", "Lio/didomi/sdk/apiEvents/b;", "apiEventsRepository", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/M2;", "eventsRepository", "Lio/didomi/sdk/v3;", "languagesHelper", "Lio/didomi/sdk/z8;", "themeProvider", "Lio/didomi/sdk/G8;", "userChoicesInfoProvider", "Lio/didomi/sdk/V8;", "vendorRepository", "Lio/didomi/sdk/C3;", "logoProvider", "Lio/didomi/sdk/s5;", "resourcesHelper", "<init>", "(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/z8;Lio/didomi/sdk/G8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;Lio/didomi/sdk/s5;)V", "", "Lio/didomi/sdk/A7$a;", "m0", "()Ljava/util/List;", "o0", "l0", "n0", "", "Lio/didomi/sdk/r0;", "Landroid/text/SpannedString;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/util/Collection;)Landroid/text/SpannedString;", "Lio/didomi/sdk/o0;", "a", "(Ljava/util/Collection;)Ljava/util/List;", "Lio/didomi/sdk/models/InternalVendor;", "vendor", "Lio/didomi/sdk/g8$g;", "M", "(Lio/didomi/sdk/models/InternalVendor;)Lio/didomi/sdk/g8$g;", "", "T0", "()V", "", "isChecked", "(Z)V", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "N", "(Lio/didomi/sdk/models/InternalVendor;)Z", "f0", "()Landroid/text/SpannedString;", "e0", "h0", "k0", "Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;", "legalType", "Lio/didomi/sdk/A7;", "(Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;)Ljava/util/List;", "", "(Lio/didomi/sdk/vendors/ctv/model/TVDataProcessingLegalType;)Ljava/lang/String;", "H0", "()Ljava/lang/String;", "", "size", "Landroid/graphics/Bitmap;", "(I)Landroid/graphics/Bitmap;", "U0", "O", "P", "id", "(Ljava/lang/String;)V", "u", "Lio/didomi/sdk/H;", "v", "Lio/didomi/sdk/v3;", "w", "Lio/didomi/sdk/G8;", "x", "Lio/didomi/sdk/V8;", "y", "Lio/didomi/sdk/s5;", "z", "I", "i0", "()I", "e", "(I)V", "focusedPosition", "A", "g0", "detailFocusedPosition", "Lio/didomi/sdk/models/DataCategory;", "B", "Lio/didomi/sdk/models/DataCategory;", "selectedDataCategory", "C", "Lkotlin/Lazy;", "y0", "()Z", "shouldHideReadMoreButtonFromVendorData", "q0", "quickActionTextLabel", "S0", "vendorsTitleLabel", "r0", "quickActionTitleLabel", "x0", "settingsTitleLabel", "D0", "vendorConsentOnLabel", "C0", "vendorConsentOffLabel", "N0", "vendorOnLabel", "M0", "vendorOffLabel", "R0", "vendorsSectionTitleLabel", "F0", "vendorIabTitleLabel", "K0", "vendorLegIntOnLabel", "J0", "vendorLegIntOffLabel", "I0", "vendorLegIntLabel", "Q0", "vendorReadMoreLabel", "B0", "vendorConsentLabel", "P0", "vendorPrivacyPolicyTitle", "E0", "vendorIabDescriptionText", "O0", "vendorPrivacyDescriptionText", "G0", "vendorLegIntClaimDescriptionText", "", "Lio/didomi/sdk/g8;", "L0", "vendorList", "Lio/didomi/sdk/g8$a;", "A0", "()Lio/didomi/sdk/g8$a;", "vendorBulk", "z0", "tvVendorItemList", "w0", "selectedVendorName", "v0", "selectedVendorHasIABDisclaimer", "Lio/didomi/sdk/V7;", "u0", "selectedVendorDetail", "t0", "selectedDataCategoryName", "s0", "selectedDataCategoryDescription", "j0", "itemDescriptionLabel", "Ljava/util/Locale;", "p0", "()Ljava/util/Locale;", "locale", "android_release"}, mv = {1, 8, 0})
public final class C1905t8 extends h9 {
    private int A;
    private DataCategory B;
    private final Lazy C;
    private final H u;
    private final C1920v3 v;
    private final G8 w;
    private final V8 x;
    private final C1892s5 y;
    private int z;

    /* JADX INFO: renamed from: io.didomi.sdk.t8$a */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[TVDataProcessingLegalType.values().length];
            try {
                iArr[TVDataProcessingLegalType.CONSENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TVDataProcessingLegalType.LEGINT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TVDataProcessingLegalType.ADDITIONAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TVDataProcessingLegalType.REQUIRED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.t8$b */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u00022\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "a", "kotlin.jvm.PlatformType", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "compare", "(Ljava/lang/Object;Ljava/lang/Object;)I", "kotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2"}, mv = {1, 8, 0}, xi = 48)
    public static final class b<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return ComparisonsKt__ComparisonsKt.compareValues(((InterfaceC1847o0) t).getName(), ((InterfaceC1847o0) t2).getName());
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.t8$c */
    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lio/didomi/sdk/r0;", "it", "", "a", "(Lio/didomi/sdk/r0;)Ljava/lang/CharSequence;"}, mv = {1, 8, 0})
    static final class c extends Lambda implements Function1<DataProcessingDisplay, CharSequence> {
        final /* synthetic */ String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str) {
            super(1);
            this.b = str;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final CharSequence invoke(DataProcessingDisplay it) {
            Intrinsics.checkNotNullParameter(it, "it");
            if (it.getRetentionTime() == null) {
                return new SpannableString("• " + it.getLabel());
            }
            Integer retentionTime = it.getRetentionTime();
            SpannableString spannableString = new SpannableString("• " + it.getLabel() + '\t' + this.b + ' ' + ((retentionTime != null && retentionTime.intValue() == 1) ? C1920v3.a(C1905t8.this.v, "day_singular", null, null, null, 14, null) : C1920v3.a(C1905t8.this.v, "day_plural", null, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("{nb}", String.valueOf(it.getRetentionTime()))), null, 10, null)));
            C1905t8 c1905t8 = C1905t8.this;
            int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) spannableString, "\t", 0, false, 6, (Object) null);
            spannableString.setSpan(new RelativeSizeSpan(0.8f), iIndexOf$default, spannableString.length(), 33);
            spannableString.setSpan(new ForegroundColorSpan(c1905t8.y.a(R.color.didomi_tv_common_text_with_alpha)), iIndexOf$default, spannableString.length(), 33);
            return spannableString;
        }
    }

    /* JADX INFO: renamed from: io.didomi.sdk.t8$d */
    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()Ljava/lang/Boolean;"}, mv = {1, 8, 0})
    static final class d extends Lambda implements Function0<Boolean> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke() {
            return Boolean.valueOf(Intrinsics.areEqual(C1816l.d(C1905t8.this.u.b()), "2.2"));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1905t8(io.didomi.drawable.apiEvents.b apiEventsRepository, H configurationRepository, M2 eventsRepository, C1920v3 languagesHelper, C1965z8 themeProvider, G8 userChoicesInfoProvider, V8 vendorRepository, C3 logoProvider, C1892s5 resourcesHelper) {
        super(apiEventsRepository, configurationRepository, eventsRepository, languagesHelper, themeProvider, userChoicesInfoProvider, vendorRepository, logoProvider);
        Intrinsics.checkNotNullParameter(apiEventsRepository, "apiEventsRepository");
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(eventsRepository, "eventsRepository");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        Intrinsics.checkNotNullParameter(themeProvider, "themeProvider");
        Intrinsics.checkNotNullParameter(userChoicesInfoProvider, "userChoicesInfoProvider");
        Intrinsics.checkNotNullParameter(vendorRepository, "vendorRepository");
        Intrinsics.checkNotNullParameter(logoProvider, "logoProvider");
        Intrinsics.checkNotNullParameter(resourcesHelper, "resourcesHelper");
        this.u = configurationRepository;
        this.v = languagesHelper;
        this.w = userChoicesInfoProvider;
        this.x = vendorRepository;
        this.y = resourcesHelper;
        this.C = LazyKt__LazyJVMKt.lazy(new d());
    }

    private final List<A7.Description> a(Collection<? extends InterfaceC1847o0> collection) {
        List<InterfaceC1847o0> listSortedWith = CollectionsKt___CollectionsKt.sortedWith(collection, new b());
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listSortedWith, 10));
        for (InterfaceC1847o0 interfaceC1847o0 : listSortedWith) {
            arrayList.add(new A7.Description(interfaceC1847o0.getName(), interfaceC1847o0.getDescriptionLegal(), 0, 4, null));
        }
        return arrayList;
    }

    private final SpannedString b(Collection<DataProcessingDisplay> collection) {
        return C1926w.a(collection, "\n", null, null, 0, null, new c(C1920v3.a(this.v, "retention_time", null, null, null, 14, null)), 30, null);
    }

    private final List<A7.Description> l0() {
        List<A7.Description> listA;
        InternalVendor value = J().getValue();
        return (value == null || (listA = a(this.x.c(value))) == null) ? CollectionsKt__CollectionsKt.emptyList() : listA;
    }

    private final List<A7.Description> m0() {
        List<A7.Description> listA;
        InternalVendor value = J().getValue();
        return (value == null || (listA = a(h(value))) == null) ? CollectionsKt__CollectionsKt.emptyList() : listA;
    }

    private final List<A7.Description> n0() {
        List<A7.Description> listA;
        InternalVendor value = J().getValue();
        return (value == null || (listA = a(this.x.b(value))) == null) ? CollectionsKt__CollectionsKt.emptyList() : listA;
    }

    private final List<A7.Description> o0() {
        List<A7.Description> listA;
        InternalVendor value = J().getValue();
        return (value == null || (listA = a(n(value))) == null) ? CollectionsKt__CollectionsKt.emptyList() : listA;
    }

    private final String q0() {
        return C1920v3.a(this.v, this.u.b().f().b().c(), "bulk_action_on_vendors", (W5) null, 4, (Object) null);
    }

    public final AbstractC1775g8.Bulk A0() {
        boolean zB = b();
        return new AbstractC1775g8.Bulk(q0(), zB ? N0() : M0(), zB, 0, 8, null);
    }

    public final String B0() {
        return C1920v3.a(this.v, "consent", (W5) null, (Map) null, 6, (Object) null);
    }

    public final String C0() {
        return C1920v3.a(this.v, "consent_off", (W5) null, (Map) null, 6, (Object) null);
    }

    public final String D0() {
        return C1920v3.a(this.v, "consent_on", (W5) null, (Map) null, 6, (Object) null);
    }

    public final String E0() {
        return C1920v3.a(this.v, "external_link_description", (W5) null, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("{url}", B())), 2, (Object) null);
    }

    public final String F0() {
        return C1920v3.a(this.v, "vendor_iab_transparency_button_title", (W5) null, (Map) null, 6, (Object) null);
    }

    public final String G0() {
        String strA;
        InternalVendor value = J().getValue();
        if (value != null) {
            String strM = m(value);
            strA = (strM == null || StringsKt__StringsJVMKt.isBlank(strM)) ? "" : C1920v3.a(this.v, "external_link_description", (W5) null, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("{url}", strM)), 2, (Object) null);
        } else {
            strA = null;
        }
        return strA == null ? "" : strA;
    }

    public final String H0() {
        return Y();
    }

    public final String I0() {
        return C1920v3.a(this.v, "object_to_legitimate_interest", (W5) null, (Map) null, 6, (Object) null);
    }

    public final String J0() {
        return C1920v3.a(this.v, "object_to_legitimate_interest_status_off", (W5) null, (Map) null, 6, (Object) null);
    }

    public final String K0() {
        return C1920v3.a(this.v, "object_to_legitimate_interest_status_on", (W5) null, (Map) null, 6, (Object) null);
    }

    public final List<AbstractC1775g8> L0() {
        int size;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AbstractC1775g8.Header(0, 1, null));
        arrayList.add(new AbstractC1775g8.Title(S0(), 0, 2, null));
        Spanned spannedX = x();
        String string = spannedX != null ? spannedX.toString() : null;
        if (string == null) {
            string = "";
        }
        if (!StringsKt__StringsJVMKt.isBlank(string)) {
            arrayList.add(new AbstractC1775g8.Description(string, 0, 2, null));
        }
        if (P()) {
            arrayList.add(new AbstractC1775g8.Section(r0(), 0, 2, null));
            size = arrayList.size();
            arrayList.add(A0());
        } else {
            size = z0().isEmpty() ? 0 : arrayList.size() + 1;
        }
        arrayList.add(new AbstractC1775g8.Section(R0(), 0, 2, null));
        arrayList.addAll(z0());
        arrayList.add(new AbstractC1775g8.Footer(0, 1, null));
        if (this.z == 0 && size >= 0) {
            this.z = size;
        }
        return arrayList;
    }

    public final AbstractC1775g8.Vendor M(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        boolean zI = I(vendor);
        boolean z = zI && N(vendor);
        return new AbstractC1775g8.Vendor(vendor, zI, vendor.getName(), z ? D0() : zI ? C0() : "", z, z(vendor), 0, 64, null);
    }

    public final String M0() {
        return C1920v3.a(this.v, "purposes_off", (W5) null, (Map) null, 6, (Object) null);
    }

    public final boolean N(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        return (this.w.g().contains(vendor) || !G(vendor)) && !(this.w.e().contains(vendor) && H(vendor));
    }

    public final String N0() {
        return C1920v3.a(this.v, "purposes_on", (W5) null, (Map) null, 6, (Object) null);
    }

    public final boolean O(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        return !this.x.c(vendor).isEmpty();
    }

    public final String O0() {
        String strA;
        InternalVendor value = J().getValue();
        if (value != null) {
            String strR = r(value);
            strA = (strR == null || StringsKt__StringsJVMKt.isBlank(strR)) ? "" : C1920v3.a(this.v, "external_link_description", (W5) null, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("{url}", strR)), 2, (Object) null);
        } else {
            strA = null;
        }
        return strA == null ? "" : strA;
    }

    public final boolean P(InternalVendor vendor) {
        Intrinsics.checkNotNullParameter(vendor, "vendor");
        return !vendor.getEssentialPurposeIds().isEmpty();
    }

    public final String P0() {
        return C1920v3.a(this.v, "vendor_privacy_policy_screen_title", W5.UPPER_CASE, (Map) null, 4, (Object) null);
    }

    public final String Q0() {
        return C1920v3.a(this.v, "read_more", (W5) null, (Map) null, 6, (Object) null);
    }

    public final String R0() {
        return C1920v3.a(this.v, "our_partners_title", W5.UPPER_CASE, (Map) null, 4, (Object) null);
    }

    public final String S0() {
        return C1920v3.a(this.v, this.u.b().f().b().e(), "our_partners_title", (W5) null, 4, (Object) null);
    }

    public final void T0() {
        a(new PreferencesClickViewVendorsEvent());
    }

    public final void U0() {
        J().setValue(null);
    }

    public final Bitmap a(int i) {
        return C1732c5.a.a(B(), i);
    }

    public final List<A7> a(TVDataProcessingLegalType legalType) {
        Intrinsics.checkNotNullParameter(legalType, "legalType");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new A7.Header(0, 1, null));
        InternalVendor value = J().getValue();
        String name = value != null ? value.getName() : null;
        if (name == null) {
            name = "";
        }
        arrayList.add(new A7.Title(name, c(legalType), v0(), 0, 8, null));
        arrayList.addAll(b(legalType));
        arrayList.add(new A7.Footer(0, 1, null));
        return CollectionsKt___CollectionsKt.toList(arrayList);
    }

    public final Bitmap b(int i) {
        String strM;
        InternalVendor value = J().getValue();
        if (value == null || (strM = m(value)) == null) {
            return null;
        }
        return C1732c5.a.a(strM, i);
    }

    public final List<A7.Description> b(TVDataProcessingLegalType legalType) {
        Intrinsics.checkNotNullParameter(legalType, "legalType");
        int i = a.a[legalType.ordinal()];
        if (i == 1) {
            return m0();
        }
        if (i == 2) {
            return o0();
        }
        if (i == 3) {
            return l0();
        }
        if (i == 4) {
            return n0();
        }
        throw new NoWhenBranchMatchedException();
    }

    public final void b(boolean z) {
        DidomiToggle.b bVar = z ? DidomiToggle.b.ENABLED : DidomiToggle.b.DISABLED;
        d(bVar);
        a(bVar);
    }

    public final Bitmap c(int i) {
        String strR;
        InternalVendor value = J().getValue();
        if (value == null || (strR = r(value)) == null) {
            return null;
        }
        return C1732c5.a.a(strR, i);
    }

    public final String c(TVDataProcessingLegalType legalType) {
        Intrinsics.checkNotNullParameter(legalType, "legalType");
        int i = a.a[legalType.ordinal()];
        if (i == 1) {
            String upperCase = r().toUpperCase(this.v.g());
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            return upperCase;
        }
        if (i == 2) {
            String upperCase2 = D().toUpperCase(this.v.g());
            Intrinsics.checkNotNullExpressionValue(upperCase2, "toUpperCase(...)");
            return upperCase2;
        }
        if (i == 3) {
            String upperCase3 = i().toUpperCase(this.v.g());
            Intrinsics.checkNotNullExpressionValue(upperCase3, "toUpperCase(...)");
            return upperCase3;
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        String upperCase4 = v().toUpperCase(this.v.g());
        Intrinsics.checkNotNullExpressionValue(upperCase4, "toUpperCase(...)");
        return upperCase4;
    }

    public final void c(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        this.B = this.x.a(id);
    }

    public final void c(boolean z) {
        if (z) {
            b(DidomiToggle.b.ENABLED);
        } else {
            b(DidomiToggle.b.DISABLED);
        }
        c0();
    }

    public final void d(int i) {
        this.A = i;
    }

    public final void d(boolean z) {
        if (z) {
            c(DidomiToggle.b.DISABLED);
        } else {
            c(DidomiToggle.b.ENABLED);
        }
        c0();
    }

    public final void e(int i) {
        this.z = i;
    }

    public final SpannedString e0() {
        Pair<String, List<DataProcessingDisplay>> pairF;
        List<DataProcessingDisplay> listG;
        InternalVendor value = J().getValue();
        if (value == null || (pairF = f(value)) == null || (listG = pairF.g()) == null) {
            return null;
        }
        return b(listG);
    }

    public final SpannedString f0() {
        Pair<String, List<DataProcessingDisplay>> pairG;
        List<DataProcessingDisplay> listG;
        InternalVendor value = J().getValue();
        if (value == null || (pairG = g(value)) == null || (listG = pairG.g()) == null) {
            return null;
        }
        return b(listG);
    }

    public final int g0() {
        return this.A;
    }

    public final SpannedString h0() {
        Pair<String, List<DataProcessingDisplay>> pairL;
        List<DataProcessingDisplay> listG;
        InternalVendor value = J().getValue();
        if (value == null || (pairL = l(value)) == null || (listG = pairL.g()) == null) {
            return null;
        }
        return b(listG);
    }

    public final int i0() {
        return this.z;
    }

    public final String j0() {
        return C1920v3.a(this.v, "purpose_legal_description", W5.UPPER_CASE, (Map) null, 4, (Object) null);
    }

    public final SpannedString k0() {
        Pair<String, List<DataProcessingDisplay>> pairO;
        List<DataProcessingDisplay> listG;
        InternalVendor value = J().getValue();
        if (value == null || (pairO = o(value)) == null || (listG = pairO.g()) == null) {
            return null;
        }
        return b(listG);
    }

    public final Locale p0() {
        return this.v.g();
    }

    public final String r0() {
        return C1920v3.a(this.v, "bulk_action_section_title", W5.UPPER_CASE, (Map) null, 4, (Object) null);
    }

    public final String s0() {
        String description;
        DataCategory dataCategory = this.B;
        return (dataCategory == null || (description = dataCategory.getDescription()) == null) ? "" : description;
    }

    public final String t0() {
        String name;
        DataCategory dataCategory = this.B;
        return (dataCategory == null || (name = dataCategory.getName()) == null) ? "" : name;
    }

    public final List<V7> u0() {
        InternalVendor value = J().getValue();
        if (value == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new V7.Disclaimer(value.getName(), V5.i(p(value)).toString(), z(value), 0, 8, null));
        String strR = r(value);
        if (strR != null && !StringsKt__StringsJVMKt.isBlank(strR)) {
            arrayList.add(new V7.ArrowLink(x(value), V7.ArrowLink.EnumC0475a.PrivacyPolicy, 0, 4, null));
            int size = this.A;
            if (size <= 0) {
                size = arrayList.size() - 1;
            }
            this.A = size;
        }
        String strM = m(value);
        if (strM != null && !StringsKt__StringsJVMKt.isBlank(strM)) {
            arrayList.add(new V7.ArrowLink(H0(), V7.ArrowLink.EnumC0475a.LegIntClaim, 0, 4, null));
            int size2 = this.A;
            if (size2 <= 0) {
                size2 = arrayList.size() - 1;
            }
            this.A = size2;
        }
        if (z(value)) {
            arrayList.add(new V7.ArrowLink(F0(), V7.ArrowLink.EnumC0475a.Iab, 0, 4, null));
            int size3 = this.A;
            if (size3 <= 0) {
                size3 = arrayList.size() - 1;
            }
            this.A = size3;
        }
        Set<DataCategory> setA = this.x.a(value);
        if (!setA.isEmpty()) {
            arrayList.add(new V7.SectionTitle(t(), 0, 2, null));
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(setA, 10));
            for (DataCategory dataCategory : setA) {
                arrayList2.add(Boolean.valueOf(arrayList.add(new V7.DataCategory(dataCategory.getName(), dataCategory.getId(), 0, 4, null))));
            }
        }
        arrayList.add(new V7.SectionTitle(x0(), 0, 2, null));
        if (G(value)) {
            arrayList.add(new V7.Consent(L().getValue() == DidomiToggle.b.ENABLED, r(), D0(), C0(), 0, 16, null));
            int size4 = this.A;
            if (size4 <= 0) {
                size4 = arrayList.size() - 1;
            }
            this.A = size4;
        }
        if (H(value)) {
            arrayList.add(new V7.LegitimateInterest(O().getValue() != DidomiToggle.b.ENABLED, D(), K0(), J0(), 0, 16, null));
            int size5 = this.A;
            if (size5 <= 0) {
                size5 = arrayList.size() - 1;
            }
            this.A = size5;
        }
        if (O(value)) {
            arrayList.add(new V7.ArrowLink(i(), V7.ArrowLink.EnumC0475a.AdditionalDataProcessing, 0, 4, null));
        }
        if (P(value)) {
            arrayList.add(new V7.ArrowLink(v(), V7.ArrowLink.EnumC0475a.EssentialPurpose, 0, 4, null));
        }
        if (C1870q3.h(value)) {
            String strI = i(value);
            if (strI == null) {
                strI = "";
            }
            arrayList.add(new V7.Cookie(strI, 0, 2, null));
        }
        arrayList.add(new V7.Footer(0, 1, null));
        return arrayList;
    }

    public final boolean v0() {
        InternalVendor value = J().getValue();
        return value != null && z(value);
    }

    public final String w0() {
        InternalVendor value = J().getValue();
        if (value != null) {
            return value.getName();
        }
        return null;
    }

    public final String x0() {
        return C1920v3.a(this.v, "settings", W5.UPPER_CASE, (Map) null, 4, (Object) null);
    }

    public final boolean y0() {
        return ((Boolean) this.C.getValue()).booleanValue();
    }

    public final List<AbstractC1775g8.Vendor> z0() {
        List<InternalVendor> listJ = j();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listJ, 10));
        Iterator<T> it = listJ.iterator();
        while (it.hasNext()) {
            arrayList.add(M((InternalVendor) it.next()));
        }
        return arrayList;
    }
}
