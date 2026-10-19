package io.didomi.drawable.models;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.google.gson.r.c;
import io.didomi.drawable.H3;
import io.didomi.drawable.InterfaceC1847o0;
import io.didomi.drawable.purpose.common.model.PurposeCategory;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlinx.parcelize.Parcelize;

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
@Parcelize
@Keep
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b \n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0087\b\u0018\u0000 d2\u00020\u00012\u00020\u0002:\u0001eB¡\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000b\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u000b¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0017\u001a\u00020\u000b¢\u0006\u0004\b\u0017\u0010\u0018J\r\u0010\u0019\u001a\u00020\u000b¢\u0006\u0004\b\u0019\u0010\u0018J\r\u0010\u001a\u001a\u00020\u000b¢\u0006\u0004\b\u001a\u0010\u0018J\u0010\u0010\u001b\u001a\u00020\u0003HÆ\u0003¢\u0006\u0004\b\u001b\u0010\u001cJ\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0004\b\u001d\u0010\u001cJ\u0010\u0010\u001e\u001a\u00020\u0003HÆ\u0003¢\u0006\u0004\b\u001e\u0010\u001cJ\u0010\u0010\u001f\u001a\u00020\u0003HÆ\u0003¢\u0006\u0004\b\u001f\u0010\u001cJ\u0012\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0004\b \u0010\u001cJ\u0018\u0010!\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b!\u0010\"J\u0010\u0010#\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b#\u0010\u0018J\u0010\u0010$\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b$\u0010\u0018J\u0010\u0010%\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b%\u0010\u0018J\u0010\u0010&\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b&\u0010\u0018J\u0012\u0010(\u001a\u0004\u0018\u00010\u0003HÀ\u0003¢\u0006\u0004\b'\u0010\u001cJ\u0012\u0010)\u001a\u0004\u0018\u00010\u0011HÆ\u0003¢\u0006\u0004\b)\u0010*J\u0010\u0010,\u001a\u00020\u000bHÀ\u0003¢\u0006\u0004\b+\u0010\u0018J\u0010\u0010.\u001a\u00020\u000bHÀ\u0003¢\u0006\u0004\b-\u0010\u0018J¬\u0001\u0010/\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t2\b\b\u0002\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\u000b2\b\b\u0002\u0010\u000e\u001a\u00020\u000b2\b\b\u0002\u0010\u000f\u001a\u00020\u000b2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\b\u0002\u0010\u0013\u001a\u00020\u000b2\b\b\u0002\u0010\u0014\u001a\u00020\u000bHÆ\u0001¢\u0006\u0004\b/\u00100J\u0010\u00101\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b1\u0010\u001cJ\u0010\u00103\u001a\u000202HÖ\u0001¢\u0006\u0004\b3\u00104J\u001a\u00107\u001a\u00020\u000b2\b\u00106\u001a\u0004\u0018\u000105HÖ\u0003¢\u0006\u0004\b7\u00108J\u0010\u00109\u001a\u000202HÖ\u0001¢\u0006\u0004\b9\u00104J \u0010>\u001a\u00020=2\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u000202HÖ\u0001¢\u0006\u0004\b>\u0010?R\u001a\u0010\u0004\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\f\n\u0004\b\u0004\u0010@\u001a\u0004\bA\u0010\u001cR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0016X\u0097\u0004¢\u0006\f\n\u0004\b\u0005\u0010@\u001a\u0004\bB\u0010\u001cR\"\u0010\u0006\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010@\u001a\u0004\bC\u0010\u001c\"\u0004\bD\u0010ER\"\u0010\u0007\u001a\u00020\u00038\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010@\u001a\u0004\bF\u0010\u001c\"\u0004\bG\u0010ER$\u0010\b\u001a\u0004\u0018\u00010\u00038\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b\b\u0010@\u001a\u0004\bH\u0010\u001c\"\u0004\bI\u0010ER*\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\t8\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b\n\u0010J\u001a\u0004\bK\u0010\"\"\u0004\bL\u0010MR\"\u0010\f\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010N\u001a\u0004\b\f\u0010\u0018\"\u0004\bO\u0010PR\"\u0010\r\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\r\u0010N\u001a\u0004\b\r\u0010\u0018\"\u0004\bQ\u0010PR\"\u0010\u000e\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010N\u001a\u0004\b\u000e\u0010\u0018\"\u0004\bR\u0010PR\"\u0010\u000f\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010N\u001a\u0004\b\u000f\u0010\u0018\"\u0004\bS\u0010PR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0010\u0010@\u001a\u0004\bT\u0010\u001cR\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0016X\u0097\u0004¢\u0006\f\n\u0004\b\u0012\u0010U\u001a\u0004\bV\u0010*R\"\u0010\u0013\u001a\u00020\u000b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010N\u001a\u0004\bW\u0010\u0018\"\u0004\bX\u0010PR\"\u0010\u0014\u001a\u00020\u000b8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010N\u001a\u0004\bY\u0010\u0018\"\u0004\bZ\u0010PR*\u0010\\\u001a\u0004\u0018\u00010[8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0004\b\\\u0010]\u0012\u0004\bb\u0010c\u001a\u0004\b^\u0010_\"\u0004\b`\u0010a¨\u0006f"}, d2 = {"Lio/didomi/sdk/models/InternalPurpose;", "Lio/didomi/sdk/o0;", "Lio/didomi/sdk/H3;", "", "id", "iabId", "name", "description", "descriptionLegal", "", "illustrations", "", "isConsent", "isEssential", "isLegitimateInterest", "isSpecialFeature", "type", "Lio/didomi/sdk/models/DataProcessingNamespaces;", "namespaces", "iabConsentRequired", "iabLiRequired", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZZLjava/lang/String;Lio/didomi/sdk/models/DataProcessingNamespaces;ZZ)V", "isConsentNotEssential", "()Z", "isLegitimateInterestNotEssential", "isLegitimateInterestOnly", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "component6", "()Ljava/util/List;", "component7", "component8", "component9", "component10", "component11$android_release", "component11", "component12", "()Lio/didomi/sdk/models/DataProcessingNamespaces;", "component13$android_release", "component13", "component14$android_release", "component14", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZZZLjava/lang/String;Lio/didomi/sdk/models/DataProcessingNamespaces;ZZ)Lio/didomi/sdk/models/InternalPurpose;", "toString", "", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getId", "getIabId", "getName", "setName", "(Ljava/lang/String;)V", "getDescription", "setDescription", "getDescriptionLegal", "setDescriptionLegal", "Ljava/util/List;", "getIllustrations", "setIllustrations", "(Ljava/util/List;)V", "Z", "setConsent", "(Z)V", "setEssential", "setLegitimateInterest", "setSpecialFeature", "getType$android_release", "Lio/didomi/sdk/models/DataProcessingNamespaces;", "getNamespaces", "getIabConsentRequired$android_release", "setIabConsentRequired$android_release", "getIabLiRequired$android_release", "setIabLiRequired$android_release", "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "category", "Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "getCategory", "()Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "setCategory", "(Lio/didomi/sdk/purpose/common/model/PurposeCategory;)V", "getCategory$annotations", "()V", "Companion", "a", "android_release"}, mv = {1, 8, 0})
public final class InternalPurpose implements InterfaceC1847o0, H3 {
    public static final String personalDataType = "personalDataType";
    private transient PurposeCategory category;

    @c("description")
    private String description;

    @c("descriptionLegal")
    private String descriptionLegal;
    private transient boolean iabConsentRequired;

    @c("iabId")
    private final String iabId;
    private transient boolean iabLiRequired;

    @c("id")
    private final String id;

    @c("illustrations")
    private List<String> illustrations;
    private transient boolean isConsent;
    private transient boolean isEssential;
    private transient boolean isLegitimateInterest;
    private transient boolean isSpecialFeature;

    @c("name")
    private String name;

    @c("namespaces")
    private final DataProcessingNamespaces namespaces;
    private final transient String type;
    public static final a Companion = new a(null);
    public static final Parcelable.Creator<InternalPurpose> CREATOR = new b();

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lio/didomi/sdk/models/InternalPurpose$a;", "", "<init>", "()V", "", InternalPurpose.personalDataType, "Ljava/lang/String;", "android_release"}, mv = {1, 8, 0})
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    @Metadata(mv = {1, 8, 0}, xi = 48)
    public static final class b implements Parcelable.Creator<InternalPurpose> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InternalPurpose createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new InternalPurpose(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.createStringArrayList(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readString(), parcel.readInt() == 0 ? null : DataProcessingNamespaces.CREATOR.createFromParcel(parcel), parcel.readInt() != 0, parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InternalPurpose[] newArray(int i) {
            return new InternalPurpose[i];
        }
    }

    public InternalPurpose(String id, String str, String name, String description, String str2, List<String> list, boolean z, boolean z2, boolean z3, boolean z4, String str3, DataProcessingNamespaces dataProcessingNamespaces, boolean z5, boolean z6) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        this.id = id;
        this.iabId = str;
        this.name = name;
        this.description = description;
        this.descriptionLegal = str2;
        this.illustrations = list;
        this.isConsent = z;
        this.isEssential = z2;
        this.isLegitimateInterest = z3;
        this.isSpecialFeature = z4;
        this.type = str3;
        this.namespaces = dataProcessingNamespaces;
        this.iabConsentRequired = z5;
        this.iabLiRequired = z6;
    }

    public /* synthetic */ InternalPurpose(String str, String str2, String str3, String str4, String str5, List list, boolean z, boolean z2, boolean z3, boolean z4, String str6, DataProcessingNamespaces dataProcessingNamespaces, boolean z5, boolean z6, int i, n nVar) {
        this(str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? "" : str3, (i & 8) == 0 ? str4 : "", (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : list, (i & 64) != 0 ? false : z, (i & 128) != 0 ? false : z2, (i & 256) != 0 ? false : z3, (i & 512) != 0 ? false : z4, (i & 1024) != 0 ? null : str6, (i & 2048) == 0 ? dataProcessingNamespaces : null, (i & 4096) != 0 ? false : z5, (i & 8192) == 0 ? z6 : false);
    }

    public static /* synthetic */ void getCategory$annotations() {
    }

    public final String component1() {
        return this.id;
    }

    public final boolean component10() {
        return this.isSpecialFeature;
    }

    public final String component11$android_release() {
        return this.type;
    }

    public final DataProcessingNamespaces component12() {
        return this.namespaces;
    }

    public final boolean component13$android_release() {
        return this.iabConsentRequired;
    }

    public final boolean component14$android_release() {
        return this.iabLiRequired;
    }

    public final String component2() {
        return this.iabId;
    }

    public final String component3() {
        return this.name;
    }

    public final String component4() {
        return this.description;
    }

    public final String component5() {
        return this.descriptionLegal;
    }

    public final List<String> component6() {
        return this.illustrations;
    }

    public final boolean component7() {
        return this.isConsent;
    }

    public final boolean component8() {
        return this.isEssential;
    }

    public final boolean component9() {
        return this.isLegitimateInterest;
    }

    public final InternalPurpose copy(String id, String str, String name, String description, String str2, List<String> list, boolean z, boolean z2, boolean z3, boolean z4, String str3, DataProcessingNamespaces dataProcessingNamespaces, boolean z5, boolean z6) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        return new InternalPurpose(id, str, name, description, str2, list, z, z2, z3, z4, str3, dataProcessingNamespaces, z5, z6);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InternalPurpose)) {
            return false;
        }
        InternalPurpose internalPurpose = (InternalPurpose) obj;
        return Intrinsics.areEqual(this.id, internalPurpose.id) && Intrinsics.areEqual(this.iabId, internalPurpose.iabId) && Intrinsics.areEqual(this.name, internalPurpose.name) && Intrinsics.areEqual(this.description, internalPurpose.description) && Intrinsics.areEqual(this.descriptionLegal, internalPurpose.descriptionLegal) && Intrinsics.areEqual(this.illustrations, internalPurpose.illustrations) && this.isConsent == internalPurpose.isConsent && this.isEssential == internalPurpose.isEssential && this.isLegitimateInterest == internalPurpose.isLegitimateInterest && this.isSpecialFeature == internalPurpose.isSpecialFeature && Intrinsics.areEqual(this.type, internalPurpose.type) && Intrinsics.areEqual(this.namespaces, internalPurpose.namespaces) && this.iabConsentRequired == internalPurpose.iabConsentRequired && this.iabLiRequired == internalPurpose.iabLiRequired;
    }

    public final PurposeCategory getCategory() {
        return this.category;
    }

    @Override // io.didomi.drawable.InterfaceC1847o0
    public String getDescription() {
        return this.description;
    }

    @Override // io.didomi.drawable.InterfaceC1847o0
    public String getDescriptionLegal() {
        return this.descriptionLegal;
    }

    public final boolean getIabConsentRequired$android_release() {
        return this.iabConsentRequired;
    }

    @Override // io.didomi.drawable.InterfaceC1847o0
    public String getIabId() {
        return this.iabId;
    }

    public final boolean getIabLiRequired$android_release() {
        return this.iabLiRequired;
    }

    @Override // io.didomi.drawable.InterfaceC1847o0
    public String getId() {
        return this.id;
    }

    @Override // io.didomi.drawable.InterfaceC1847o0
    public List<String> getIllustrations() {
        return this.illustrations;
    }

    @Override // io.didomi.drawable.InterfaceC1847o0
    public String getName() {
        return this.name;
    }

    @Override // io.didomi.drawable.H3
    public DataProcessingNamespaces getNamespaces() {
        return this.namespaces;
    }

    public final String getType$android_release() {
        return this.type;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v14, types: [int] */
    /* JADX WARN: Type inference failed for: r1v16, types: [int] */
    /* JADX WARN: Type inference failed for: r1v18, types: [int] */
    /* JADX WARN: Type inference failed for: r1v20, types: [int] */
    /* JADX WARN: Type inference failed for: r1v26, types: [int] */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v37 */
    /* JADX WARN: Type inference failed for: r1v38 */
    /* JADX WARN: Type inference failed for: r1v39 */
    /* JADX WARN: Type inference failed for: r1v40 */
    /* JADX WARN: Type inference failed for: r1v41 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v2 */
    public int hashCode() {
        int iHashCode = this.id.hashCode() * 31;
        String str = this.iabId;
        int iHashCode2 = (((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.name.hashCode()) * 31) + this.description.hashCode()) * 31;
        String str2 = this.descriptionLegal;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        List<String> list = this.illustrations;
        int iHashCode4 = (iHashCode3 + (list == null ? 0 : list.hashCode())) * 31;
        boolean z = this.isConsent;
        ?? r1 = z;
        if (z) {
            r1 = 1;
        }
        int i = (iHashCode4 + r1) * 31;
        boolean z2 = this.isEssential;
        ?? r12 = z2;
        if (z2) {
            r12 = 1;
        }
        int i2 = (i + r12) * 31;
        boolean z3 = this.isLegitimateInterest;
        ?? r13 = z3;
        if (z3) {
            r13 = 1;
        }
        int i3 = (i2 + r13) * 31;
        boolean z4 = this.isSpecialFeature;
        ?? r14 = z4;
        if (z4) {
            r14 = 1;
        }
        int i4 = (i3 + r14) * 31;
        String str3 = this.type;
        int iHashCode5 = (i4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        DataProcessingNamespaces dataProcessingNamespaces = this.namespaces;
        int iHashCode6 = (iHashCode5 + (dataProcessingNamespaces != null ? dataProcessingNamespaces.hashCode() : 0)) * 31;
        boolean z5 = this.iabConsentRequired;
        ?? r15 = z5;
        if (z5) {
            r15 = 1;
        }
        int i5 = (iHashCode6 + r15) * 31;
        boolean z6 = this.iabLiRequired;
        return i5 + (z6 ? 1 : z6);
    }

    public final boolean isConsent() {
        return this.isConsent;
    }

    public final boolean isConsentNotEssential() {
        return this.isConsent && !this.isEssential;
    }

    public final boolean isEssential() {
        return this.isEssential;
    }

    public final boolean isLegitimateInterest() {
        return this.isLegitimateInterest;
    }

    public final boolean isLegitimateInterestNotEssential() {
        return this.isLegitimateInterest && !this.isEssential;
    }

    public final boolean isLegitimateInterestOnly() {
        return isLegitimateInterestNotEssential() && !this.isConsent;
    }

    public final boolean isSpecialFeature() {
        return this.isSpecialFeature;
    }

    public final void setCategory(PurposeCategory purposeCategory) {
        this.category = purposeCategory;
    }

    public final void setConsent(boolean z) {
        this.isConsent = z;
    }

    @Override // io.didomi.drawable.InterfaceC1847o0
    public void setDescription(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.description = str;
    }

    @Override // io.didomi.drawable.InterfaceC1847o0
    public void setDescriptionLegal(String str) {
        this.descriptionLegal = str;
    }

    public final void setEssential(boolean z) {
        this.isEssential = z;
    }

    public final void setIabConsentRequired$android_release(boolean z) {
        this.iabConsentRequired = z;
    }

    public final void setIabLiRequired$android_release(boolean z) {
        this.iabLiRequired = z;
    }

    @Override // io.didomi.drawable.InterfaceC1847o0
    public void setIllustrations(List<String> list) {
        this.illustrations = list;
    }

    public final void setLegitimateInterest(boolean z) {
        this.isLegitimateInterest = z;
    }

    @Override // io.didomi.drawable.InterfaceC1847o0
    public void setName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public final void setSpecialFeature(boolean z) {
        this.isSpecialFeature = z;
    }

    public String toString() {
        return "InternalPurpose(id=" + this.id + ", iabId=" + this.iabId + ", name=" + this.name + ", description=" + this.description + ", descriptionLegal=" + this.descriptionLegal + ", illustrations=" + this.illustrations + ", isConsent=" + this.isConsent + ", isEssential=" + this.isEssential + ", isLegitimateInterest=" + this.isLegitimateInterest + ", isSpecialFeature=" + this.isSpecialFeature + ", type=" + this.type + ", namespaces=" + this.namespaces + ", iabConsentRequired=" + this.iabConsentRequired + ", iabLiRequired=" + this.iabLiRequired + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int i) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.id);
        out.writeString(this.iabId);
        out.writeString(this.name);
        out.writeString(this.description);
        out.writeString(this.descriptionLegal);
        out.writeStringList(this.illustrations);
        out.writeInt(this.isConsent ? 1 : 0);
        out.writeInt(this.isEssential ? 1 : 0);
        out.writeInt(this.isLegitimateInterest ? 1 : 0);
        out.writeInt(this.isSpecialFeature ? 1 : 0);
        out.writeString(this.type);
        DataProcessingNamespaces dataProcessingNamespaces = this.namespaces;
        if (dataProcessingNamespaces == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            dataProcessingNamespaces.writeToParcel(out, i);
        }
        out.writeInt(this.iabConsentRequired ? 1 : 0);
        out.writeInt(this.iabLiRequired ? 1 : 0);
    }
}
