package io.didomi.drawable;

import android.graphics.Bitmap;
import io.didomi.drawable.U;
import io.didomi.drawable.apiEvents.b;
import io.didomi.drawable.events.NoticeClickPrivacyPolicyEvent;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.didomi.sdk.l6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001Bi\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b\u001f\u0010 J\r\u0010\"\u001a\u00020!¢\u0006\u0004\b\"\u0010#J\r\u0010$\u001a\u00020!¢\u0006\u0004\b$\u0010#R\u0014\u0010\u0017\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0011\u0010*\u001a\u00020'8F¢\u0006\u0006\u001a\u0004\b(\u0010)R\u0011\u0010,\u001a\u00020'8F¢\u0006\u0006\u001a\u0004\b+\u0010)R\u0011\u0010.\u001a\u00020'8F¢\u0006\u0006\u001a\u0004\b-\u0010)R\u0014\u00102\u001a\u00020/8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b0\u00101¨\u00063"}, d2 = {"Lio/didomi/sdk/l6;", "Lio/didomi/sdk/U;", "Lio/didomi/sdk/apiEvents/b;", "apiEventsRepository", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/V;", "consentRepository", "Lio/didomi/sdk/M2;", "eventsRepository", "Lio/didomi/sdk/V8;", "vendorRepository", "Lio/didomi/sdk/s5;", "resourcesHelper", "Lio/didomi/sdk/v3;", "languagesHelper", "Lio/didomi/sdk/C3;", "logoProvider", "Lio/didomi/sdk/I3;", "navigationManager", "Lio/didomi/sdk/P8;", "userStatusRepository", "Lio/didomi/sdk/E8;", "uiStateRepository", "Lio/didomi/sdk/P3;", "organizationUserRepository", "<init>", "(Lio/didomi/sdk/apiEvents/b;Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/M2;Lio/didomi/sdk/V8;Lio/didomi/sdk/s5;Lio/didomi/sdk/v3;Lio/didomi/sdk/C3;Lio/didomi/sdk/I3;Lio/didomi/sdk/P8;Lio/didomi/sdk/E8;Lio/didomi/sdk/P3;)V", "", "size", "Landroid/graphics/Bitmap;", "a", "(I)Landroid/graphics/Bitmap;", "", "K", "()V", "L", "w", "Lio/didomi/sdk/E8;", "", "J", "()Ljava/lang/String;", "selectText", "I", "ourPrivacyPolicyText", "H", "externalLinkDescriptionText", "Lio/didomi/sdk/U$b;", "r", "()Lio/didomi/sdk/U$b;", "noticeAndPartnersProperties", "android_release"}, mv = {1, 8, 0})
public final class C1823l6 extends U {

    /* JADX INFO: renamed from: w, reason: from kotlin metadata */
    private final UIStateRepository uiStateRepository;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1823l6(b apiEventsRepository, H configurationRepository, V consentRepository, M2 eventsRepository, V8 vendorRepository, C1892s5 resourcesHelper, C1920v3 languagesHelper, C3 logoProvider, I3 navigationManager, P8 userStatusRepository, UIStateRepository uiStateRepository, P3 organizationUserRepository) {
        super(apiEventsRepository, configurationRepository, consentRepository, eventsRepository, vendorRepository, resourcesHelper, languagesHelper, logoProvider, navigationManager, userStatusRepository, organizationUserRepository);
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
        Intrinsics.checkNotNullParameter(uiStateRepository, "uiStateRepository");
        Intrinsics.checkNotNullParameter(organizationUserRepository, "organizationUserRepository");
        this.uiStateRepository = uiStateRepository;
    }

    public final String H() {
        return C1920v3.a(j(), "external_link_description", (W5) null, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("{url}", d().b().a().k())), 2, (Object) null);
    }

    public final String I() {
        return j().a(d().b().e().a().f(), "our_privacy_policy", W5.UPPER_CASE);
    }

    public final String J() {
        return C1920v3.a(j(), "select_colon", (W5) null, (Map) null, 6, (Object) null);
    }

    public final void K() {
        this.uiStateRepository.a(true);
    }

    public final void L() {
        a(new NoticeClickPrivacyPolicyEvent());
    }

    public final Bitmap a(int size) {
        return C1732c5.a.a(d().b().a().k(), size);
    }

    @Override // io.didomi.drawable.U
    public U.NoticeAndPartnersProperties r() {
        return new U.NoticeAndPartnersProperties(s(), false, (!B() || i()) ? y() ? null : o() : C1920v3.a(j(), "manage_our_partners_with_counts", (W5) null, (Map) null, 6, (Object) null));
    }
}
