package io.didomi.drawable;

import androidx.lifecycle.ViewModel;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: io.didomi.sdk.p0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0007\b\u0017\u0018\u00002\u00020\u0001B)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\"\u0010\t\u001a\u00020\b8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010 \u001a\u00020\u001a8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\f\u0010\u001fR\u0011\u0010$\u001a\u00020!8F¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0011\u0010%\u001a\u00020!8F¢\u0006\u0006\u001a\u0004\b\u000e\u0010#R\u0011\u0010&\u001a\u00020!8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010#R\u0017\u0010)\u001a\b\u0012\u0004\u0012\u00020!0'8F¢\u0006\u0006\u001a\u0004\b\u0014\u0010(R\u0014\u0010*\u001a\u00020!8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010#R\u0011\u0010,\u001a\u00020!8F¢\u0006\u0006\u001a\u0004\b+\u0010#R\u0011\u0010-\u001a\u00020!8F¢\u0006\u0006\u001a\u0004\b\f\u0010#¨\u0006."}, d2 = {"Lio/didomi/sdk/p0;", "Landroidx/lifecycle/ViewModel;", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/M2;", "eventsRepository", "Lio/didomi/sdk/C3;", "logoProvider", "Lio/didomi/sdk/v3;", "languagesHelper", "<init>", "(Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/C3;Lio/didomi/sdk/v3;)V", "a", "Lio/didomi/sdk/H;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/M2;", "c", "Lio/didomi/sdk/C3;", "g", "()Lio/didomi/sdk/C3;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lio/didomi/sdk/v3;", InneractiveMediationDefs.GENDER_FEMALE, "()Lio/didomi/sdk/v3;", "setLanguagesHelper", "(Lio/didomi/sdk/v3;)V", "Lio/didomi/sdk/o0;", "e", "Lio/didomi/sdk/o0;", "i", "()Lio/didomi/sdk/o0;", "(Lio/didomi/sdk/o0;)V", "selectedItem", "", "j", "()Ljava/lang/String;", "title", "description", "descriptionLegal", "", "()Ljava/util/List;", "illustrations", "illustrationsHeaderLabel", "h", "name", "accessibilityCloseDescription", "android_release"}, mv = {1, 8, 0})
public class C1857p0 extends ViewModel {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final H configurationRepository;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final M2 eventsRepository;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final C3 logoProvider;

    /* JADX INFO: renamed from: d, reason: collision with root package name and from kotlin metadata */
    private C1920v3 languagesHelper;

    /* JADX INFO: renamed from: e, reason: collision with root package name and from kotlin metadata */
    public InterfaceC1847o0 selectedItem;

    public C1857p0(H configurationRepository, M2 eventsRepository, C3 logoProvider, C1920v3 languagesHelper) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(eventsRepository, "eventsRepository");
        Intrinsics.checkNotNullParameter(logoProvider, "logoProvider");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        this.configurationRepository = configurationRepository;
        this.eventsRepository = eventsRepository;
        this.logoProvider = logoProvider;
        this.languagesHelper = languagesHelper;
    }

    public final String a() {
        return C1920v3.a(this.languagesHelper, "close", null, null, null, 14, null);
    }

    public final void a(InterfaceC1847o0 interfaceC1847o0) {
        Intrinsics.checkNotNullParameter(interfaceC1847o0, "<set-?>");
        this.selectedItem = interfaceC1847o0;
    }

    public final String b() {
        return i().getDescription();
    }

    public final String c() {
        return V5.l(i().getDescriptionLegal()).toString();
    }

    public final List<String> d() {
        ArrayList arrayList;
        List<String> illustrations = i().getIllustrations();
        if (illustrations != null) {
            arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(illustrations, 10));
            Iterator<T> it = illustrations.iterator();
            while (it.hasNext()) {
                arrayList.add(StringsKt__StringsKt.trim((String) it.next()).toString());
            }
        } else {
            arrayList = null;
        }
        return arrayList == null ? CollectionsKt__CollectionsKt.emptyList() : arrayList;
    }

    public String e() {
        return C1920v3.a(this.languagesHelper, "purpose_illustration_explanation", null, null, null, 14, null);
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    protected final C1920v3 getLanguagesHelper() {
        return this.languagesHelper;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final C3 getLogoProvider() {
        return this.logoProvider;
    }

    public final String h() {
        return StringsKt__StringsKt.trim(i().getName()).toString();
    }

    public final InterfaceC1847o0 i() {
        InterfaceC1847o0 interfaceC1847o0 = this.selectedItem;
        if (interfaceC1847o0 != null) {
            return interfaceC1847o0;
        }
        Intrinsics.throwUninitializedPropertyAccessException("selectedItem");
        return null;
    }

    public final String j() {
        return C1761f4.a.a(this.configurationRepository, this.languagesHelper);
    }
}
