package com.vungle.ads.internal.model;

import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdAsset.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0003567B!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006B+\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\bJ\u0013\u00100\u001a\u0002012\b\u00102\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u00103\u001a\u00020\u001eH\u0016J\b\u00104\u001a\u00020\u0003H\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\nR\u001c\u0010\u0019\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\n\"\u0004\b\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u001eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u001a\u0010#\u001a\u00020$X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\nR\u001a\u0010*\u001a\u00020+X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/¨\u00068"}, d2 = {"Lcom/vungle/ads/internal/model/AdAsset;", "", "adIdentifier", "", "serverPath", "localPath", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "identifier", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAdIdentifier", "()Ljava/lang/String;", "fileSize", "", "getFileSize", "()J", "setFileSize", "(J)V", "fileType", "Lcom/vungle/ads/internal/model/AdAsset$FileType;", "getFileType", "()Lcom/vungle/ads/internal/model/AdAsset$FileType;", "setFileType", "(Lcom/vungle/ads/internal/model/AdAsset$FileType;)V", "getIdentifier", "getLocalPath", "parentId", "getParentId", "setParentId", "(Ljava/lang/String;)V", "retryCount", "", "getRetryCount", "()I", "setRetryCount", "(I)V", "retryTypeError", "Lcom/vungle/ads/internal/model/AdAsset$ErrorType;", "getRetryTypeError", "()Lcom/vungle/ads/internal/model/AdAsset$ErrorType;", "setRetryTypeError", "(Lcom/vungle/ads/internal/model/AdAsset$ErrorType;)V", "getServerPath", "status", "Lcom/vungle/ads/internal/model/AdAsset$Status;", "getStatus", "()Lcom/vungle/ads/internal/model/AdAsset$Status;", "setStatus", "(Lcom/vungle/ads/internal/model/AdAsset$Status;)V", "equals", "", "o", "hashCode", "toString", "ErrorType", "FileType", "Status", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class AdAsset {
    private final String adIdentifier;
    private long fileSize;
    private FileType fileType;
    private final String identifier;
    private final String localPath;
    private String parentId;
    private int retryCount;
    private ErrorType retryTypeError;
    private final String serverPath;
    private Status status;

    /* JADX INFO: compiled from: AdAsset.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/AdAsset$ErrorType;", "", "(Ljava/lang/String;I)V", "NO_ERROR", "CAN_RETRY_ERROR", "CANNOT_RETRY_ERROR", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public enum ErrorType {
        NO_ERROR,
        CAN_RETRY_ERROR,
        CANNOT_RETRY_ERROR
    }

    /* JADX INFO: compiled from: AdAsset.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vungle/ads/internal/model/AdAsset$FileType;", "", "(Ljava/lang/String;I)V", "ZIP", "ZIP_ASSET", "ASSET", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public enum FileType {
        ZIP,
        ZIP_ASSET,
        ASSET
    }

    /* JADX INFO: compiled from: AdAsset.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vungle/ads/internal/model/AdAsset$Status;", "", "(Ljava/lang/String;I)V", "NEW", "DOWNLOAD_RUNNING", "DOWNLOAD_FAILED", "DOWNLOAD_SUCCESS", "PROCESSED", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public enum Status {
        NEW,
        DOWNLOAD_RUNNING,
        DOWNLOAD_FAILED,
        DOWNLOAD_SUCCESS,
        PROCESSED
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AdAsset(String adIdentifier, String str, String localPath) {
        this(adIdentifier, str, localPath, UUID.randomUUID().toString());
        Intrinsics.checkNotNullParameter(adIdentifier, "adIdentifier");
        Intrinsics.checkNotNullParameter(localPath, "localPath");
    }

    public AdAsset(String adIdentifier, String str, String localPath, String str2) {
        Intrinsics.checkNotNullParameter(adIdentifier, "adIdentifier");
        Intrinsics.checkNotNullParameter(localPath, "localPath");
        this.identifier = str2;
        this.status = Status.NEW;
        this.adIdentifier = adIdentifier;
        this.serverPath = str;
        this.localPath = localPath;
        this.fileSize = -1L;
        this.retryCount = 0;
        this.retryTypeError = ErrorType.NO_ERROR;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || !Intrinsics.areEqual(AdAsset.class, o.getClass())) {
            return false;
        }
        AdAsset adAsset = (AdAsset) o;
        if (this.status != adAsset.status || this.fileType != adAsset.fileType || this.fileSize != adAsset.fileSize || this.retryCount != adAsset.retryCount || this.retryTypeError != adAsset.retryTypeError) {
            return false;
        }
        String str = this.identifier;
        if (str == null ? adAsset.identifier != null : !Intrinsics.areEqual(str, adAsset.identifier)) {
            return false;
        }
        String str2 = this.adIdentifier;
        if (str2 == null ? adAsset.adIdentifier != null : !Intrinsics.areEqual(str2, adAsset.adIdentifier)) {
            return false;
        }
        String str3 = this.parentId;
        if (str3 == null ? adAsset.parentId != null : !Intrinsics.areEqual(str3, adAsset.parentId)) {
            return false;
        }
        String str4 = this.serverPath;
        if (str4 == null ? adAsset.serverPath != null : !Intrinsics.areEqual(str4, adAsset.serverPath)) {
            return false;
        }
        String str5 = this.localPath;
        String str6 = adAsset.localPath;
        return str5 != null ? Intrinsics.areEqual(str5, str6) : str6 == null;
    }

    public final String getAdIdentifier() {
        return this.adIdentifier;
    }

    public final long getFileSize() {
        return this.fileSize;
    }

    public final FileType getFileType() {
        return this.fileType;
    }

    public final String getIdentifier() {
        return this.identifier;
    }

    public final String getLocalPath() {
        return this.localPath;
    }

    public final String getParentId() {
        return this.parentId;
    }

    public final int getRetryCount() {
        return this.retryCount;
    }

    public final ErrorType getRetryTypeError() {
        return this.retryTypeError;
    }

    public final String getServerPath() {
        return this.serverPath;
    }

    public final Status getStatus() {
        return this.status;
    }

    public int hashCode() {
        String str = this.identifier;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.adIdentifier;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.parentId;
        int iHashCode3 = (iHashCode2 + ((str3 == null || str3 == null) ? 0 : str3.hashCode())) * 31;
        String str4 = this.serverPath;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.localPath;
        int iHashCode5 = (((iHashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31) + this.status.hashCode()) * 31;
        FileType fileType = this.fileType;
        int iHashCode6 = (iHashCode5 + (fileType != null ? fileType.hashCode() : 0)) * 31;
        long j = this.fileSize;
        return ((((iHashCode6 + ((int) (j ^ (j >>> 32)))) * 31) + this.retryCount) * 31) + this.retryTypeError.hashCode();
    }

    public final void setFileSize(long j) {
        this.fileSize = j;
    }

    public final void setFileType(FileType fileType) {
        this.fileType = fileType;
    }

    public final void setParentId(String str) {
        this.parentId = str;
    }

    public final void setRetryCount(int i) {
        this.retryCount = i;
    }

    public final void setRetryTypeError(ErrorType errorType) {
        Intrinsics.checkNotNullParameter(errorType, "<set-?>");
        this.retryTypeError = errorType;
    }

    public final void setStatus(Status status) {
        Intrinsics.checkNotNullParameter(status, "<set-?>");
        this.status = status;
    }

    public String toString() {
        return "AdAsset{identifier='" + this.identifier + "', adIdentifier='" + this.adIdentifier + "', serverPath='" + this.serverPath + "', localPath='" + this.localPath + "', status=" + this.status + ", fileType=" + this.fileType + ", fileSize=" + this.fileSize + ", retryCount=" + this.retryCount + ", retryTypeError=" + this.retryTypeError + '}';
    }
}
