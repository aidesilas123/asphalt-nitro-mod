package io.didomi.drawable.apiEvents;

import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.C1917v0;
import io.didomi.drawable.F8;
import io.didomi.drawable.H;
import io.didomi.drawable.InterfaceC1746e;
import io.didomi.drawable.InterfaceC1786i;
import io.didomi.drawable.M8;
import io.didomi.drawable.P3;
import io.didomi.drawable.V;
import io.didomi.drawable.Y;
import io.didomi.drawable.Z;
import io.didomi.drawable.consent.model.ConsentChoices;
import io.didomi.drawable.user.UserAuth;
import io.didomi.drawable.user.UserAuthParams;
import io.didomi.drawable.user.UserAuthWithEncryptionParams;
import io.didomi.drawable.user.UserAuthWithHashParams;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.jvm.internal.Intrinsics;

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
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\u0018\u00002\u00020\u0001B9\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0014\u0010\u0015J7\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00162\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00192\b\b\u0002\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u0014\u0010\u001dR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u001eR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010(¨\u0006)"}, d2 = {"Lio/didomi/sdk/apiEvents/a;", "", "Lio/didomi/sdk/H;", "configurationRepository", "Lio/didomi/sdk/V;", "consentRepository", "Lio/didomi/sdk/P3;", "organizationUserRepository", "Lio/didomi/sdk/F8;", "userAgentRepository", "Lio/didomi/sdk/M8;", "userRepository", "Lio/didomi/sdk/Z;", "contextHelper", "<init>", "(Lio/didomi/sdk/H;Lio/didomi/sdk/V;Lio/didomi/sdk/P3;Lio/didomi/sdk/F8;Lio/didomi/sdk/M8;Lio/didomi/sdk/Z;)V", "Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;", "parameters", "", "Lio/didomi/sdk/e;", "a", "(Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;)Ljava/util/List;", "Lio/didomi/sdk/apiEvents/ApiEventType;", "eventType", "Lio/didomi/sdk/i;", "Lio/didomi/sdk/user/UserAuth;", "organizationUserOverride", "", "includeUserId", "(Lio/didomi/sdk/apiEvents/ApiEventType;Lio/didomi/sdk/i;Lio/didomi/sdk/user/UserAuth;Z)Lio/didomi/sdk/e;", "Lio/didomi/sdk/H;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lio/didomi/sdk/V;", "c", "Lio/didomi/sdk/P3;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lio/didomi/sdk/F8;", "e", "Lio/didomi/sdk/M8;", InneractiveMediationDefs.GENDER_FEMALE, "Lio/didomi/sdk/Z;", "android_release"}, mv = {1, 8, 0})
public final class a {
    private final H a;
    private final V b;
    private final P3 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final F8 f8497d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final M8 f8498e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Z f8499f;

    /* JADX INFO: renamed from: io.didomi.sdk.apiEvents.a$a, reason: collision with other inner class name */
    @Metadata(mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class C0478a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[ApiEventType.values().length];
            try {
                iArr[ApiEventType.PAGE_VIEW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ApiEventType.CONSENT_ASKED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ApiEventType.CONSENT_GIVEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ApiEventType.SYNC_ACKNOWLEDGED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ApiEventType.UI_ACTION_SHOWN_PURPOSES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ApiEventType.UI_ACTION_SHOWN_VENDORS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ApiEventType.UI_ACTION_SHOWN_PERSONAL_DATA_TYPES.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ApiEventType.UI_ACTION_PURPOSE_CHANGED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ApiEventType.UI_ACTION_VENDOR_CHANGED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ApiEventType.UI_ACTION_SENSITIVE_PERSONAL_INFO_CHANGED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            a = iArr;
        }
    }

    public a(H configurationRepository, V consentRepository, P3 organizationUserRepository, F8 userAgentRepository, M8 userRepository, Z contextHelper) {
        Intrinsics.checkNotNullParameter(configurationRepository, "configurationRepository");
        Intrinsics.checkNotNullParameter(consentRepository, "consentRepository");
        Intrinsics.checkNotNullParameter(organizationUserRepository, "organizationUserRepository");
        Intrinsics.checkNotNullParameter(userAgentRepository, "userAgentRepository");
        Intrinsics.checkNotNullParameter(userRepository, "userRepository");
        Intrinsics.checkNotNullParameter(contextHelper, "contextHelper");
        this.a = configurationRepository;
        this.b = consentRepository;
        this.c = organizationUserRepository;
        this.f8497d = userAgentRepository;
        this.f8498e = userRepository;
        this.f8499f = contextHelper;
    }

    public static /* synthetic */ InterfaceC1746e a(a aVar, ApiEventType apiEventType, InterfaceC1786i interfaceC1786i, UserAuth userAuth, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            interfaceC1786i = null;
        }
        if ((i & 4) != 0) {
            userAuth = null;
        }
        if ((i & 8) != 0) {
            z = true;
        }
        return aVar.a(apiEventType, interfaceC1786i, userAuth, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final InterfaceC1746e a(ApiEventType eventType, InterfaceC1786i interfaceC1786i, UserAuth userAuth, boolean z) {
        InterfaceC1746e consentAskedApiEvent;
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        UserAuth userAuth2 = userAuth == null ? this.c.getUserAuth() : userAuth;
        String userId = z ? this.f8498e.getUserId() : null;
        String userIdType = this.f8498e.getUserIdType();
        C1917v0 c1917v0 = C1917v0.a;
        Token token = new Token(userId, userIdType, c1917v0.d(this.b.b().getCreated()), c1917v0.d(this.b.b().getUpdated()), null, new ConsentChoices(Y.h(this.b.b()), Y.d(this.b.b())), new ConsentChoices(Y.f(this.b.b()), Y.b(this.b.b())), new ConsentChoices(Y.i(this.b.b()), Y.e(this.b.b())), new ConsentChoices(Y.g(this.b.b()), Y.c(this.b.b())), 16, null);
        String userId2 = z ? this.f8498e.getUserId() : null;
        String userIdType2 = this.f8498e.getUserIdType();
        String strA = this.a.b().l().a();
        String strA2 = this.f8497d.a();
        String id = userAuth2 != null ? userAuth2.getId() : null;
        boolean z2 = userAuth2 instanceof UserAuthParams;
        UserAuthParams userAuthParams = z2 ? (UserAuthParams) userAuth2 : null;
        String algorithm = userAuthParams != null ? userAuthParams.getAlgorithm() : null;
        UserAuthParams userAuthParams2 = z2 ? (UserAuthParams) userAuth2 : null;
        String secretId = userAuthParams2 != null ? userAuthParams2.getSecretId() : null;
        UserAuthParams userAuthParams3 = z2 ? (UserAuthParams) userAuth2 : null;
        Long expiration = userAuthParams3 != null ? userAuthParams3.getExpiration() : null;
        boolean z3 = userAuth2 instanceof UserAuthWithHashParams;
        UserAuthWithHashParams userAuthWithHashParams = z3 ? (UserAuthWithHashParams) userAuth2 : null;
        String salt = userAuthWithHashParams != null ? userAuthWithHashParams.getSalt() : null;
        UserAuthWithHashParams userAuthWithHashParams2 = z3 ? (UserAuthWithHashParams) userAuth2 : null;
        String digest = userAuthWithHashParams2 != null ? userAuthWithHashParams2.getDigest() : null;
        UserAuthWithEncryptionParams userAuthWithEncryptionParams = userAuth2 instanceof UserAuthWithEncryptionParams ? (UserAuthWithEncryptionParams) userAuth2 : null;
        User user = new User(userId2, userIdType2, strA, strA2, token, id, algorithm, secretId, salt, digest, expiration, userAuthWithEncryptionParams != null ? userAuthWithEncryptionParams.getInitializationVector() : null, this.b.a(), this.b.g(), this.b.d(), SetsKt__SetsJVMKt.setOf(this.a.e().getValue()));
        Source source = new Source(this.f8499f.d(), this.a.a(), this.f8499f.b(), this.f8499f.f(), this.a.c());
        switch (C0478a.a[eventType.ordinal()]) {
            case 1:
                return new PageViewApiEvent(null, null, 0.0f, user, source, null, 39, null);
            case 2:
                consentAskedApiEvent = new ConsentAskedApiEvent(null, null, 0.0f, user, source, interfaceC1786i instanceof ConsentAskedApiEventParameters ? (ConsentAskedApiEventParameters) interfaceC1786i : null, 7, null);
                break;
            case 3:
                consentAskedApiEvent = new ConsentGivenApiEvent(null, null, 0.0f, user, source, interfaceC1786i instanceof ConsentGivenApiEventParameters ? (ConsentGivenApiEventParameters) interfaceC1786i : null, 7, null);
                break;
            case 4:
                return new SyncAcknowledgedApiEvent(null, null, 0.0f, user, source, null, 39, null);
            case 5:
                return new UIActionShownPurposesApiEvent(null, null, 0.0f, user, source, null, 39, null);
            case 6:
                return new UIActionShownVendorsApiEvent(null, null, 0.0f, user, source, null, 39, null);
            case 7:
                return new UIActionShownPersonalDataTypesApiEvent(null, null, 0.0f, user, source, null, 39, null);
            case 8:
                return new UIActionPurposeChangedApiEvent(null, null, 0.0f, user, source, null, 39, null);
            case 9:
                return new UIActionVendorChangedApiEvent(null, null, 0.0f, user, source, null, 39, null);
            case 10:
                return new UIActionSensitivePersonalInfoChangedApiEvent(null, null, 0.0f, user, source, null, 39, null);
            default:
                throw new NoWhenBranchMatchedException();
        }
        return consentAskedApiEvent;
    }

    public final List<InterfaceC1746e> a(ConsentGivenApiEventParameters parameters) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        List<InterfaceC1746e> listMutableListOf = CollectionsKt__CollectionsKt.mutableListOf(a(this, ApiEventType.CONSENT_GIVEN, parameters, null, false, 12, null));
        List<UserAuth> listB = this.c.b();
        if (listB != null) {
            Iterator<T> it = listB.iterator();
            while (it.hasNext()) {
                listMutableListOf.add(a(ApiEventType.CONSENT_GIVEN, parameters.copy((255 & 1) != 0 ? parameters.purposes : null, (255 & 2) != 0 ? parameters.legitimatePurposes : null, (255 & 4) != 0 ? parameters.previousPurposes : null, (255 & 8) != 0 ? parameters.previousLegitimatePurposes : null, (255 & 16) != 0 ? parameters.vendors : null, (255 & 32) != 0 ? parameters.vendorsLegInt : null, (255 & 64) != 0 ? parameters.previousVendors : null, (255 & 128) != 0 ? parameters.previousVendorsLegInt : null, (255 & 256) != 0 ? parameters.action : "multiple-IDs"), (UserAuth) it.next(), !this.a.b().a().j()));
            }
        }
        return listMutableListOf;
    }
}
