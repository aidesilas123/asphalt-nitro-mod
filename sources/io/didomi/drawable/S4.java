package io.didomi.drawable;

import androidx.lifecycle.ViewModel;
import com.fyber.inneractive.sdk.external.InneractiveMediationDefs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.models.InternalPurpose;
import io.didomi.drawable.models.InternalVendor;
import io.didomi.drawable.purpose.common.model.PurposeCategory;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
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
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\b\b\u0017\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\n\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\n\u0010\u000fJ\u001d\u0010\n\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\n\u0010\u0014J\u000f\u0010\u0015\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u0017\u0010\u0016J\u0013\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00190\u0018¢\u0006\u0004\b\u001a\u0010\u001bR\u001a\u0010\u0003\u001a\u00020\u00028\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\n\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u001a\u0010\u0005\u001a\u00020\u00048\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\u0017\u0010\u001f\u001a\u0004\b \u0010!R\"\u0010&\u001a\u00020\u00128\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b \u0010\"\u001a\u0004\b#\u0010$\"\u0004\b\n\u0010%R\"\u0010*\u001a\u00020\b8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0015\u0010'\u001a\u0004\b(\u0010\u0016\"\u0004\b\u0017\u0010)R(\u0010/\u001a\b\u0012\u0004\u0012\u00020+0\u00188\u0004@\u0004X\u0084.¢\u0006\u0012\n\u0004\b#\u0010,\u001a\u0004\b-\u0010\u001b\"\u0004\b\n\u0010.R\u0011\u00101\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b0\u0010\u0016R\u0011\u00102\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\n\u0010\u0016¨\u00063"}, d2 = {"Lio/didomi/sdk/S4;", "Landroidx/lifecycle/ViewModel;", "Lio/didomi/sdk/V8;", "vendorRepository", "Lio/didomi/sdk/v3;", "languagesHelper", "<init>", "(Lio/didomi/sdk/V8;Lio/didomi/sdk/v3;)V", "", "infoType", "a", "(Ljava/lang/String;)Ljava/lang/String;", "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "category", "", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V", "Lio/didomi/sdk/models/InternalPurpose;", "purpose", "Lio/didomi/sdk/d9;", "vendorsInfoType", "(Lio/didomi/sdk/models/InternalPurpose;Lio/didomi/sdk/d9;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "()Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "", "Lio/didomi/sdk/N4;", "h", "()Ljava/util/List;", "Lio/didomi/sdk/V8;", "getVendorRepository", "()Lio/didomi/sdk/V8;", "Lio/didomi/sdk/v3;", "c", "()Lio/didomi/sdk/v3;", "Lio/didomi/sdk/d9;", "e", "()Lio/didomi/sdk/d9;", "(Lio/didomi/sdk/d9;)V", "selectedInfoType", "Ljava/lang/String;", InneractiveMediationDefs.GENDER_FEMALE, "(Ljava/lang/String;)V", "selectedItemName", "Lio/didomi/sdk/models/InternalVendor;", "Ljava/util/List;", "i", "(Ljava/util/List;)V", Didomi.VIEW_VENDORS, "g", "title", "accessibilityCloseDescription", "android_release"}, mv = {1, 8, 0})
public class S4 extends ViewModel {
    private final V8 a;
    private final C1920v3 b;
    public d9 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f8371d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected List<InternalVendor> f8372e;

    @Metadata(mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[d9.values().length];
            try {
                iArr[d9.Purpose.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[d9.Category.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[d9.PurposeConsent.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[d9.PurposeLI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    public S4(V8 vendorRepository, C1920v3 languagesHelper) {
        Intrinsics.checkNotNullParameter(vendorRepository, "vendorRepository");
        Intrinsics.checkNotNullParameter(languagesHelper, "languagesHelper");
        this.a = vendorRepository;
        this.b = languagesHelper;
    }

    private final String a(String str) {
        return f() + " > " + str;
    }

    public final String a() {
        return C1920v3.a(this.b, "close", null, null, null, 14, null);
    }

    public final void a(d9 d9Var) {
        Intrinsics.checkNotNullParameter(d9Var, "<set-?>");
        this.c = d9Var;
    }

    public final void a(InternalPurpose purpose, d9 vendorsInfoType) {
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        Intrinsics.checkNotNullParameter(vendorsInfoType, "vendorsInfoType");
        a(vendorsInfoType);
        b(purpose.getName());
        int i = a.a[vendorsInfoType.ordinal()];
        a(C1870q3.a(i != 1 ? i != 3 ? i != 4 ? CollectionsKt__CollectionsKt.emptyList() : W8.b(this.a, purpose) : W8.a(this.a, purpose) : W8.c(this.a, purpose)));
    }

    public final void a(PurposeCategory category) {
        Intrinsics.checkNotNullParameter(category, "category");
        a(d9.Category);
        b(C1920v3.a(this.b, category.getName(), null, 2, null));
        a(C1870q3.a(W8.a(this.a, category)));
    }

    protected final void a(List<InternalVendor> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.f8372e = list;
    }

    public final String b() {
        List<InternalVendor> listI = i();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listI) {
            if (((InternalVendor) obj).isIabVendor()) {
                arrayList.add(obj);
            }
        }
        int size = arrayList.size();
        if (size <= 0) {
            return null;
        }
        return C1920v3.a(this.b, size == 1 ? "single_iab_partner_count" : "iab_partners_count", null, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("{nb}", String.valueOf(size))), null, 10, null);
    }

    public final void b(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f8371d = str;
    }

    protected final C1920v3 c() {
        return this.b;
    }

    public final String d() {
        List<InternalVendor> listI = i();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listI) {
            if (!((InternalVendor) obj).isIabVendor()) {
                arrayList.add(obj);
            }
        }
        int size = arrayList.size();
        if (size <= 0) {
            return null;
        }
        return C1920v3.a(this.b, size == 1 ? "single_non_iab_partner_count" : "non_iab_partners_count", null, MapsKt__MapsJVMKt.mapOf(TuplesKt.to("{nb}", String.valueOf(size))), null, 10, null);
    }

    public final d9 e() {
        d9 d9Var = this.c;
        if (d9Var != null) {
            return d9Var;
        }
        Intrinsics.throwUninitializedPropertyAccessException("selectedInfoType");
        return null;
    }

    public final String f() {
        String str = this.f8371d;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("selectedItemName");
        return null;
    }

    public final String g() {
        int i = a.a[e().ordinal()];
        if (i == 1 || i == 2) {
            return f();
        }
        if (i == 3) {
            return a(C1920v3.a(this.b, "consent", (W5) null, (Map) null, 6, (Object) null));
        }
        if (i == 4) {
            return a(C1920v3.a(this.b, "legitimate_interest", (W5) null, (Map) null, 6, (Object) null));
        }
        throw new NoWhenBranchMatchedException();
    }

    public final List<N4> h() {
        List<InternalVendor> listI = i();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listI, 10));
        for (InternalVendor internalVendor : listI) {
            arrayList.add(new N4(internalVendor.getId().hashCode(), V5.g(internalVendor.getName()), internalVendor.isIabVendor()));
        }
        return arrayList;
    }

    protected final List<InternalVendor> i() {
        List<InternalVendor> list = this.f8372e;
        if (list != null) {
            return list;
        }
        Intrinsics.throwUninitializedPropertyAccessException(Didomi.VIEW_VENDORS);
        return null;
    }
}
