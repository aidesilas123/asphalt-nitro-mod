package io.didomi.drawable;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.google.android.gms.ads.RequestConfiguration;
import com.json.b4;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.AbstractC1943x6;
import io.didomi.drawable.J6;
import io.didomi.drawable.apiEvents.b;
import io.didomi.drawable.events.PreferencesClickAgreeToAllPurposesEvent;
import io.didomi.drawable.events.PreferencesClickDisagreeToAllPurposesEvent;
import io.didomi.drawable.events.PreferencesClickViewPurposesEvent;
import io.didomi.drawable.exceptions.DidomiNotReadyException;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.purpose.common.model.PurposeCategory;
import io.didomi.drawable.view.mobile.DidomiToggle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: io.didomi.sdk.l7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000¶\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010!\n\u0000\n\u0002\u0010 \n\u0002\b\n\n\u0002\u0010\b\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\b\u0007\u0018\u0000 \u008d\u00012\u00020\u0001:\u00017Bi\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001f\u0010 J\u001f\u0010$\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020!2\u0006\u0010#\u001a\u00020\u001cH\u0002¢\u0006\u0004\b$\u0010%J\u001f\u0010$\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020&2\u0006\u0010#\u001a\u00020\u001cH\u0002¢\u0006\u0004\b$\u0010(J\u000f\u0010*\u001a\u00020)H\u0002¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020)H\u0002¢\u0006\u0004\b,\u0010+J\u0015\u0010.\u001a\u00020-2\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b.\u0010/J\u0015\u00101\u001a\u0002002\u0006\u0010'\u001a\u00020&¢\u0006\u0004\b1\u00102J\u001d\u00103\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020&2\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b3\u0010(J\u001d\u00104\u001a\u00020\u001e2\u0006\u0010'\u001a\u00020&2\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b4\u0010(J\u0015\u00105\u001a\u00020)2\u0006\u0010#\u001a\u00020\u001c¢\u0006\u0004\b5\u00106J\u001d\u00107\u001a\u00020)2\u0006\u0010'\u001a\u00020&2\u0006\u0010#\u001a\u00020\u001c¢\u0006\u0004\b7\u00108J\u0015\u00109\u001a\u00020)2\u0006\u0010#\u001a\u00020\u001c¢\u0006\u0004\b9\u00106J\u0015\u0010:\u001a\u00020)2\u0006\u0010#\u001a\u00020\u001c¢\u0006\u0004\b:\u00106J\r\u0010;\u001a\u00020)¢\u0006\u0004\b;\u0010+J+\u00107\u001a\u00020)2\f\u0010=\u001a\b\u0012\u0004\u0012\u00020&0<2\f\u0010?\u001a\b\u0012\u0004\u0012\u00020!0>H\u0014¢\u0006\u0004\b7\u0010@J\u0015\u0010A\u001a\b\u0012\u0004\u0012\u00020&0>H\u0016¢\u0006\u0004\bA\u0010BJ\r\u0010C\u001a\u00020\u001c¢\u0006\u0004\bC\u0010DJ\r\u0010E\u001a\u00020\u001c¢\u0006\u0004\bE\u0010DJ\u000f\u0010F\u001a\u00020)H\u0010¢\u0006\u0004\bF\u0010+J\u0017\u0010G\u001a\u00020\u001c2\u0006\u0010'\u001a\u00020&H\u0000¢\u0006\u0004\bG\u0010HR\"\u0010O\u001a\u00020I8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010M\"\u0004\b$\u0010NR\"\u0010R\u001a\u00020I8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bP\u0010K\u001a\u0004\bQ\u0010M\"\u0004\b3\u0010NR\"\u0010U\u001a\u00020I8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bS\u0010K\u001a\u0004\bT\u0010M\"\u0004\b4\u0010NR\u0014\u0010W\u001a\u00020\u001c8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bV\u0010DR\u0011\u0010Z\u001a\u00020\u001e8F¢\u0006\u0006\u001a\u0004\bX\u0010YR\u0014\u0010\\\u001a\u00020\u001e8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b[\u0010YR\u0014\u0010^\u001a\u00020\u001e8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b]\u0010YR\u0014\u0010`\u001a\u00020\u001e8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b_\u0010YR\u0014\u0010b\u001a\u00020\u001e8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\ba\u0010YR\u0014\u0010d\u001a\u00020\u001e8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bc\u0010YR\u0014\u0010f\u001a\u00020\u001e8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\be\u0010YR\u0014\u0010h\u001a\u00020\u001e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bg\u0010YR\u0014\u0010j\u001a\u00020\u001e8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bi\u0010YR\u0014\u0010l\u001a\u00020\u001e8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bk\u0010YR\u0014\u0010n\u001a\u00020\u001e8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bm\u0010YR\u0014\u0010p\u001a\u00020\u001e8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bo\u0010YR\u0014\u0010r\u001a\u00020\u001e8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bq\u0010YR\u0014\u0010t\u001a\u00020\u001e8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bs\u0010YR\u0014\u0010v\u001a\u00020\u001c8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bu\u0010DR\u001a\u0010y\u001a\b\u0012\u0004\u0012\u00020w0>8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\bx\u0010BR\u0014\u0010{\u001a\u00020\u001e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bz\u0010YR\u0017\u0010~\u001a\b\u0012\u0004\u0012\u00020|0<8F¢\u0006\u0006\u001a\u0004\b}\u0010BR\u0018\u0010\u0080\u0001\u001a\b\u0012\u0004\u0012\u00020|0<8F¢\u0006\u0006\u001a\u0004\b\u007f\u0010BR\u0015\u0010\u0084\u0001\u001a\u00030\u0081\u00018F¢\u0006\b\u001a\u0006\b\u0082\u0001\u0010\u0083\u0001R\u0015\u0010\u0086\u0001\u001a\u00030\u0081\u00018F¢\u0006\b\u001a\u0006\b\u0085\u0001\u0010\u0083\u0001R\u0019\u0010\u0088\u0001\u001a\b\u0012\u0004\u0012\u00020-0>8F¢\u0006\u0007\u001a\u0005\b\u0087\u0001\u0010BR\u0019\u0010\u008a\u0001\u001a\b\u0012\u0004\u0012\u0002000>8F¢\u0006\u0007\u001a\u0005\b\u0089\u0001\u0010BR\u0019\u0010\u008c\u0001\u001a\b\u0012\u0004\u0012\u0002000>8F¢\u0006\u0007\u001a\u0005\b\u008b\u0001\u0010B¨\u0006\u008e\u0001"}, d2 = {"Lio/didomi/sdk/l7;", "Lio/didomi/sdk/a5;", "Lio/didomi/sdk/apiEvents/b;", "apiEventsRepository", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/V;", "consentRepository", "Lio/didomi/sdk/Z;", "contextHelper", "Lio/didomi/sdk/M2;", "eventsRepository", "Lio/didomi/sdk/v3;", "languagesHelper", "Lio/didomi/sdk/G8;", "userChoicesInfoProvider", "Lio/didomi/sdk/P8;", "userStatusRepository", "Lio/didomi/sdk/D8;", "uiProvider", "Lio/didomi/sdk/V8;", "vendorRepository", "Lio/didomi/sdk/C3;", "logoProvider", "Lio/didomi/sdk/I3;", "navigationManager", "<init>", "(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/Z;Lio/didomi/sdk/M2;Lio/didomi/sdk/v3;Lio/didomi/sdk/G8;Lio/didomi/sdk/P8;Lio/didomi/sdk/D8;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;Lio/didomi/sdk/I3;)V", "", "checked", "", "h", "(Z)Ljava/lang/String;", "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "category", "isChecked", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;Z)Ljava/lang/String;", "Lio/didomi/sdk/models/InternalPurpose;", "purpose", "(Lio/didomi/sdk/models/InternalPurpose;Z)Ljava/lang/String;", "", "B1", "()V", "A1", "Lio/didomi/sdk/J6$d;", b4.p, "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)Lio/didomi/sdk/J6$d;", "Lio/didomi/sdk/J6$i;", "z", "(Lio/didomi/sdk/models/InternalPurpose;)Lio/didomi/sdk/J6$i;", "c", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "e", "(Z)V", "a", "(Lio/didomi/sdk/models/InternalPurpose;Z)V", InneractiveMediationDefs.GENDER_FEMALE, "g", "e2", "", Didomi.VIEW_PURPOSES, "", "categories", "(Ljava/util/List;Ljava/util/List;)V", "P0", "()Ljava/util/List;", "c2", "()Z", "d2", "z1", "y", "(Lio/didomi/sdk/models/InternalPurpose;)Z", "", "R", "I", "I1", "()I", "(I)V", "currentDataProcessingIndex", "S", "K1", "focusedPosition", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "L1", "focusedPositionForCategory", "b2", "selectedPurposeHasVendorsCountInfo", "J1", "()Ljava/lang/String;", "dataUsageInfoLabel", "Z1", "quickActionTitleLabel", "Y1", "quickActionTextLabel", "U1", "purposeOnLabel", "T1", "purposeOffLabel", "F1", "categoriesSectionTitleLabel", "X1", "purposesSectionTitleLabel", "Y", "essentialPurposeText", "W1", "purposeSettingsLabel", "V1", "purposeReadMoreLabel", "P1", "purposeLegIntLabel", "Q1", "purposeLegalDescriptionLabel", "C1", "additionalDataProcessingDescriptionLabel", "D1", "additionalDataProcessingSectionLabel", "a2", "selectedPurposeHasAdditionalInfo", "Lio/didomi/sdk/x6;", "E1", "additionalInfoList", "c0", "illustrationsHeaderLabel", "Lio/didomi/sdk/J6;", "R1", "purposeList", "S1", "purposeListForSelectedCategory", "Lio/didomi/sdk/J6$c;", "G1", "()Lio/didomi/sdk/J6$c;", "categoryBulk", "M1", "purposeBulk", "H1", "categoryItemList", "N1", "purposeItemList", "O1", "purposeItemListForSelectedCategory", "U", "android_release"}, mv = {1, 8, 0})
public final class C1824l7 extends C1712a5 {

    /* JADX INFO: renamed from: R, reason: from kotlin metadata */
    private int currentDataProcessingIndex;

    /* JADX INFO: renamed from: S, reason: from kotlin metadata */
    private int focusedPosition;

    /* JADX INFO: renamed from: T, reason: from kotlin metadata */
    private int focusedPositionForCategory;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1824l7(b apiEventsRepository, H configurationRepository, V consentRepository, Z contextHelper, M2 eventsRepository, C1920v3 languagesHelper, G8 userChoicesInfoProvider, P8 userStatusRepository, D8 uiProvider, V8 vendorRepository, C3 logoProvider, I3 navigationManager) {
        super(apiEventsRepository, configurationRepository, consentRepository, contextHelper, eventsRepository, languagesHelper, userChoicesInfoProvider, userStatusRepository, uiProvider, vendorRepository, logoProvider, navigationManager);
        Intrinsics.checkNotNullParameter(apiEventsRepository, "apiEventsRepository");
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(consentRepository, "consentRepository");
        Intrinsics.checkNotNullParameter(contextHelper, "contextHelper");
        Intrinsics.checkNotNullParameter(eventsRepository, "eventsRepository");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        Intrinsics.checkNotNullParameter(userChoicesInfoProvider, "userChoicesInfoProvider");
        Intrinsics.checkNotNullParameter(userStatusRepository, "userStatusRepository");
        Intrinsics.checkNotNullParameter(uiProvider, "uiProvider");
        Intrinsics.checkNotNullParameter(vendorRepository, "vendorRepository");
        Intrinsics.checkNotNullParameter(logoProvider, "logoProvider");
        Intrinsics.checkNotNullParameter(navigationManager, "navigationManager");
        this.currentDataProcessingIndex = -1;
    }

    private final void A1() {
        try {
            g();
            a(new PreferencesClickDisagreeToAllPurposesEvent());
        } catch (DidomiNotReadyException e2) {
            e2.printStackTrace();
        }
    }

    private final void B1() {
        try {
            l();
            a(new PreferencesClickAgreeToAllPurposesEvent());
        } catch (DidomiNotReadyException e2) {
            e2.printStackTrace();
        }
    }

    private final String b(InternalPurpose purpose, boolean isChecked) {
        return purpose.isEssential() ? Y() : isChecked ? C1920v3.a(d0(), "consent_on", (W5) null, (Map) null, 6, (Object) null) : C1920v3.a(d0(), "consent_off", (W5) null, (Map) null, 6, (Object) null);
    }

    private final String b(PurposeCategory category, boolean isChecked) {
        return k(category) ? Y() : isChecked ? C1920v3.a(d0(), "consent_on", (W5) null, (Map) null, 6, (Object) null) : C1920v3.a(d0(), "consent_off", (W5) null, (Map) null, 6, (Object) null);
    }

    private final boolean b2() {
        return U0() && (m1() || n1());
    }

    private final String h(boolean checked) {
        return checked ? C1920v3.a(d0(), "object_to_legitimate_interest_status_on", (W5) null, (Map) null, 6, (Object) null) : C1920v3.a(d0(), "object_to_legitimate_interest_status_off", (W5) null, (Map) null, 6, (Object) null);
    }

    public final String C1() {
        return C1920v3.a(d0(), "list_of_additional_data_processing_on_purposes", null, null, null, 14, null);
    }

    public final String D1() {
        return C1920v3.a(d0(), "additional_data_processing", W5.UPPER_CASE, null, null, 12, null);
    }

    public final List<AbstractC1943x6> E1() {
        String strN;
        String strM;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AbstractC1943x6.Header(0, 1, null));
        InternalPurpose purpose = u0().getValue();
        if (purpose != null) {
            Intrinsics.checkNotNullExpressionValue(purpose, "purpose");
            arrayList.add(new AbstractC1943x6.Title(k(purpose), 0, 2, null));
            String strI0 = i0();
            if (!(!StringsKt__StringsJVMKt.isBlank(strI0))) {
                strI0 = null;
            }
            if (strI0 != null) {
                arrayList.add(new AbstractC1943x6.Subtitle(Q1(), 0, 2, null));
                arrayList.add(new AbstractC1943x6.AdditionalDescription(strI0, 0, 2, null));
            }
            List<String> listB0 = b0();
            if (!(!listB0.isEmpty())) {
                listB0 = null;
            }
            if (listB0 != null) {
                arrayList.add(new AbstractC1943x6.Subtitle(c0(), 0, 2, null));
                int i = 0;
                for (Object obj : listB0) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt__CollectionsKt.throwIndexOverflow();
                    }
                    String str = (String) obj;
                    if (i < StringsKt__StringsKt.getLastIndex(str)) {
                        str = str + '\n';
                    }
                    arrayList.add(new AbstractC1943x6.AdditionalDescription(str, 0, 2, null));
                    i = i2;
                }
            }
            if (m1() && (strM = m(purpose)) != null) {
                arrayList.add(new AbstractC1943x6.VendorsCount(C1920v3.a(d0(), "consent", W5.UPPER_CASE, (Map) null, 4, (Object) null), strM, d9.PurposeConsent, 0, 8, null));
            }
            if (n1() && (strN = n(purpose)) != null) {
                arrayList.add(new AbstractC1943x6.VendorsCount(C1920v3.a(d0(), "legitimate_interest", W5.UPPER_CASE, (Map) null, 4, (Object) null), strN, d9.PurposeLI, 0, 8, null));
            }
            arrayList.add(new AbstractC1943x6.Footer(0, 1, null));
        }
        return arrayList;
    }

    public final String F1() {
        return C1920v3.a(d0(), "section_title_on_categories", W5.UPPER_CASE, (Map) null, 4, (Object) null);
    }

    public final J6.Bulk G1() {
        PurposeCategory value = s0().getValue();
        if (value == null) {
            return new J6.Bulk(Y1(), T1(), false, 0, 8, null);
        }
        boolean z = f(value) == DidomiToggle.b.ENABLED;
        return new J6.Bulk(Y1(), z ? U1() : T1(), z, 0, 8, null);
    }

    public final List<J6.Category> H1() {
        List<PurposeCategory> listG = G();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listG, 10));
        Iterator<T> it = listG.iterator();
        while (it.hasNext()) {
            arrayList.add(n((PurposeCategory) it.next()));
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: I1, reason: from getter */
    public final int getCurrentDataProcessingIndex() {
        return this.currentDataProcessingIndex;
    }

    public final String J1() {
        return d0().a(I().b().f().b().f(), "view_all_purposes", W5.UPPER_CASE);
    }

    /* JADX INFO: renamed from: K1, reason: from getter */
    public final int getFocusedPosition() {
        return this.focusedPosition;
    }

    /* JADX INFO: renamed from: L1, reason: from getter */
    public final int getFocusedPositionForCategory() {
        return this.focusedPositionForCategory;
    }

    public final J6.Bulk M1() {
        boolean zB = b();
        return new J6.Bulk(Y1(), zB ? U1() : T1(), zB, 0, 8, null);
    }

    public final List<J6.Purpose> N1() {
        List<InternalPurpose> listJ0 = j0();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listJ0, 10));
        Iterator<T> it = listJ0.iterator();
        while (it.hasNext()) {
            arrayList.add(z((InternalPurpose) it.next()));
        }
        return arrayList;
    }

    public final List<J6.Purpose> O1() {
        List<PurposeCategory> children;
        PurposeCategory value = s0().getValue();
        if (value != null && (children = value.getChildren()) != null) {
            ArrayList<InternalPurpose> arrayList = new ArrayList();
            Iterator<T> it = children.iterator();
            while (it.hasNext()) {
                InternalPurpose internalPurposeH = h((PurposeCategory) it.next());
                if (internalPurposeH != null) {
                    arrayList.add(internalPurposeH);
                }
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
            for (InternalPurpose internalPurpose : arrayList) {
                boolean zY = y(internalPurpose);
                arrayList2.add(new J6.Purpose(internalPurpose, k(internalPurpose), b(internalPurpose, zY), zY, 0, 16, null));
            }
            List<J6.Purpose> listDistinct = CollectionsKt___CollectionsKt.distinct(arrayList2);
            if (listDistinct != null) {
                return listDistinct;
            }
        }
        return CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // io.didomi.drawable.C1712a5
    public List<InternalPurpose> P0() {
        b(W8.c(N0()));
        return j1();
    }

    public final String P1() {
        return C1920v3.a(d0(), "object_to_legitimate_interest", (W5) null, (Map) null, 6, (Object) null);
    }

    public final String Q1() {
        return C1920v3.a(d0(), "purpose_legal_description", W5.UPPER_CASE, (Map) null, 4, (Object) null);
    }

    public final List<J6> R1() {
        int size;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new J6.Header(0, 1, null));
        arrayList.add(new J6.Title(J1(), 0, 2, null));
        String string = V5.k(k0()).toString();
        if (!StringsKt__StringsJVMKt.isBlank(string)) {
            arrayList.add(new J6.Description(string, 0, 2, null));
        }
        List<J6.Category> listH1 = H1();
        List<J6.Purpose> listN1 = N1();
        if (a0() && I.e(I())) {
            arrayList.add(new J6.Section(Z1(), 0, 2, null));
            size = arrayList.size();
            arrayList.add(M1());
        } else {
            size = (listH1.isEmpty() && listN1.isEmpty()) ? 0 : arrayList.size() + 1;
        }
        if (!listH1.isEmpty()) {
            arrayList.add(new J6.Section(F1(), 0, 2, null));
            arrayList.addAll(listH1);
        }
        if (!listN1.isEmpty()) {
            arrayList.add(new J6.Section(X1(), 0, 2, null));
            arrayList.addAll(listN1);
        }
        if (s1()) {
            arrayList.add(new J6.Divider(0, 1, null));
            arrayList.add(new J6.AdditionalDataProcessingHeader(C1(), 0, 2, null));
            arrayList.add(new J6.Section(D1(), 0, 2, null));
            List<InterfaceC1847o0> listD0 = D0();
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listD0, 10));
            int i = 0;
            for (Object obj : listD0) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                InterfaceC1847o0 interfaceC1847o0 = (InterfaceC1847o0) obj;
                arrayList2.add(new J6.AdditionalDataProcessingItem(StringsKt__StringsKt.trim(interfaceC1847o0.getName()).toString(), i, interfaceC1847o0, 0, 8, null));
                i = i2;
            }
            arrayList.addAll(arrayList2);
        }
        if (u1()) {
            arrayList.add(new J6.Divider(0, 1, null));
            arrayList.add(new J6.Section(C1920v3.a(d0(), "section_title_on_storage", W5.UPPER_CASE, null, null, 12, null), 0, 2, null));
            arrayList.add(new J6.SdkStorageDisclosureItem(C1920v3.a(d0(), "sdk_storage_disclosure_title", null, null, null, 14, null), 0, 2, null));
            arrayList.add(new J6.Divider(0, 1, null));
        }
        arrayList.add(new J6.Footer(0, 1, null));
        if (this.focusedPosition == 0 && size >= 0) {
            this.focusedPosition = size;
        }
        return arrayList;
    }

    public final List<J6> S1() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new J6.Header(0, 1, null));
        PurposeCategory value = s0().getValue();
        if (value != null) {
            Intrinsics.checkNotNullExpressionValue(value, "selectedCategory.value ?: return@apply");
            arrayList.add(new J6.Title(e(value), 0, 2, null));
            String strD = d(value);
            if (!StringsKt__StringsJVMKt.isBlank(strD)) {
                arrayList.add(new J6.Description(strD, 0, 2, null));
            }
            List<J6.Purpose> listO1 = O1();
            if (!listO1.isEmpty()) {
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listO1, 10));
                Iterator<T> it = listO1.iterator();
                while (it.hasNext()) {
                    arrayList2.add(((J6.Purpose) it.next()).getPurpose());
                }
                if (d(arrayList2)) {
                    arrayList.add(new J6.Section(Z1(), 0, 2, null));
                    if (this.focusedPositionForCategory == 0) {
                        this.focusedPositionForCategory = arrayList.size();
                    }
                    arrayList.add(G1());
                }
                arrayList.add(new J6.Section(X1(), 0, 2, null));
                if (this.focusedPositionForCategory == 0) {
                    this.focusedPositionForCategory = arrayList.size();
                }
                arrayList.addAll(listO1);
            }
            arrayList.add(new J6.Footer(0, 1, null));
        }
        return arrayList;
    }

    public final String T1() {
        return C1920v3.a(d0(), "purposes_off", (W5) null, (Map) null, 6, (Object) null);
    }

    public final String U1() {
        return C1920v3.a(d0(), "purposes_on", (W5) null, (Map) null, 6, (Object) null);
    }

    public final String V1() {
        return C1920v3.a(d0(), "read_more", (W5) null, (Map) null, 6, (Object) null);
    }

    public final String W1() {
        return C1920v3.a(d0(), "settings", W5.UPPER_CASE, (Map) null, 4, (Object) null);
    }

    public final String X1() {
        return C1920v3.a(d0(), "section_title_on_purposes", W5.UPPER_CASE, (Map) null, 4, (Object) null);
    }

    @Override // io.didomi.drawable.C1712a5
    public String Y() {
        return C1920v3.a(d0(), "essential_purpose_label", null, null, null, 14, null);
    }

    public final String Y1() {
        return C1920v3.a(d0(), I().b().f().b().b(), "bulk_action_on_purposes", (W5) null, 4, (Object) null);
    }

    public final String Z1() {
        return C1920v3.a(d0(), "bulk_action_section_title", W5.UPPER_CASE, (Map) null, 4, (Object) null);
    }

    public final void a(InternalPurpose purpose, boolean isChecked) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        if (isChecked) {
            s(purpose);
        } else {
            r(purpose);
        }
        f1();
    }

    @Override // io.didomi.drawable.C1712a5
    protected void a(List<InternalPurpose> purposes, List<PurposeCategory> categories) {
        Intrinsics.checkNotNullParameter(purposes, "purposes");
        Intrinsics.checkNotNullParameter(categories, "categories");
        Collections.sort(purposes, new C1861p4(categories));
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a2() {
        /*
            r4 = this;
            androidx.lifecycle.MutableLiveData r0 = r4.u0()
            java.lang.Object r0 = r0.getValue()
            io.didomi.sdk.models.InternalPurpose r0 = (io.didomi.drawable.models.InternalPurpose) r0
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L2e
            java.lang.String r3 = r0.getDescriptionLegal()
            if (r3 == 0) goto L1a
            boolean r3 = kotlin.text.g.isBlank(r3)
            r3 = r3 ^ r1
            goto L1b
        L1a:
            r3 = 0
        L1b:
            if (r3 != 0) goto L2c
            java.util.List r0 = r0.getIllustrations()
            if (r0 == 0) goto L29
            boolean r0 = r0.isEmpty()
            r0 = r0 ^ r1
            goto L2a
        L29:
            r0 = 0
        L2a:
            if (r0 == 0) goto L2e
        L2c:
            r0 = 1
            goto L2f
        L2e:
            r0 = 0
        L2f:
            if (r0 != 0) goto L39
            boolean r0 = r4.b2()
            if (r0 == 0) goto L38
            goto L39
        L38:
            r1 = 0
        L39:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.didomi.drawable.C1824l7.a2():boolean");
    }

    public final void b(int i) {
        this.currentDataProcessingIndex = i;
    }

    public final String c(InternalPurpose purpose, boolean checked) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        String strM = m(purpose);
        if (strM == null) {
            return b(purpose, checked);
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.a;
        String str = String.format("%s - %s", Arrays.copyOf(new Object[]{b(purpose, checked), strM}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    public final void c(int i) {
        this.focusedPosition = i;
    }

    @Override // io.didomi.drawable.C1712a5
    public String c0() {
        return C1920v3.a(d0(), "purpose_illustration_explanation", W5.UPPER_CASE, null, null, 12, null);
    }

    public final boolean c2() {
        if (this.currentDataProcessingIndex >= D0().size() - 1) {
            return false;
        }
        this.focusedPosition++;
        this.currentDataProcessingIndex++;
        return true;
    }

    public final String d(InternalPurpose purpose, boolean checked) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        String strN = n(purpose);
        if (strN == null) {
            return h(checked);
        }
        StringCompanionObject stringCompanionObject = StringCompanionObject.a;
        String str = String.format("%s - %s", Arrays.copyOf(new Object[]{h(checked), strN}, 2));
        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
        return str;
    }

    public final void d(int i) {
        this.focusedPositionForCategory = i;
    }

    public final boolean d2() {
        int i = this.currentDataProcessingIndex;
        if (i <= 0) {
            return false;
        }
        this.currentDataProcessingIndex = i - 1;
        this.focusedPosition--;
        return true;
    }

    public final void e(boolean isChecked) {
        if (isChecked) {
            B1();
        } else {
            A1();
        }
        f1();
    }

    public final void e2() {
        a(new PreferencesClickViewPurposesEvent());
    }

    public final void f(boolean isChecked) {
        InternalPurpose value = u0().getValue();
        if (value == null) {
            return;
        }
        if (isChecked) {
            e(value);
            b(DidomiToggle.b.ENABLED);
        } else {
            b(value);
            b(DidomiToggle.b.DISABLED);
        }
        f1();
    }

    public final void g(boolean isChecked) {
        InternalPurpose value = u0().getValue();
        if (value == null) {
            return;
        }
        if (isChecked) {
            a(value);
            c(DidomiToggle.b.DISABLED);
        } else {
            d(value);
            c(DidomiToggle.b.ENABLED);
        }
        f1();
    }

    public final J6.Category n(PurposeCategory category) {
        Intrinsics.checkNotNullParameter(category, "category");
        boolean z = f(category) == DidomiToggle.b.ENABLED;
        return new J6.Category(category, e(category), b(category, z), k(category), z, 0, 32, null);
    }

    public final boolean y(InternalPurpose purpose) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        if (C1860p3.a(V(), purpose) || !v(purpose)) {
            return true;
        }
        if (!C1860p3.a(O(), purpose)) {
            v(purpose);
        }
        return false;
    }

    public final J6.Purpose z(InternalPurpose purpose) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        boolean zY = y(purpose);
        return new J6.Purpose(purpose, k(purpose), b(purpose, zY), zY, 0, 16, null);
    }

    @Override // io.didomi.drawable.C1712a5
    public void z1() {
        M0().a(J());
        M0().b(m0());
        super.z1();
    }
}
