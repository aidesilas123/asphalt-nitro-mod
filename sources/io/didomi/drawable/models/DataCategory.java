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
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0011\n\u0002\u0010 \n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\n\u0010\tJ\u0010\u0010\u000b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\tJ.\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000e\u0010\tJ\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0011J \u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u001c\u0010\u001dR\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0097\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u001e\u001a\u0004\b\u001f\u0010\tR\"\u0010\u0004\u001a\u00020\u00028\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u001e\u001a\u0004\b \u0010\t\"\u0004\b!\u0010\"R\"\u0010\u0005\u001a\u00020\u00028\u0016@\u0016X\u0097\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u001e\u001a\u0004\b#\u0010\t\"\u0004\b$\u0010\"R\"\u0010%\u001a\u0004\u0018\u00010\u00028\u0016X\u0096\u0004¢\u0006\u0012\n\u0004\b%\u0010\u001e\u0012\u0004\b'\u0010(\u001a\u0004\b&\u0010\tR*\u0010)\u001a\u0004\u0018\u00010\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0004\b)\u0010\u001e\u0012\u0004\b,\u0010(\u001a\u0004\b*\u0010\t\"\u0004\b+\u0010\"R0\u0010.\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010-8\u0016@\u0016X\u0096\u000e¢\u0006\u0018\n\u0004\b.\u0010/\u0012\u0004\b4\u0010(\u001a\u0004\b0\u00101\"\u0004\b2\u00103¨\u00065"}, d2 = {"Lio/didomi/sdk/models/DataCategory;", "Lio/didomi/sdk/o0;", "", "id", "name", "description", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "component1", "()Ljava/lang/String;", "component2", "component3", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/didomi/sdk/models/DataCategory;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getId", "getName", "setName", "(Ljava/lang/String;)V", "getDescription", "setDescription", "iabId", "getIabId", "getIabId$annotations", "()V", "descriptionLegal", "getDescriptionLegal", "setDescriptionLegal", "getDescriptionLegal$annotations", "", "illustrations", "Ljava/util/List;", "getIllustrations", "()Ljava/util/List;", "setIllustrations", "(Ljava/util/List;)V", "getIllustrations$annotations", "android_release"}, mv = {1, 8, 0})
public final class DataCategory implements InterfaceC1847o0 {
    public static final Parcelable.Creator<DataCategory> CREATOR = new a();

    @c("description")
    private String description;
    private String descriptionLegal;
    private final String iabId;

    @c("id")
    private final String id;
    private List<String> illustrations;

    @c("name")
    private String name;

    @Metadata(mv = {1, 8, 0}, xi = 48)
    public static final class a implements Parcelable.Creator<DataCategory> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DataCategory createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new DataCategory(parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DataCategory[] newArray(int i) {
            return new DataCategory[i];
        }
    }

    public DataCategory(String id, String name, String description) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        this.id = id;
        this.name = name;
        this.description = description;
    }

    public /* synthetic */ DataCategory(String str, String str2, String str3, int i, n nVar) {
        this(str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3);
    }

    public static /* synthetic */ DataCategory copy$default(DataCategory dataCategory, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = dataCategory.id;
        }
        if ((i & 2) != 0) {
            str2 = dataCategory.name;
        }
        if ((i & 4) != 0) {
            str3 = dataCategory.description;
        }
        return dataCategory.copy(str, str2, str3);
    }

    public static /* synthetic */ void getDescriptionLegal$annotations() {
    }

    public static /* synthetic */ void getIabId$annotations() {
    }

    public static /* synthetic */ void getIllustrations$annotations() {
    }

    public final String component1() {
        return this.id;
    }

    public final String component2() {
        return this.name;
    }

    public final String component3() {
        return this.description;
    }

    public final DataCategory copy(String id, String name, String description) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        return new DataCategory(id, name, description);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DataCategory)) {
            return false;
        }
        DataCategory dataCategory = (DataCategory) obj;
        return Intrinsics.areEqual(this.id, dataCategory.id) && Intrinsics.areEqual(this.name, dataCategory.name) && Intrinsics.areEqual(this.description, dataCategory.description);
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
        return (((this.id.hashCode() * 31) + this.name.hashCode()) * 31) + this.description.hashCode();
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
        return "DataCategory(id=" + this.id + ", name=" + this.name + ", description=" + this.description + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int i) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.id);
        out.writeString(this.name);
        out.writeString(this.description);
    }
}
