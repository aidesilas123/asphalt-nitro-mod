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
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\bHÆ\u0003¢\u0006\u0002\u0010\rJB\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bHÆ\u0001¢\u0006\u0002\u0010\u0018J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eHÖ\u0003J\t\u0010\u001f\u001a\u00020\u001aHÖ\u0001J\t\u0010 \u001a\u00020\u0003HÖ\u0001J\u0019\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u001aHÖ\u0001R\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0018\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0096\u0004¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000bR\u0014\u0010\u0005\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000b¨\u0006&"}, d2 = {"Lio/didomi/sdk/user/UserAuthWithEncryptionParams;", "Lio/didomi/sdk/user/UserAuthParams;", "id", "", "algorithm", "secretId", "initializationVector", "expiration", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V", "getAlgorithm", "()Ljava/lang/String;", "getExpiration", "()Ljava/lang/Long;", "Ljava/lang/Long;", "getId", "getInitializationVector", "getSecretId", "component1", "component2", "component3", "component4", "component5", "copy", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Lio/didomi/sdk/user/UserAuthWithEncryptionParams;", "describeContents", "", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "android_release"}, mv = {1, 8, 0}, xi = 48)
public final class UserAuthWithEncryptionParams implements UserAuthParams {
    public static final Parcelable.Creator<UserAuthWithEncryptionParams> CREATOR = new a();
    private final String algorithm;
    private final Long expiration;
    private final String id;
    private final String initializationVector;
    private final String secretId;

    @Metadata(mv = {1, 8, 0}, xi = 48)
    public static final class a implements Parcelable.Creator<UserAuthWithEncryptionParams> {
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UserAuthWithEncryptionParams createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new UserAuthWithEncryptionParams(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() == 0 ? null : Long.valueOf(parcel.readLong()));
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final UserAuthWithEncryptionParams[] newArray(int i) {
            return new UserAuthWithEncryptionParams[i];
        }
    }

    public UserAuthWithEncryptionParams(String id, String algorithm, String secretId, String initializationVector, Long l) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        Intrinsics.checkNotNullParameter(secretId, "secretId");
        Intrinsics.checkNotNullParameter(initializationVector, "initializationVector");
        this.id = id;
        this.algorithm = algorithm;
        this.secretId = secretId;
        this.initializationVector = initializationVector;
        this.expiration = l;
    }

    public /* synthetic */ UserAuthWithEncryptionParams(String str, String str2, String str3, String str4, Long l, int i, n nVar) {
        this(str, str2, str3, str4, (i & 16) != 0 ? null : l);
    }

    public static /* synthetic */ UserAuthWithEncryptionParams copy$default(UserAuthWithEncryptionParams userAuthWithEncryptionParams, String str, String str2, String str3, String str4, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            str = userAuthWithEncryptionParams.id;
        }
        if ((i & 2) != 0) {
            str2 = userAuthWithEncryptionParams.algorithm;
        }
        String str5 = str2;
        if ((i & 4) != 0) {
            str3 = userAuthWithEncryptionParams.secretId;
        }
        String str6 = str3;
        if ((i & 8) != 0) {
            str4 = userAuthWithEncryptionParams.initializationVector;
        }
        String str7 = str4;
        if ((i & 16) != 0) {
            l = userAuthWithEncryptionParams.expiration;
        }
        return userAuthWithEncryptionParams.copy(str, str5, str6, str7, l);
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
        return this.initializationVector;
    }

    public final Long component5() {
        return this.expiration;
    }

    public final UserAuthWithEncryptionParams copy(String id, String algorithm, String secretId, String initializationVector, Long l) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        Intrinsics.checkNotNullParameter(secretId, "secretId");
        Intrinsics.checkNotNullParameter(initializationVector, "initializationVector");
        return new UserAuthWithEncryptionParams(id, algorithm, secretId, initializationVector, l);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UserAuthWithEncryptionParams)) {
            return false;
        }
        UserAuthWithEncryptionParams userAuthWithEncryptionParams = (UserAuthWithEncryptionParams) obj;
        return Intrinsics.areEqual(this.id, userAuthWithEncryptionParams.id) && Intrinsics.areEqual(this.algorithm, userAuthWithEncryptionParams.algorithm) && Intrinsics.areEqual(this.secretId, userAuthWithEncryptionParams.secretId) && Intrinsics.areEqual(this.initializationVector, userAuthWithEncryptionParams.initializationVector) && Intrinsics.areEqual(this.expiration, userAuthWithEncryptionParams.expiration);
    }

    @Override // io.didomi.drawable.user.UserAuthParams
    public String getAlgorithm() {
        return this.algorithm;
    }

    @Override // io.didomi.drawable.user.UserAuthParams
    public Long getExpiration() {
        return this.expiration;
    }

    @Override // io.didomi.drawable.user.UserAuth
    public String getId() {
        return this.id;
    }

    public final String getInitializationVector() {
        return this.initializationVector;
    }

    @Override // io.didomi.drawable.user.UserAuthParams
    public String getSecretId() {
        return this.secretId;
    }

    public int hashCode() {
        int iHashCode = ((((((this.id.hashCode() * 31) + this.algorithm.hashCode()) * 31) + this.secretId.hashCode()) * 31) + this.initializationVector.hashCode()) * 31;
        Long l = this.expiration;
        return iHashCode + (l == null ? 0 : l.hashCode());
    }

    public String toString() {
        return "UserAuthWithEncryptionParams(id=" + this.id + ", algorithm=" + this.algorithm + ", secretId=" + this.secretId + ", initializationVector=" + this.initializationVector + ", expiration=" + this.expiration + ')';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel out, int i) {
        Intrinsics.checkNotNullParameter(out, "out");
        out.writeString(this.id);
        out.writeString(this.algorithm);
        out.writeString(this.secretId);
        out.writeString(this.initializationVector);
        Long l = this.expiration;
        if (l == null) {
            out.writeInt(0);
        } else {
            out.writeInt(1);
            out.writeLong(l.longValue());
        }
    }
}
