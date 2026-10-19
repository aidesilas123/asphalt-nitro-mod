package io.didomi.drawable.user;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
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
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0013\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010\u0019\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0002\u0010\u000fJN\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tHÆ\u0001¢\u0006\u0002\u0010\u001bJ\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!HÖ\u0003J\t\u0010\"\u001a\u00020\u001dHÖ\u0001J\t\u0010#\u001a\u00020\u0003HÖ\u0001J\u0019\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u001dHÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0018\u0010\b\u001a\u0004\u0018\u00010\tX\u0096\u0004¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\fR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\fR\u0014\u0010\u0005\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\f¨\u0006)"}, d2 = {"Lio/didomi/sdk/user/UserAuthWithHashParams;", "Lio/didomi/sdk/user/UserAuthParams;", "id", "", "algorithm", "secretId", "digest", "salt", "expiration", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V", "getAlgorithm", "()Ljava/lang/String;", "getDigest", "getExpiration", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getId", "getSalt", "getSecretId", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lio/didomi/sdk/user/UserAuthWithHashParams;", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "android_release"}, mv = {1, 8, 0}, xi = 48)
public final class UserAuthWithHashParams implements UserAuthParams {
    public static final Parcelable.Creator<UserAuthWithHashParams> CREATOR = new a();
    private final String algorithm;
    private final String digest;
    private final Long expiration;
    private final String id;
    private final String salt;
    private final String secretId;

    @Metadata(mv = {1, 8, 0}, xi = 48)
    public static final class a implements Parcelable.Creator<UserAuthWithHashParams> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UserAuthWithHashParams createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new UserAuthWithHashParams(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UserAuthWithHashParams[] newArray(int i) {
            return new UserAuthWithHashParams[i];
        }
    }

    public UserAuthWithHashParams(String id, String algorithm, String secretId, String digest, String str, Long l) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        Intrinsics.checkNotNullParameter(secretId, "secretId");
        Intrinsics.checkNotNullParameter(digest, "digest");
        this.id = id;
        this.algorithm = algorithm;
        this.secretId = secretId;
        this.digest = digest;
        this.salt = str;
        this.expiration = l;
    }

    public /* synthetic */ UserAuthWithHashParams(String str, String str2, String str3, String str4, String str5, Long l, int i, n nVar) {
        this(str, str2, str3, str4, (i & 16) != 0 ? null : str5, (i & 32) != 0 ? null : l);
    }

    public static /* synthetic */ UserAuthWithHashParams copy$default(UserAuthWithHashParams userAuthWithHashParams, String str, String str2, String str3, String str4, String str5, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            str = userAuthWithHashParams.id;
        }
        if ((i & 2) != 0) {
            str2 = userAuthWithHashParams.algorithm;
        }
        String str6 = str2;
        if ((i & 4) != 0) {
            str3 = userAuthWithHashParams.secretId;
        }
        String str7 = str3;
        if ((i & 8) != 0) {
            str4 = userAuthWithHashParams.digest;
        }
        String str8 = str4;
        if ((i & 16) != 0) {
            str5 = userAuthWithHashParams.salt;
        }
        String str9 = str5;
        if ((i & 32) != 0) {
            l = userAuthWithHashParams.expiration;
        }
        return userAuthWithHashParams.copy(str, str6, str7, str8, str9, l);
    }

    public final String component1() {
        return this.id;
    }

    public final String component2() {
        return this.algorithm;
    }

    public final String component3() {
        return this.secretId;
    }

    public final String component4() {
        return this.digest;
    }

    public final String component5() {
        return this.salt;
    }

    public final Long component6() {
        return this.expiration;
    }

    public final UserAuthWithHashParams copy(String id, String algorithm, String secretId, String digest, String str, Long l) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        Intrinsics.checkNotNullParameter(secretId, "secretId");
        Intrinsics.checkNotNullParameter(digest, "digest");
        return new UserAuthWithHashParams(id, algorithm, secretId, digest, str, l);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserAuthWithHashParams)) {
            return false;
        }
        UserAuthWithHashParams userAuthWithHashParams = (UserAuthWithHashParams) obj;
        return Intrinsics.areEqual(this.id, userAuthWithHashParams.id) && Intrinsics.areEqual(this.algorithm, userAuthWithHashParams.algorithm) && Intrinsics.areEqual(this.secretId, userAuthWithHashParams.secretId) && Intrinsics.areEqual(this.digest, userAuthWithHashParams.digest) && Intrinsics.areEqual(this.salt, userAuthWithHashParams.salt) && Intrinsics.areEqual(this.expiration, userAuthWithHashParams.expiration);
    }

    @Override // io.didomi.drawable.user.UserAuthParams
    public String getAlgorithm() {
        return this.algorithm;
    }

    public final String getDigest() {
        return this.digest;
    }

    @Override // io.didomi.drawable.user.UserAuthParams
    public Long getExpiration() {
        return this.expiration;
    }

    @Override // io.didomi.drawable.user.UserAuth
    public String getId() {
        return this.id;
    }

    public final String getSalt() {
        return this.salt;
    }

    @Override // io.didomi.drawable.user.UserAuthParams
    public String getSecretId() {
        return this.secretId;
    }

    public int hashCode() {
        int iHashCode = ((((((this.id.hashCode() * 31) + this.algorithm.hashCode()) * 31) + this.secretId.hashCode()) * 31) + this.digest.hashCode()) * 31;
        String str = this.salt;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Long l = this.expiration;
        return iHashCode2 + (l != null ? l.hashCode() : 0);
    }

    public String toString() {
        return "UserAuthWithHashParams(id=" + this.id + ", algorithm=" + this.algorithm + ", secretId=" + this.secretId + ", digest=" + this.digest + ", salt=" + this.salt + ", expiration=" + this.expiration + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int i) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.id);
        out.writeString(this.algorithm);
        out.writeString(this.secretId);
        out.writeString(this.digest);
        out.writeString(this.salt);
        Long l = this.expiration;
        if (l == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeLong(l.longValue());
        }
    }
}
