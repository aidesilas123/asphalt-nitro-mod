package io.didomi.drawable.purpose.common.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.facebook.internal.AnalyticsEvents;
import com.google.gson.r.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsKt;
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
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0015\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001:\u0001-Bi\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\b\u0012\u0014\b\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\b\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00000\u000b¢\u0006\u0002\u0010\fJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u000e\u0010\u001a\u001a\u00020\u0003HÀ\u0003¢\u0006\u0002\b\u001bJ\u0015\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\bHÆ\u0003J\u0015\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\bHÆ\u0003J\u000f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00000\u000bHÆ\u0003Jm\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\b2\u0014\b\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\b2\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00000\u000bHÆ\u0001J\t\u0010 \u001a\u00020!HÖ\u0001J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%HÖ\u0003J\t\u0010&\u001a\u00020!HÖ\u0001J\t\u0010'\u001a\u00020\u0003HÖ\u0001J\u0019\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020!HÖ\u0001R\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00000\u000b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\"\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\"\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0010R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0016\u0010\u0006\u001a\u00020\u00038\u0000X\u0081\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0012¨\u0006."}, d2 = {"Lio/didomi/sdk/purpose/common/model/PurposeCategory;", "Landroid/os/Parcelable;", "id", "", "purposeId", "icon", "typeAsString", "name", "", "description", "children", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V", "getChildren", "()Ljava/util/List;", "getDescription", "()Ljava/util/Map;", "getIcon", "()Ljava/lang/String;", "getId", "getName", "getPurposeId", "getTypeAsString$android_release", "component1", "component2", "component3", "component4", "component4$android_release", "component5", "component6", "component7", "copy", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "Type", "android_release"}, mv = {1, 8, 0}, xi = 48)
public final class PurposeCategory implements Parcelable {
    public static final Parcelable.Creator<PurposeCategory> CREATOR = new a();

    @c("children")
    private final List<PurposeCategory> children;

    @c("description")
    private final Map<String, String> description;

    @c("icon")
    private final String icon;

    @c("id")
    private final String id;

    @c("name")
    private final Map<String, String> name;

    @c("purposeId")
    private final String purposeId;

    @c("type")
    private final String typeAsString;

    @Keep
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\f\b\u0087\u0001\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0013\b\u0002\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0006\u001a\u0004\b\u0007\u0010\bj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;", "", "", "value", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "Companion", "a", AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN, "Purpose", "Category", "android_release"}, mv = {1, 8, 0})
    public enum Type {
        Unknown(null, 1, null),
        Purpose("purpose"),
        Category("category");


        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String value;

        /* JADX INFO: renamed from: io.didomi.sdk.purpose.common.model.PurposeCategory$Type$a, reason: from kotlin metadata */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type$a;", "", "<init>", "()V", "", "value", "Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;", "a", "(Ljava/lang/String;)Lio/didomi/sdk/purpose/common/model/PurposeCategory$Type;", "android_release"}, mv = {1, 8, 0})
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(n nVar) {
                this();
            }

            public final Type a(String value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Locale ENGLISH = Locale.ENGLISH;
                Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
                String lowerCase = value.toLowerCase(ENGLISH);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                Type type = Type.Purpose;
                if (Intrinsics.areEqual(lowerCase, type.getValue())) {
                    return type;
                }
                Type type2 = Type.Category;
                return Intrinsics.areEqual(lowerCase, type2.getValue()) ? type2 : Type.Unknown;
            }
        }

        Type(String str) {
            this.value = str;
        }

        /* synthetic */ Type(String str, int i, n nVar) {
            this((i & 1) != 0 ? "" : str);
        }

        public final String getValue() {
            return this.value;
        }
    }

    @Metadata(mv = {1, 8, 0}, xi = 48)
    public static final class a implements Parcelable.Creator<PurposeCategory> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PurposeCategory createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            int i = parcel.readInt();
            LinkedHashMap linkedHashMap = new LinkedHashMap(i);
            for (int i2 = 0; i2 != i; i2++) {
                linkedHashMap.put(parcel.readString(), parcel.readString());
            }
            int i3 = parcel.readInt();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(i3);
            for (int i4 = 0; i4 != i3; i4++) {
                linkedHashMap2.put(parcel.readString(), parcel.readString());
            }
            int i5 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i5);
            for (int i6 = 0; i6 != i5; i6++) {
                arrayList.add(PurposeCategory.CREATOR.createFromParcel(parcel));
            }
            return new PurposeCategory(string, string2, string3, string4, linkedHashMap, linkedHashMap2, arrayList);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final PurposeCategory[] newArray(int i) {
            return new PurposeCategory[i];
        }
    }

    public PurposeCategory() {
        this(null, null, null, null, null, null, null, 127, null);
    }

    public PurposeCategory(String id, String purposeId, String icon, String typeAsString, Map<String, String> name, Map<String, String> description, List<PurposeCategory> children) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(purposeId, "purposeId");
        Intrinsics.checkNotNullParameter(icon, "icon");
        Intrinsics.checkNotNullParameter(typeAsString, "typeAsString");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(children, "children");
        this.id = id;
        this.purposeId = purposeId;
        this.icon = icon;
        this.typeAsString = typeAsString;
        this.name = name;
        this.description = description;
        this.children = children;
    }

    public /* synthetic */ PurposeCategory(String str, String str2, String str3, String str4, Map map, Map map2, List list, int i, n nVar) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) == 0 ? str4 : "", (i & 16) != 0 ? MapsKt__MapsKt.emptyMap() : map, (i & 32) != 0 ? MapsKt__MapsKt.emptyMap() : map2, (i & 64) != 0 ? new ArrayList() : list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PurposeCategory copy$default(PurposeCategory purposeCategory, String str, String str2, String str3, String str4, Map map, Map map2, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = purposeCategory.id;
        }
        if ((i & 2) != 0) {
            str2 = purposeCategory.purposeId;
        }
        String str5 = str2;
        if ((i & 4) != 0) {
            str3 = purposeCategory.icon;
        }
        String str6 = str3;
        if ((i & 8) != 0) {
            str4 = purposeCategory.typeAsString;
        }
        String str7 = str4;
        if ((i & 16) != 0) {
            map = purposeCategory.name;
        }
        Map map3 = map;
        if ((i & 32) != 0) {
            map2 = purposeCategory.description;
        }
        Map map4 = map2;
        if ((i & 64) != 0) {
            list = purposeCategory.children;
        }
        return purposeCategory.copy(str, str5, str6, str7, map3, map4, list);
    }

    public final String component1() {
        return this.id;
    }

    public final String component2() {
        return this.purposeId;
    }

    public final String component3() {
        return this.icon;
    }

    public final String component4$android_release() {
        return this.typeAsString;
    }

    public final Map<String, String> component5() {
        return this.name;
    }

    public final Map<String, String> component6() {
        return this.description;
    }

    public final List<PurposeCategory> component7() {
        return this.children;
    }

    public final PurposeCategory copy(String id, String purposeId, String icon, String typeAsString, Map<String, String> name, Map<String, String> description, List<PurposeCategory> children) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(purposeId, "purposeId");
        Intrinsics.checkNotNullParameter(icon, "icon");
        Intrinsics.checkNotNullParameter(typeAsString, "typeAsString");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(children, "children");
        return new PurposeCategory(id, purposeId, icon, typeAsString, name, description, children);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PurposeCategory)) {
            return false;
        }
        PurposeCategory purposeCategory = (PurposeCategory) obj;
        return Intrinsics.areEqual(this.id, purposeCategory.id) && Intrinsics.areEqual(this.purposeId, purposeCategory.purposeId) && Intrinsics.areEqual(this.icon, purposeCategory.icon) && Intrinsics.areEqual(this.typeAsString, purposeCategory.typeAsString) && Intrinsics.areEqual(this.name, purposeCategory.name) && Intrinsics.areEqual(this.description, purposeCategory.description) && Intrinsics.areEqual(this.children, purposeCategory.children);
    }

    public final List<PurposeCategory> getChildren() {
        return this.children;
    }

    public final Map<String, String> getDescription() {
        return this.description;
    }

    public final String getIcon() {
        return this.icon;
    }

    public final String getId() {
        return this.id;
    }

    public final Map<String, String> getName() {
        return this.name;
    }

    public final String getPurposeId() {
        return this.purposeId;
    }

    public final String getTypeAsString$android_release() {
        return this.typeAsString;
    }

    public int hashCode() {
        return (((((((((((this.id.hashCode() * 31) + this.purposeId.hashCode()) * 31) + this.icon.hashCode()) * 31) + this.typeAsString.hashCode()) * 31) + this.name.hashCode()) * 31) + this.description.hashCode()) * 31) + this.children.hashCode();
    }

    public String toString() {
        return "PurposeCategory(id=" + this.id + ", purposeId=" + this.purposeId + ", icon=" + this.icon + ", typeAsString=" + this.typeAsString + ", name=" + this.name + ", description=" + this.description + ", children=" + this.children + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int i) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.id);
        out.writeString(this.purposeId);
        out.writeString(this.icon);
        out.writeString(this.typeAsString);
        Map<String, String> map = this.name;
        out.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            out.writeString(entry.getKey());
            out.writeString(entry.getValue());
        }
        Map<String, String> map2 = this.description;
        out.writeInt(map2.size());
        for (Map.Entry<String, String> entry2 : map2.entrySet()) {
            out.writeString(entry2.getKey());
            out.writeString(entry2.getValue());
        }
        List<PurposeCategory> list = this.children;
        out.writeInt(list.size());
        Iterator<PurposeCategory> it = list.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(out, i);
        }
    }
}
