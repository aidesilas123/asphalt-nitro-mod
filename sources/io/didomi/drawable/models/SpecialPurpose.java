package io.didomi.drawable.models;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.google.gson.r.c;
import io.didomi.drawable.InterfaceC1847o0;
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
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0011\b\u0087\b\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u000e\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000f\u0010\rJ\u0010\u0010\u0010\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0010\u0010\rJ\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0011\u0010\rJ\u0018\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\bHÆ\u0003¢\u0006\u0004\b\u0012\u0010\u0013JX\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\bHÆ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0016\u0010\rJ\u0010\u0010\u0018\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u001a\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aHÖ\u0003¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b\u001f\u0010\u0019J \u0010$\u001a\u00020#2\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b$\u0010%R\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0097\u0004¢\u0006\f\n\u0004\b\u0003\u0010&\u001a\u0004\b'\u0010\rR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0016X\u0097\u0004¢\u0006\f\n\u0004\b\u0004\u0010&\u001a\u0004\b(\u0010\rR\"\u0010\u0005\u001a\u00020\u00028\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010&\u001a\u0004\b)\u0010\r\"\u0004\b*\u0010+R\"\u0010\u0006\u001a\u00020\u00028\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010&\u001a\u0004\b,\u0010\r\"\u0004\b-\u0010+R$\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010&\u001a\u0004\b.\u0010\r\"\u0004\b/\u0010+R*\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\b8\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b\t\u00100\u001a\u0004\b1\u0010\u0013\"\u0004\b2\u00103¨\u00064"}, d2 = {"Lio/didomi/sdk/models/SpecialPurpose;", "Lio/didomi/sdk/o0;", "", "id", "iabId", "name", "description", "descriptionLegal", "", "illustrations", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "component1", "()Ljava/lang/String;", "component2", "component3", "component4", "component5", "component6", "()Ljava/util/List;", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lio/didomi/sdk/models/SpecialPurpose;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getId", "getIabId", "getName", "setName", "(Ljava/lang/String;)V", "getDescription", "setDescription", "getDescriptionLegal", "setDescriptionLegal", "Ljava/util/List;", "getIllustrations", "setIllustrations", "(Ljava/util/List;)V", "android_release"}, mv = {1, 8, 0})
public final class SpecialPurpose implements InterfaceC1847o0 {
    public static final Parcelable.Creator<SpecialPurpose> CREATOR = new a();

    @c("description")
    private String description;

    @c("descriptionLegal")
    private String descriptionLegal;

    @c("iabId")
    private final String iabId;

    @c("id")
    private final String id;

    @c("illustrations")
    private List<String> illustrations;

    @c("name")
    private String name;

    @Metadata(mv = {1, 8, 0}, xi = 48)
    public static final class a implements Parcelable.Creator<SpecialPurpose> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SpecialPurpose createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new SpecialPurpose(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.createStringArrayList());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SpecialPurpose[] newArray(int i) {
            return new SpecialPurpose[i];
        }
    }

    public SpecialPurpose(String id, String str, String name, String description, String str2, List<String> list) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        this.id = id;
        this.iabId = str;
        this.name = name;
        this.description = description;
        this.descriptionLegal = str2;
        this.illustrations = list;
    }

    public /* synthetic */ SpecialPurpose(String str, String str2, String str3, String str4, String str5, List list, int i, n nVar) {
        this(str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? "" : str3, (i & 8) == 0 ? str4 : "", (i & 16) != 0 ? null : str5, (i & 32) == 0 ? list : null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SpecialPurpose copy$default(SpecialPurpose specialPurpose, String str, String str2, String str3, String str4, String str5, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = specialPurpose.id;
        }
        if ((i & 2) != 0) {
            str2 = specialPurpose.iabId;
        }
        String str6 = str2;
        if ((i & 4) != 0) {
            str3 = specialPurpose.name;
        }
        String str7 = str3;
        if ((i & 8) != 0) {
            str4 = specialPurpose.description;
        }
        String str8 = str4;
        if ((i & 16) != 0) {
            str5 = specialPurpose.descriptionLegal;
        }
        String str9 = str5;
        if ((i & 32) != 0) {
            list = specialPurpose.illustrations;
        }
        return specialPurpose.copy(str, str6, str7, str8, str9, list);
    }

    public final String component1() {
        return this.id;
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

    public final SpecialPurpose copy(String id, String str, String name, String description, String str2, List<String> list) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        return new SpecialPurpose(id, str, name, description, str2, list);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpecialPurpose)) {
            return false;
        }
        SpecialPurpose specialPurpose = (SpecialPurpose) obj;
        return Intrinsics.areEqual(this.id, specialPurpose.id) && Intrinsics.areEqual(this.iabId, specialPurpose.iabId) && Intrinsics.areEqual(this.name, specialPurpose.name) && Intrinsics.areEqual(this.description, specialPurpose.description) && Intrinsics.areEqual(this.descriptionLegal, specialPurpose.descriptionLegal) && Intrinsics.areEqual(this.illustrations, specialPurpose.illustrations);
    }

    @Override // io.didomi.drawable.InterfaceC1847o0
    public String getDescription() {
        return this.description;
    }

    @Override // io.didomi.drawable.InterfaceC1847o0
    public String getDescriptionLegal() {
        return this.descriptionLegal;
    }

    @Override // io.didomi.drawable.InterfaceC1847o0
    public String getIabId() {
        return this.iabId;
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

    public int hashCode() {
        int iHashCode = this.id.hashCode() * 31;
        String str = this.iabId;
        int iHashCode2 = (((((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + this.name.hashCode()) * 31) + this.description.hashCode()) * 31;
        String str2 = this.descriptionLegal;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        List<String> list = this.illustrations;
        return iHashCode3 + (list != null ? list.hashCode() : 0);
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

    @Override // io.didomi.drawable.InterfaceC1847o0
    public void setIllustrations(List<String> list) {
        this.illustrations = list;
    }

    @Override // io.didomi.drawable.InterfaceC1847o0
    public void setName(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.name = str;
    }

    public String toString() {
        return "SpecialPurpose(id=" + this.id + ", iabId=" + this.iabId + ", name=" + this.name + ", description=" + this.description + ", descriptionLegal=" + this.descriptionLegal + ", illustrations=" + this.illustrations + ')';
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
    }
}
